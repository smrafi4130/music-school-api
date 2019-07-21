import { User } from './../models/MYSQL/user';
import { Helper } from '../libs';
import { Admin as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const adminController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: User,
        as: 'user',
        required: false
      }
    ]
  }
});
