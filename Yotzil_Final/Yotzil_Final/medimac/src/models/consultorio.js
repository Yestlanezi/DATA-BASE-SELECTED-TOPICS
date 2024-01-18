import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class consultorio extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_consultorio: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    area: {
      type: DataTypes.DECIMAL(15,2),
      allowNull: false
    },
    unidad: {
      type: DataTypes.STRING(5),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'consultorio',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_consultorio" },
        ]
      },
    ]
  });
  }
}
