import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);


export const generarCita = async (req,res) =>{
    let cita = await models.cita.create(req.body);
    res.json(cita)
}

export const actualizarCita = async (req,res) =>{
    let cita = await models.cita.update(req.body,{
        where:{
            id_cita: req.body.id_cita
        }
    })
    res.json(cita[0]);
}

export const getCitas = async (req,res) =>{
    let citas = await models.medico.findOne({
        where:{id_medico: req.params.id_medico},
        include:[
        {
            model: models.cita,
            as:"cita",
            include: "id_paciente_paciente"
        },
        {
            model: models.turnomedico,
            as: "turnomedicos",
            include: "id_consultorio_consultorio"
        }
    ]
    })
    res.json(citas)
}