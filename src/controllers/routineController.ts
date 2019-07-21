import { Instructor } from '../models/MYSQL/instructor';
import { Helper } from '../libs';
import { Routine as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const routineController = BaseController(controllerName, Model, {});
