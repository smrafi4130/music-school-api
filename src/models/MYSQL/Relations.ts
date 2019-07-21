import { Payment } from './payment';
// import { Like } from './like';
import { Notification } from './notification';
import { Message } from './message';
import { CourseMaterial } from './courseMaterial';
import { Result } from './result';
import { Post } from './post';
import { AccessGroup } from './auth/accessGroup';
import { Course } from './course';
import { InstructorCourse } from './instructorCourse';
import { Instructor } from './instructor';
import { Artist } from './artist';
import { User } from './user';
import { Admin } from './admin';
import { Student } from './student';
import { StudentCourse } from './studentCourse';

// import { UserInfo } from './userInfo';

if (!process.env.migrate) {
  // console.log(123);
  Admin.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  Course.belongsTo(Instructor, {
    foreignKey: 'instructor_id',
    targetKey: 'id',
    as: 'instructor'
  });
  Student.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  Post.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  Artist.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  Instructor.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  InstructorCourse.belongsTo(Instructor, {
    foreignKey: 'instructor_id',
    targetKey: 'id',
    as: 'instructor'
  });
  InstructorCourse.belongsTo(Course, {
    foreignKey: 'course_id',
    targetKey: 'id',
    as: 'course'
  });
  Result.belongsTo(Student, {
    foreignKey: 'student_id',
    targetKey: 'id',
    as: 'student'
  });
  Result.belongsTo(Course, {
    foreignKey: 'course_id',
    targetKey: 'id',
    as: 'course'
  });
  StudentCourse.belongsTo(Student, {
    foreignKey: 'student_id',
    targetKey: 'id',
    as: 'student'
  });
  StudentCourse.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  StudentCourse.belongsTo(Instructor, {
    foreignKey: 'instructor_id',
    targetKey: 'id',
    as: 'instructor'
  });
  StudentCourse.belongsTo(Course, {
    foreignKey: 'course_id',
    targetKey: 'id',
    as: 'course'
  });
  User.belongsTo(AccessGroup, {
    foreignKey: 'access_group_id',
    targetKey: 'id',
    as: 'accessGroup'
  });
  CourseMaterial.belongsTo(Course, {
    foreignKey: 'course_id',
    targetKey: 'id',
    as: 'course'
  });
  Message.belongsTo(User, {
    foreignKey: 'sender_id',
    targetKey: 'id',
    as: 'sender'
  });
  Message.belongsTo(User, {
    foreignKey: 'receiver_id',
    targetKey: 'id',
    as: 'receiver'
  });
  Notification.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  Payment.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id',
    as: 'user'
  });
  Payment.belongsTo(CourseMaterial, {
    foreignKey: 'courseMaterial_id',
    targetKey: 'id',
    as: 'courseMaterial'
  });
  // Like.belongsTo(Post, {
  //   foreignKey: 'post_id',
  //   targetKey: 'id',
  //   as: 'post'
  // });
}
