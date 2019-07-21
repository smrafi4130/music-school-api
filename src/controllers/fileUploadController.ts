import * as path from 'path';
import * as fs from 'fs';
import { cloudinaryUpload } from '../libs';

export const fileUploadController: any = {};

fileUploadController.uploadImage = async (req, res) => {
  try {
    const image = path.join(__dirname, `../../${req.file.path}`);
    cloudinaryUpload(image, (error, result) => {
      res.status(200).json({
        status: true,
        url: result.url
      });
    });
  } catch (error) {
    res.status(400).json({
      status: false,
      message: error
    });
  }
};

fileUploadController.uploadFile = async (req, res) => {
  try {
    const file = path.join(__dirname, `../../${req.file.path}`);
    res.status(200).json({
      status: true,
      path: file,
      file: req.file
    });
  } catch (error) {
    res.status(400).json({
      status: false,
      message: error
    });
  }
};

const responseFile = (fileName, response, filePath) => {
  fs.exists(filePath, exists => {
    if (exists) {
      response.writeHead(200, {
        'Content-Type': 'application/octet-stream',
        'Content-Disposition': 'attachment; filename=' + fileName
      });
      fs.createReadStream(filePath).pipe(response);
    } else {
      response.writeHead(400, { 'Content-Type': 'text/plain' });
      response.end('ERROR File does not exist');
    }
  });
};

fileUploadController.getFile = async (req, res) => {
  try {
    const filePath = req.query.filePath;
    const file = path.join(__dirname, `../../${filePath}`);
    responseFile('dd.pdf', res, file);
  } catch (error) {
    res.status(400).json({
      status: false,
      message: error
    });
  }
};
