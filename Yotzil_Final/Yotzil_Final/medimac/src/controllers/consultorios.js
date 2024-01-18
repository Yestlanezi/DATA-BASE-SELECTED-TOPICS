import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);


export const createConsultorios = async (req,res) =>{
    let cita = await models.consultorio.create(req.body);
    res.json(cita)
}

export const getConsultorios = async (req,res) =>{
    let medico = await models.consultorio.findAll();
    res.json(medico)
} 