import { User } from './../models/MYSQL/user';
import { Instructor } from './../models/MYSQL/instructor';
import { Helper } from '../libs';
import { Course as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const courseController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: Instructor,
        as: 'instructor',
        required: false,
        include: [
          {
            model: User,
            as: 'user',
            required: false
          }
        ]
      }
    ]
  }
});
