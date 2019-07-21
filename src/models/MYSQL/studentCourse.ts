import * as DataTypes from 'sequelize';

import { mysqlConnect } from '../../libs';

export const StudentCourse: any = mysqlConnect.define(
  'student_courses',
  {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },

    student_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    course_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    marks: {
      type: DataTypes.STRING(255),
      allowNull: false,
      defaultValue: '-'
    },
    status: {
      type: DataTypes.INTEGER(3),
      allowNull: true,
      defaultValue: 0
    },
    created_at: {
      type: DataTypes.DATE,
      allowNull: true
    },
    updated_at: {
      type: DataTypes.DATE,
      allowNull: true
    },
    deleted_at: {
      type: DataTypes.DATE,
      allowNull: true
    }
  },
  {
    tableName: 'student_courses',
    timestamps: true,
    underscored: true,
    paranoid: true,

    defaultScope: {
      where: { deleted_at: null },
      attributes: { exclude: ['deleted_at'] }
    },
    scopes: {
      withAll: { attributes: {} },
      withoutDeleted: { where: { deleted_at: null } },
      withDeleted: {
        attributes: {}
      }
    }
  }
);
