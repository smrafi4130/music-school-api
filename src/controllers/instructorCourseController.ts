import { Course } from './../models/MYSQL/course';
import { Instructor } from './../models/MYSQL/instructor';
import { Helper } from '../libs';
import { InstructorCourse as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const instructorCourseController = BaseController(
  controllerName,
  Model,
  {
    index: {
      include: [
        {
          model: Instructor,
          as: 'instructor',
          required: false
        },
        {
          model: Course,
          as: 'course',
          required: false
        }
      ]
    }
  }
);
