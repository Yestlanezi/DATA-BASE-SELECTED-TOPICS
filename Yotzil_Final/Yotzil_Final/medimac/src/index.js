import express from 'express';
import conexion from './config/database.js';
//import router from './routes/rutas.js';
import router from './routes/rutas.js';
import cors from 'cors';

const app = express();

async function startServer(){

    try{
        await conexion.sync({force:false})
    }catch(error){
        console.log(error.message)
        return;
    }

    app.use(cors());
    app.use(express.json())
    app.use(express.urlencoded({extended: false}))
    app.use(router)
    app.listen(3000)
    console.log("Servidor prendido en el puerto 3000")

}

startServer();