import { Instructor } from './../models/MYSQL/instructor';
import { Course } from './../models/MYSQL/course';
import { Helper } from '../libs';
import { CourseMaterial as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const courseMaterialController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: Course,
        as: 'course',
        required: false,
        include: [
          {
            model: Instructor,
            as: 'instructor',
            required: false
          }
        ]
      }
    ]
  }
});
