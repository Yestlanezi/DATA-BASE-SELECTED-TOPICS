import _sequelize from 'sequelize';
const { Model, Sequelize } = _sequelize;

export default class paciente extends Model {
  static init(sequelize, DataTypes) {
  return super.init({
    id_paciente: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nombre_paciente: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    fecha_nac: {
      type: DataTypes.DATEONLY,
      allowNull: false
    },
    direccion: {
      type: DataTypes.STRING(200),
      allowNull: false
    },
    telefono: {
      type: DataTypes.STRING(10),
      allowNull: false
    },
    correo: {
      type: DataTypes.STRING(100),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'paciente',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id_paciente" },
        ]
      },
    ]
  });
  }
}
