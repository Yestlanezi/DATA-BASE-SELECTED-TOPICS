import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class medico extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_medico: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_especialidad: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'especialidad',
        key: 'id_especialidad'
      }
    },
    id_empleado: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'empleado',
        key: 'id_empleado'
      }
    },
    nombre_medico: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    correo_medico: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    telefono_medico: {
      type: DataTypes.STRING(100),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'medico',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_medico" },
        ]
      },
      {
        name: "fk_medico_especialidad",
        using: "BTREE",
        fields: [
          { name: "id_especialidad" },
        ]
      },
      {
        name: "fk_medico_empleado",
        using: "BTREE",
        fields: [
          { name: "id_empleado" },
        ]
      },
    ]
  });
  }
}
