import * as express from 'express';
import { Helper } from '../libs';

// set your controller name
import { mailController as controller } from '../controllers';

const Routes = express.Router();

// set your routerendpoint
const routeName = 'mails';

// change router name
export const mailRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {
  Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
  next();
});

Routes.route(`/${routeName}/sendMail`).post(controller.sendMail);
