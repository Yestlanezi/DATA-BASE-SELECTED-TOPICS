import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class receta extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_receta: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_cita: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'cita',
        key: 'id_cita'
      }
    },
    diagnostico: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    med_prescrito: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'receta',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_receta" },
        ]
      },
      {
        name: "fk_receta_cita",
        using: "BTREE",
        fields: [
          { name: "id_cita" },
        ]
      },
    ]
  });
  }
}
