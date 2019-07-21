import * as express from 'express';
import { routineController as controller } from '../controllers';
import { Helper } from '../libs';

const Routes = express.Router();
const routeName = 'routines';

export const routineRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {
  Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
  next();
});

Helper.restApiPlaceHolder(Routes, controller, routeName);
