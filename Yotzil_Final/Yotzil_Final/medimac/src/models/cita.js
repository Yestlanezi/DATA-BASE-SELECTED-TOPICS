import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class cita extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_cita: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_medico: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'medico',
        key: 'id_medico'
      }
    },
    id_paciente: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'paciente',
        key: 'id_paciente'
      }
    },
    estatus: {
      type: DataTypes.STRING(30),
      allowNull: false
    },
    fecha: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: Sequelize.Sequelize.fn('current_timestamp')
    }
  }, {
    sequelize,
    tableName: 'cita',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_cita" },
        ]
      },
      {
        name: "fk_cita_medico",
        using: "BTREE",
        fields: [
          { name: "id_medico" },
        ]
      },
      {
        name: "fk_cita_paciente",
        using: "BTREE",
        fields: [
          { name: "id_paciente" },
        ]
      },
    ]
  });
  }
}
