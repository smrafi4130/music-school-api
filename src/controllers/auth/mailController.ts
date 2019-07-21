import * as NodeMailer from 'nodemailer';
import * as Fs from 'fs';
import * as Path from 'path';

export const mailController: any = {};

const readHTMLFile = (path, callback) => {
  Fs.readFile(path, { encoding: 'utf-8' }, (err, html) => {
    if (err) {
      throw err;
      callback(err);
    } else {
      callback(null, html);
    }
  });
};

const transporter = NodeMailer.createTransport({
  host: 'smtp.gmail.com',
  port: 587,
  secure: false,
  requireTLS: true,
  auth: {
    user: 'smrafi.project@gmail.com',
    pass: 'Smrafi1429!'
  }
});

mailController.sendMail = async (req, res) => {
  try {
    const mailOptions = {
      from: req.body.name,
      to: 'smrafi.project@gmail.com',
      subject: req.body.subject,
      text: req.body.message,
      html:
        '<p>Sender: ' +
        req.body.email +
        '</p>' +
        '<p>' +
        req.body.message +
        '</p>'
    };
    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        res.status(400).send({
          success: false
        });
      } else {
        res.status(200).json({
          status: true,
          message: 'Email Sent'
        });
      }
    });
  } catch (error) {
    res.status(400).json({
      status: false,
      message: error
    });
  }
};
