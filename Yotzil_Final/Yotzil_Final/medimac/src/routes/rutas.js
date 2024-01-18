import { Router } from "express";
import { generarCita,actualizarCita, getCitas} from "../controllers/citas.js";
import { login, loginRecepcionista } from "../controllers/login.js";
import { crearPaciente, eliminarPaciente, obtenerPacientes } from "../controllers/pacientes.js";
import { registrarMedico, eliminarMedico, getMedicos } from "../controllers/medicos.js";
import { getEspecialidad } from "../controllers/especialidad.js";
import { getMedicamentos } from "../controllers/medicamento.js";
import { crearReceta, getRecetas } from "../controllers/recetas.js";
import { createConsultorios, getConsultorios } from "../controllers/consultorios.js";
import { crearServicio } from "../controllers/servicios.js";
const router = Router();

//Citas
router.post('/generarCita',generarCita)
router.put('/updateCita',actualizarCita)
router.get('/getCitas/:id_medico',getCitas)

//Pacientes
router.get('/getPacientes',obtenerPacientes)
router.post('/crearPaciente',crearPaciente);
router.delete('/eliminarPaciente/:id_paciente',eliminarPaciente)

//Recetas
router.post('/crearReceta',crearReceta);
router.get('/getRecetas/:id_medico',getRecetas)

//Login
router.post('/login',login)
router.post('/loginRecepcionista',loginRecepcionista)

//Medicos
router.get('/getMedicos',getMedicos)
router.post('/registrarMedico',registrarMedico)
router.delete('/eliminarMedico/:id_medico',eliminarMedico)

//Especialidad
router.get('/getEspecialidad',getEspecialidad);

//Medicamentos
router.get('/getMedicamentos',getMedicamentos);

//Consultorios
router.get('/getConsultorios',getConsultorios)
router.post('/createCpmsultorio',createConsultorios)

//Servicios
router.post('/crearServicio',crearServicio);

export default router;