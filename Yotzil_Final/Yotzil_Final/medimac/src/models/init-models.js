import _sequelize from "sequelize";
const DataTypes = _sequelize.DataTypes;
import _cita from  "./cita.js";
import _consultorio from  "./consultorio.js";
import _empleado from  "./empleado.js";
import _especialidad from  "./especialidad.js";
import _login from  "./login.js";
import _medicamento from  "./medicamento.js";
import _medicamentorecetado from  "./medicamentorecetado.js";
import _medico from  "./medico.js";
import _paciente from  "./paciente.js";
import _recepcionista from  "./recepcionista.js";
import _receta from  "./receta.js";
import _servicio from  "./servicio.js";
import _turnomedico from  "./turnomedico.js";

export default function initModels(sequelize) {
  const cita = _cita.init(sequelize, DataTypes);
  const consultorio = _consultorio.init(sequelize, DataTypes);
  const empleado = _empleado.init(sequelize, DataTypes);
  const especialidad = _especialidad.init(sequelize, DataTypes);
  const login = _login.init(sequelize, DataTypes);
  const medicamento = _medicamento.init(sequelize, DataTypes);
  const medicamentorecetado = _medicamentorecetado.init(sequelize, DataTypes);
  const medico = _medico.init(sequelize, DataTypes);
  const paciente = _paciente.init(sequelize, DataTypes);
  const recepcionista = _recepcionista.init(sequelize, DataTypes);
  const receta = _receta.init(sequelize, DataTypes);
  const servicio = _servicio.init(sequelize, DataTypes);
  const turnomedico = _turnomedico.init(sequelize, DataTypes);

  receta.belongsTo(cita, { as: "id_cita_citum", foreignKey: "id_cita"});
  cita.hasMany(receta, { as: "receta", foreignKey: "id_cita"});
  turnomedico.belongsTo(consultorio, { as: "id_consultorio_consultorio", foreignKey: "id_consultorio"});
  consultorio.hasMany(turnomedico, { as: "turnomedicos", foreignKey: "id_consultorio"});
  login.belongsTo(empleado, { as: "usuario_empleado", foreignKey: "usuario"});
  empleado.hasMany(login, { as: "logins", foreignKey: "usuario"});
  medico.belongsTo(empleado, { as: "id_empleado_empleado", foreignKey: "id_empleado"});
  empleado.hasMany(medico, { as: "medicos", foreignKey: "id_empleado"});
  recepcionista.belongsTo(empleado, { as: "id_empleado_empleado", foreignKey: "id_empleado"});
  empleado.hasMany(recepcionista, { as: "recepcionista", foreignKey: "id_empleado"});
  medico.belongsTo(especialidad, { as: "id_especialidad_especialidad", foreignKey: "id_especialidad"});
  especialidad.hasMany(medico, { as: "medicos", foreignKey: "id_especialidad"});
  medicamentorecetado.belongsTo(medicamento, { as: "id_medicamento_medicamento", foreignKey: "id_medicamento"});
  medicamento.hasMany(medicamentorecetado, { as: "medicamentorecetados", foreignKey: "id_medicamento"});
  cita.belongsTo(medico, { as: "id_medico_medico", foreignKey: "id_medico"});
  medico.hasMany(cita, { as: "cita", foreignKey: "id_medico"});
  turnomedico.belongsTo(medico, { as: "id_medico_medico", foreignKey: "id_medico"});
  medico.hasMany(turnomedico, { as: "turnomedicos", foreignKey: "id_medico"});
  cita.belongsTo(paciente, { as: "id_paciente_paciente", foreignKey: "id_paciente"});
  paciente.hasMany(cita, { as: "cita", foreignKey: "id_paciente"});
  medicamentorecetado.belongsTo(receta, { as: "id_receta_recetum", foreignKey: "id_receta"});
  receta.hasMany(medicamentorecetado, { as: "medicamentorecetados", foreignKey: "id_receta"});

  return {
    cita,
    consultorio,
    empleado,
    especialidad,
    login,
    medicamento,
    medicamentorecetado,
    medico,
    paciente,
    recepcionista,
    receta,
    servicio,
    turnomedico,
  };
}
