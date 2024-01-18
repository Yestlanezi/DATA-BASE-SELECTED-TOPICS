import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);


export const getEspecialidad = async (req,res) =>{
    let especialidad = await models.especialidad.findAll();
    res.json(especialidad)
} 