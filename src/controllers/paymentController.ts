import { User } from './../models/MYSQL/user';
import { CourseMaterial } from './../models/MYSQL/courseMaterial';
import { Helper } from '../libs';
import { Payment as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const paymentController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: User,
        as: 'user',
        required: false
      },
      {
        model: CourseMaterial,
        as: 'courseMaterial',
        required: false
      }
    ]
  }
});
