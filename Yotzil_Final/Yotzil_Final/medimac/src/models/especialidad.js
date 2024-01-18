import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class especialidad extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_especialidad: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombre_especialidad: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    precio_especialidad: {
      type: DataTypes.DECIMAL(15,2),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'especialidad',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_especialidad" },
        ]
      },
    ]
  });
  }
}
