import * as DataTypes from 'sequelize';

import { mysqlConnect } from '../../libs';

export const Notification: any = mysqlConnect.define(
  'notifications',
  {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    user_id: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    notification: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    value: {
      type: DataTypes.BOOLEAN(1),
      allowNull: true
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
    tableName: 'notifications',
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
