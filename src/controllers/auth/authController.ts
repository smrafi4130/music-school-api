import { AccessGroup } from './../../models/MYSQL/auth/accessGroup';
import { Instructor } from './../../models/MYSQL/instructor';
import { Student } from './../../models/MYSQL/student';
import * as config from 'config';
import { Helper, mysqlConnect } from '../../libs';
import { User as Model } from '../../models/MYSQL';
import { BaseController } from '../baseController';

import * as bcrypt from 'bcryptjs';
import * as jwt from 'jsonwebtoken';
const controllerName = Helper.getFileName(__filename, __dirname);

export const authController = BaseController(controllerName, Model, {});

authController.login = async (req, res) => {
  try {
    Helper.logPlaceHolder.initLogPlaceHolder(req, 'auth', 'login');

    const user = await Model.scope('withAll').findOne({
      where: { user_name: req.body.user_name },
      include: [
        {
          model: AccessGroup,
          as: 'accessGroup'
        }
      ]
    });

    if (!user) {
      return res.status(401).json({
        status: false,
        message: 'user not found'
      });
    }
    const bs = await bcrypt.compare(req.body.password, user.password);

    if (!bs) {
      return res.status(401).json({
        status: false,
        message: 'password do not match'
      });
    }

    const payload = user.toJSON();
    delete payload.password;
    delete payload.remember_token;

    const token = jwt.sign(payload, config.get('JWT.secret'), {
      // algorithm: 'RS256',
      // expiresIn: 60 * 60,
    });

    res.status(200).json({
      success: true,
      message: 'user login success',
      data: {
        token,
        payload
      }
    });
  } catch (err) {
    res.status(400).json({
      status: false,
      message: 'something went wrong in authentication',
      error: err
    });
  }
};

authController.signUp = async (req, res) => {
  // let transaction;
  // transaction = await mysqlConnect.transaction();

  try {
    Helper.logPlaceHolder.initLogPlaceHolder(req, 'auth', 'signup');

    const hashedPassword = bcrypt.hashSync(req.body.password, 8);

    const userCreate = await Model.create({
      email: req.body.email,
      password: hashedPassword,
      user_name: req.body.user_name,
      first_name: req.body.first_name,
      last_name: req.body.last_name,
      gender: req.body.gender,
      contact_no: req.body.contact_no,
      address: req.body.address,
      access_group_id: req.body.access_group_id
    });

    const user = await Model.findOne({
      where: { id: userCreate.id }
    });

    const payload = user.toJSON();

    // tslint:disable-next-line:radix
    if (parseInt(req.body.access_group_id) === 3) {
      const studentCreate = await Student.create({
        user_id: user.id
      });

      payload.student = studentCreate;
    }

    // tslint:disable-next-line:radix
    if (parseInt(req.body.access_group_id) === 2) {
      const instructorCreate = await Instructor.create({
        user_id: user.id
      });

      payload.instructor = instructorCreate;
    }

    const token = jwt.sign(payload, config.get('JWT.secret'), {
      // algorithm: 'RS256',
      // expiresIn: 60 * 60,
    });

    res.status(200).json({
      success: true,
      message: 'user registration success',
      data: { user }
    });
  } catch (err) {
    // transaction.rollback();

    res.status(400).json({
      success: false,
      message: 'error in user registration',
      error: err
    });
  }
};
