import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);

export const obtenerPacientes = async (req,res) =>{
    let pacientes = await models.paciente.findAll({
        include:{
            model: models.cita,
            as: 'cita'
        }
    });
    res.json(pacientes)
} 


export const crearPaciente = async (req,res) =>{
    let paciente = await models.paciente.create(req.body);
    res.json(paciente)
} 

export const eliminarPaciente = async (req,res) =>{
    let paciente;
    try{
        paciente = await models.paciente.destroy({
            where: {
                id_paciente: req.params.id_paciente
            }
        });
        res.json(paciente)
    }catch(e){
        if(e.message.includes('foreign key')){
            res.json({
                estatus : false,
                message : "Aun se tienen citas pendientes."
            })
        }else{
            res.json({
                estatus : false,
                message : e.message
            })
        }
    }
    
}