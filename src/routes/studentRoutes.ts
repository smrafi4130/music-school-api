import * as express from 'express';
import { studentController as controller } from '../controllers';
import { Helper } from '../libs';

const Routes = express.Router();
const routeName = 'students';

export const studentRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {

    Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
    next();

});

Helper.restApiPlaceHolder(Routes, controller, routeName);
