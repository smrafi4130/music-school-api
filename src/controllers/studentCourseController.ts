import { Instructor } from './../models/MYSQL/instructor';
import { User } from './../models/MYSQL/user';
import { Student } from './../models/MYSQL/student';
import { Course } from '../models/MYSQL/course';
import { Helper } from '../libs';
import { StudentCourse as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const studentCourseController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: Student,
        as: 'student',
        required: false,
        include: [
          {
            model: User,
            as: 'user',
            required: false
          }
        ]
      },
      {
        model: Course,
        as: 'course',
        required: false,
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
    ]
  }
});
