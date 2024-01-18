import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class login extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_login: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    usuario: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'empleado',
        key: 'id_empleado'
      }
    },
    contrasena: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    tipo_usuario: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'login',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_login" },
        ]
      },
      {
        name: "fk_login_empleado",
        using: "BTREE",
        fields: [
          { name: "usuario" },
        ]
      },
    ]
  });
  }
}
