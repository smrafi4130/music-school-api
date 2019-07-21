import { User } from './../models/MYSQL/user';
import { Helper } from '../libs';
import { Message as Model } from '../models/MYSQL';
import { BaseController } from './baseController';

const controllerName = Helper.getFileName(__filename, __dirname);

export const messageController = BaseController(controllerName, Model, {
  index: {
    include: [
      {
        model: User,
        as: 'sender',
        required: false
      },
      {
        model: User,
        as: 'receiver',
        required: false
      }
    ]
  }
});
