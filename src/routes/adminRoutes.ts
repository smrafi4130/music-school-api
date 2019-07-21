import * as express from 'express';
import {adminController as controller } from '../controllers';
import { Helper } from '../libs';

const Routes = express.Router();
const routeName = 'admins';

export const adminRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {

    Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
    next();

});

Helper.restApiPlaceHolder(Routes, controller, routeName);
