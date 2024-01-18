import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);

export const crearReceta = async (req,res) =>{
    let receta = await models.receta.create({
        id_cita: req.body.id_cita,
        diagnostico:req.body.diagnostico,
        med_prescrito:req.body.med_prescrito
    });

    let id_receta = receta.id_receta

    await models.medicamentorecetado.create({
        id_receta,
        id_medicamento : req.body.id_medicamento
    })
    
    res.json(receta)
} 

export const getRecetas = async (req, res) =>{
    let recetas = await models.receta.findAll({
        include: {
            model: models.cita,
            as:"id_cita_citum",
            where:{
                id_medico : req.params.id_medico
            },
            include:["id_medico_medico","id_paciente_paciente"]
        }
    })

    res.json(recetas)
}
