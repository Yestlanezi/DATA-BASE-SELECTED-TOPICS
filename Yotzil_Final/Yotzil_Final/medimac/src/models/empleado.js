import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class empleado extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_empleado: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombre_empleado: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    /* 1.Medico 2.recepcionista */
    tipo_empleado: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'empleado',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_empleado" },
        ]
      },
    ]
  });
  }
}
