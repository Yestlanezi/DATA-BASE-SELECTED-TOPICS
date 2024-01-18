import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class recepcionista extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_recepcionista: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_empleado: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'empleado',
        key: 'id_empleado'
      }
    },
    nombre_recepcionista: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    email_recepcionista: {
      type: DataTypes.STRING(100),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'recepcionista',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_recepcionista" },
        ]
      },
      {
        name: "fk_recepcionista_empleado",
        using: "BTREE",
        fields: [
          { name: "id_empleado" },
        ]
      },
    ]
  });
  }
}
