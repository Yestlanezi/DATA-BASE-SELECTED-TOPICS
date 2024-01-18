import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);

export const crearServicio = async (req,res) =>{
    let servicio = await models.servicio.create(req.body);
    res.json(servicio)
} 