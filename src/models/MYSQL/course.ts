import * as DataTypes from 'sequelize';

import { mysqlConnect } from '../../libs';

export const Course: any = mysqlConnect.define(
  'courses',
  {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    course_name: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: true
    },
    course_type_id: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: true
    },

    status: {
      type: DataTypes.INTEGER(11),
      allowNull: true,
      defaultValue: 0
    },
    start_time: {
      type: DataTypes.TIME,
      allowNull: true,
      defaultValue: 0
    },
    end_time: {
      type: DataTypes.TIME,
      allowNull: true,
      defaultValue: 0
    },
    instructor_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    room: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    
    // file: {
    //   type: DataTypes.STRING(255),
    //   allowNull: false
    // },
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
    tableName: 'courses',
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
