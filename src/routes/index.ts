import { messageRoutes } from './messageRoutes';
import { courseMaterialRoutes } from './courseMaterialRoutes';
import { postRoutes } from './postRoutes';
import { adminRoutes } from './adminRoutes';
import { migrationRoutes } from './migrationRoutes';
import { authRoutes } from './authRoutes';
import { userRoutes } from './userRoutes';
import { studentRoutes } from './studentRoutes';
import { artistRoutes } from './artistRoutes';
import { instructorRoutes } from './instructorRoutes';
import { courseRoutes } from './courseRoutes';
import { instructorCourseRoutes } from './instructorCourseRoutes';
import { studentCourseRoutes } from './studentCourseRoutes';
import { accessGroupRoutes } from './accessGroupRoutes';
import { routineRoutes } from './routineRoutes';
import { fileUploadRoutes } from './fileUploadRoutes';
import { resultRoutes } from './resultRoutes';
import { notificationController } from '../controllers';
import { notificationRoutes } from './notificationRoutes';
import { paymentRoutes } from './paymentRoute';
import { mailRoutes } from './mailRoutes';
// import { likeRoutes } from './likeRoutes';

// tslint:disable-next-line:max-line-length
export const apiRoutes = [
  migrationRoutes,
  authRoutes,
  userRoutes,
  adminRoutes,
  studentRoutes,
  artistRoutes,
  instructorRoutes,
  courseRoutes,
  instructorCourseRoutes,
  studentCourseRoutes,
  accessGroupRoutes,
  routineRoutes,
  fileUploadRoutes,
  postRoutes,
  resultRoutes,
  courseMaterialRoutes,
  messageRoutes,
  notificationRoutes,
  paymentRoutes,
  mailRoutes
  // likeRoutes
];
