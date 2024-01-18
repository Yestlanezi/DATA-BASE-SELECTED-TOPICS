import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class turnomedico extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_turno: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_consultorio: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'consultorio',
        key: 'id_consultorio'
      }
    },
    id_medico: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'medico',
        key: 'id_medico'
      }
    },
    dia_semana: {
      type: DataTypes.STRING(20),
      allowNull: false
    },
    hora_inicio: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: Sequelize.Sequelize.fn('current_timestamp')
    },
    hora_fin: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: Sequelize.Sequelize.fn('current_timestamp')
    }
  }, {
    sequelize,
    tableName: 'turnomedico',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_turno" },
        ]
      },
      {
        name: "fk_turno_consultorio",
        using: "BTREE",
        fields: [
          { name: "id_consultorio" },
        ]
      },
      {
        name: "fk_turno_medico",
        using: "BTREE",
        fields: [
          { name: "id_medico" },
        ]
      },
    ]
  });
  }
}
