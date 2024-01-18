import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class servicio extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_servicio: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombre_servicio: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    costo_servicio: {
      type: DataTypes.DECIMAL(15,2),
      allowNull: false
    },
    id_cita:{
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'servicio',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_servicio" },
        ]
      },
    ]
  });
  }
}
