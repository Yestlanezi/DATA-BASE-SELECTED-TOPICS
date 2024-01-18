import {Sequelize} from 'sequelize';

const conexion = new Sequelize(
    'medimac',
    'root',
    '1234',
    {
        host: 'localhost',
        port: 3306,
        dialect: 'mysql'
    }
);

export default conexion;