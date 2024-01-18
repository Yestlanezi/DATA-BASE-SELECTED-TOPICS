import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);


export const getMedicos = async (req,res) =>{
    let medico = await models.medico.findAll();
    res.json(medico)
} 

export const registrarMedico = async (req,res) =>{
    let empleado = await models.empleado.create({
        nombre_empleado: req.body.nombre_medico,
        tipo_empleado: 1 
    });
    let id_empleado = empleado.id_empleado;
    
    let medico = await models.medico.create({
        id_empleado,
        nombre_medico : req.body.nombre_medico,
        id_especialidad : req.body.id_especialidad,
        correo_medico : req.body.correo_medico,
        telefono_medico: req.body.telefono_medico 
    })

    let login = await models.login.create({
        usuario: id_empleado,
        contrasena: req.body.contrasena,
        tipo_usuario: 1
    })

    res.json(medico)
    /*let medico = await models.medico.create(req.body);
    res.json(medico)*/
} 

export const eliminarMedico = async (req,res) =>{
    let medico;
    try{
        medico = await models.medico.destroy({
            where: {
                id_medico: req.params.id_medico
            }
        });
        res.json(medico)
    }catch(e){
        if(e.message.includes('foreign key')){
            res.json({
                estatus : false,
                message : "Aun se tienen citas o turnos pendientes."
            })
        }else{
            res.json({
                estatus : false,
                message : e.message
            })
        }
    }
    
}