import * as multer from 'multer';
import * as _cloudinary from 'cloudinary';

const UPLOAD_PATH = 'uploads';

_cloudinary.config({
  cloud_name: 'dmun7lv5g',
  api_key: '316541953788223',
  api_secret: 'E81fd1bTAbJi8avoqzuUC7dUOU4'
});
//
export const cloudinaryUpload = _cloudinary.v2.uploader.upload;

export const upload = multer({ dest: `${UPLOAD_PATH}/` }); // multer configurationY
