import { Student } from './../models/MYSQL/student';
import { Course } from './../models/MYSQL/course';
import { User } from '../models/MYSQL/user';
import { Helper } from '../libs';
import { Result as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const resultController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: Student,
        as: 'student',
        required: false
      },
      {
        model: Course,
        as: 'course',
        required: false
      }
    ]
  }
});
