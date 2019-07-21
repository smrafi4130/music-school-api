import { Helper } from '../libs';
import { AccessGroup as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const accessGroupController = BaseController(controllerName, Model, {});
