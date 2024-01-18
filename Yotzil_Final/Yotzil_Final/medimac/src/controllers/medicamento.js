import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);


export const getMedicamentos = async (req,res) =>{
    let medicamentos = await models.medicamento.findAll();
    res.json(medicamentos)
} 