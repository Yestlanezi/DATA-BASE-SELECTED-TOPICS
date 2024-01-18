import initModels from '../models/init-models.js'
import conexion from '../config/database.js'
const models = initModels(conexion);

export const login = async (req,res) =>{
    let login = await models.medico.findAll({
        where:{
            correo_medico: req.body.correo
        },
        attributes: ['nombre_medico','id_medico'],
        include:{
            model: models.empleado,
            as: 'id_empleado_empleado',
            include: {
                model: models.login,
                as:'logins',
                attributes: ['contrasena'],
            }
        }
        
    });

   
    if(login.length === 0){
        res.json({"response":false,"error":"Usuario o Password incorrectos."})
        return;
    }

    if(login[0].id_empleado_empleado.logins[0].contrasena !== req.body.contrasena ){
        res.json({"response":false,"error":"Usuario o Password incorrectos."})
        return;
    }

    res.json({
        "response":true,
        "id_medico": login[0].id_medico,
        "nombre_medico": login[0].nombre_medico,
        "tipo_empleado": login[0].id_empleado_empleado.tipo_empleado,
        "error":""
    })
} 

export const loginRecepcionista = async (req,res) =>{
    let login = await models.recepcionista.findAll({
        where:{
            email_recepcionista: req.body.correo
        },
        attributes: ['nombre_recepcionista','id_recepcionista'],
        include:{
            model: models.empleado,
            as: 'id_empleado_empleado',
            include: {
                model: models.login,
                as:'logins',
                attributes: ['contrasena'],
            }
        }
        
    });

   
    if(login.length === 0){
        res.json({"response":false,"error":"Usuario o Password incorrectos."})
        return;
    }

    if(login[0].id_empleado_empleado.logins[0].contrasena !== req.body.contrasena ){
        res.json({"response":false,"error":"Usuario o Password incorrectos."})
        return;
    }

    res.json({
        "response":true,
        "id_medico": login[0].id_recepcionista,
        "nombre_medico": login[0].nombre_recepcionista,
        "tipo_empleado": login[0].id_empleado_empleado.tipo_empleado,
        "error":""
    })
} 