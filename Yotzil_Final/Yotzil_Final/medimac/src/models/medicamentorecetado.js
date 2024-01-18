import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class medicamentorecetado extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_rmedrec: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_receta: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'receta',
        key: 'id_receta'
      }
    },
    id_medicamento: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'medicamento',
        key: 'id_medicamento'
      }
    }
  }, {
    sequelize,
    tableName: 'medicamentorecetado',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_rmedrec" },
        ]
      },
      {
        name: "fk_mere_receta",
        using: "BTREE",
        fields: [
          { name: "id_receta" },
        ]
      },
      {
        name: "fk_mere_medicamento",
        using: "BTREE",
        fields: [
          { name: "id_medicamento" },
        ]
      },
    ]
  });
  }
}
