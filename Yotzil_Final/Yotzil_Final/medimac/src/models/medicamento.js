import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class medicamento extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_medicamento: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombre_medicamento: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    precio_unitario: {
      type: DataTypes.DECIMAL(15,2),
      allowNull: false
    },
    clasificacion: {
      type: DataTypes.STRING(20),
      allowNull: false
    },
    tipo: {
      type: DataTypes.STRING(20),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'medicamento',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_medicamento" },
        ]
      },
    ]
  });
  }
}
