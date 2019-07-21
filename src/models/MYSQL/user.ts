import * as DataTypes from 'sequelize';

import { mysqlConnect } from '../../libs';

export const User: any = mysqlConnect.define(
  'users',
  {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },

    user_name: {
      type: DataTypes.STRING(255),
      allowNull: false
      // unique: true
    },
    first_name: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    last_name: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    email: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    password: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    contact_no: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    address: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    gender: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    category: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    status: {
      type: DataTypes.INTEGER(3),
      allowNull: true,
      defaultValue: 0
    },
    access_group_id: {
      type: DataTypes.INTEGER,
      allowNull: true
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
    tableName: 'users',
    timestamps: true,
    underscored: true,
    paranoid: true,

    defaultScope: {
      attributes: {
        exclude: ['password', 'deleted_at']
      }
    },
    scopes: {
      withAll: { attributes: {} },
      withoutPassword: {
        attributes: {
          exclude: ['password']
        }
      }
    }
  }
);
