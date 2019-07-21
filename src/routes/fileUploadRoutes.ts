import * as express from 'express';
import { Helper, upload } from '../libs';

// set your controller name
import { fileUploadController as controller } from '../controllers';

const Routes = express.Router();

// set your routerendpoint
const routeName = 'fileUploads';

// change router name
export const fileUploadRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {
  Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
  next();
});

Routes.route(`/${routeName}/uploadImage`).post(
  upload.single('image'),
  controller.uploadImage
);

Routes.route(`/${routeName}/uploadFile`).post(
  upload.single('file'),
  controller.uploadFile
);

Routes.route(`/${routeName}/getFile`).get(controller.getFile);
