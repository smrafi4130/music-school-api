import * as DataTypes from 'sequelize';

import { mysqlConnect } from '../../libs';

export const Post: any = mysqlConnect.define(
  'posts',
  {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    title: {
      type: DataTypes.STRING(255),
      alllowNull: false
    },
    description: {
      type: DataTypes.STRING(255),
      alllowNull: false
    },
    attachment: {
      type: DataTypes.STRING(255),
      alllowNull: false
    },

    user_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    // likes: {
    //   type: DataTypes.INTEGER(11),
    //   allowNull: false
    // },

    status: {
      type: DataTypes.INTEGER(11),
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
    tableName: 'posts',
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
