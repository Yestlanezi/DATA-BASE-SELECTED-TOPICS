let pacientes_container = document.getElementById('pacientes_container');
let medicos_container = document.getElementById('medicos_container');
let consultorios_container = document.getElementById('consultorios_container');
let select_especialidad = document.getElementById('select_especialidad');
let html                = ""
let htmlMedico          = ""
let htmlConsultorio     = ""
let flag_mod            = false;

fetch("http://localhost:3000/getConsultorios")
    .then(res=>res.json())
    .then(consultorios=>{
        consultorios.forEach(consul=>{
            htmlConsultorio += `<div class="row bg-secondary text-white mx-4 mt-1 p-3">
                                <div class="col-3 text-center"> ${consul.id_consultorio}</div>
                                <div class="col-3 text-center">${consul.area}</div>
                                <div class="col-3 text-center">${consul.unidad}</div>
                                <div class="col-3 text-center">
                                    <button class="btn btn-danger" id-medico="${consul.id_consultorio}" id="eliminarMedico" ">Eliminar</button>
                                </div>
                            </div>`
        })

        consultorios_container.innerHTML += htmlConsultorio
    })

fetch("http://localhost:3000/getEspecialidad")
    .then(res=>res.json())
    .then(especialidades =>{
        //console.log (especialidades)
        especialidades.forEach(esp=>{
            select_especialidad.innerHTML += `<option value="${esp.id_especialidad}">${esp.nombre_especialidad}</option>`  
        })

    })
fetch("http://localhost:3000/getMedicos")
    .then(res => res.json())
    .then(medicos =>{
        medicos.forEach(medico=>{
            htmlMedico += `<div class="row bg-secondary text-white mx-4 mt-1 p-3">
                                <div class="col-3 text-center"> ${medico.nombre_medico}</div>
                                <div class="col-3 text-center">${medico.telefono_medico}</div>
                                <div class="col-3 text-center">${medico.correo_medico}</div>
                                <div class="col-3 text-center">
                                    <button class="btn btn-danger" id-medico="${medico.id_medico}" id="eliminarMedico" ">Eliminar</button>
                                </div>
                            </div>`;
        })
        medicos_container.innerHTML += htmlMedico;

        let eliminar = document.querySelectorAll("#eliminarMedico")

        eliminar.forEach(btn=>{
            btn.addEventListener('click',(e)=>{
                let id_medico = e.target.getAttribute('id-medico')
                Swal.fire({
                    title: "Eliminando medico",
                    text: "Espere un momento",
                    icon: "info"
                });
                Swal.showLoading();
                fetch(`http://localhost:3000/eliminarMedico/${id_medico}`,{
                    method: 'DELETE',
                }).then(res => res.json())
                  .then((response) => {
                    if(response === 1){
                        Swal.fire({
                            icon: "success",
                            title: "Se elimino el medico",
                        });
                    }else{
                        Swal.fire({
                            icon: "error",
                            title: "No se pudo eliminar al medico",
                        });
                    }
                })
            })
        })
    })
fetch("http://localhost:3000/getPacientes")
    .then((res)=> res.json())
    .then((pacientes)=>{
        
        pacientes.forEach(paciente => {
            let citas      = paciente.cita
            let pendientes = citas.filter((cita)=>cita.estatus === "Pendiente")
            
            html += `<div class="row bg-secondary text-white mx-4 mt-1 p-3">
                        <div class="col-3 text-center"> ${paciente.nombre_paciente}</div>
                        <div class="col-3 text-center">${paciente.telefono}</div>
                        <div class="col-3 text-center">${paciente.direccion}</div>
                        <div class="col-3 text-center">
                            ${
                                pendientes.length === 0 
                                ? ` <button class="btn btn-success" data-bs-toggle="modal" id="crearCita" data-bs-target="#modalCrearCita${paciente.id_paciente}">Crear Cita</button>
                                    <button class="btn btn-danger"  id="eliminarPaciente" id-paciente="${paciente.id_paciente}">Eliminar paciente</button>`
                                :`<button class="btn btn-primary" data-bs-toggle="modal" id="modificarCita" data-bs-target="#modalCrearCita${paciente.id_paciente}">Modificar</button>
                                    <button class="btn btn-danger" id-cita="${pendientes[0].id_cita}" id="cancelarCita" >Cancelar</button>`
                            }
                            
                            
                        </div>
                    </div>
                    <div class=" text-dark modal fade" id-paciente="${paciente.id_paciente}" id="modalCrearCita${paciente.id_paciente}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Cita nueva</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Paciente: ${paciente.nombre_paciente}</p>
                                <span>Doctor: </span>
                                <select class="form-control" id="select_medicos">
                                </select>
                                <span>Horario: </span>
                                <input 
                                min = "2024-01-16T15:00:00"
                                max = "2024-04-16T15:00:00"
                                class="form-control"
                                type="datetime-local"
                                id="meeting-time"
                                name="meeting-time" />

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                ${
                                    pendientes.length === 0 
                                    ? `<button type="button" id="guardar" class="btn btn-primary">Crear cita</button>`
                                    : `<button type="button" id-cita="${paciente.id_paciente}" id="actualizar" class="btn btn-primary">Actualizar cita</button>`
                                }
                                
                            </div>
                            </div>
                        </div>
                    </div>
                    `
        });

        pacientes_container.innerHTML += html;

        let crear = document.querySelectorAll('#crearCita');
        crear.forEach((btn) =>{
            btn.addEventListener('click', (e) =>{
                flag_mod = false;
            });
        })
        let modificar = document.querySelectorAll('#modificarCita');
        modificar.forEach((btn) =>{
            btn.addEventListener('click', (e) =>{
                flag_mod = true;
                
            });
        })

        getMedicos();
        let guardar = document.querySelectorAll('#guardar');
        guardar.forEach(save => {
            save.addEventListener('click',(e)=>{
                let info = e.target.parentNode.parentNode.parentNode.parentNode
                let id_paciente = info.getAttribute('id-paciente');
                let id_medico = document.querySelectorAll("#select_medicos");
                let horario = document.querySelectorAll("#meeting-time");
                horario = horario[id_paciente-1].value;
                id_medico = id_medico[id_paciente-1].value;
                let objPeticion = {
                    id_medico,
                    id_paciente,
                    estatus: "Pendiente",
                    fecha: convertirFormatoFecha(horario)
                }
                Swal.fire({
                    title: "Generando la cita",
                    text: "Espere un momento",
                    icon: "question"
                });
                Swal.showLoading();
                fetch("http://localhost:3000/generarCita",{
                    method: 'POST',
                    headers: {"Content-type": "application/json"},
                    body: JSON.stringify(objPeticion)
                }).then(res => res.json())
                  .then(response => {
                        if(response.id_cita){
                            Swal.fire({
                                icon: "success",
                                title: "Se registro tu cita",
                            });
                        }
                    })
            }); 
        })

        let actualizar = document.querySelectorAll('#actualizar')
        actualizar.forEach(btn =>{
            btn.addEventListener('click', e=>{
                let id_cita = e.target.getAttribute('id-cita')
                let info = e.target.parentNode.parentNode.parentNode.parentNode
                let id_paciente = info.getAttribute('id-paciente');
                let id_medico = document.querySelectorAll("#select_medicos");
                let horario = document.querySelectorAll("#meeting-time");
                horario = horario[id_paciente-1].value;
                id_medico = id_medico[id_paciente-1].value;
                let objPeticion = {
                    id_cita,
                    id_medico,
                    id_paciente,
                    estatus: "Pendiente",
                    fecha: convertirFormatoFecha(horario)
                }
                console.log(objPeticion)
                Swal.fire({
                    title: "Generando la cita",
                    text: "Espere un momento",
                    icon: "question"
                });
                Swal.showLoading();
                fetch("http://localhost:3000/updateCita",{
                    method: 'PUT',
                    headers: {"Content-type": "application/json"},
                    body: JSON.stringify(objPeticion)
                }).then(res => res.json())
                  .then(response => {
                        if(response === 1){
                            Swal.fire({
                                icon: "success",
                                title: "Se actualizo tu cita",
                            });
                        }else{
                            Swal.fire({
                                icon: "error",
                                title: "No cambio nada en su cita",
                            });
                        }
                    })
            })
        })

        let cancelar = document.querySelectorAll("#cancelarCita");
        cancelar.forEach(btn=>{
            btn.addEventListener('click',(e)=>{
                let id_cita = e.target.getAttribute('id-cita')
                let objPeticion = {
                    id_cita,
                    estatus: "Cancelada"
                }
                Swal.fire({
                    title: "Cancelando la cita",
                    text: "Espere un momento",
                    icon: "info"
                });
                Swal.showLoading();
                fetch("http://localhost:3000/updateCita",{
                    method: 'PUT',
                    headers: {"Content-type": "application/json"},
                    body: JSON.stringify(objPeticion)
                }).then(res => res.json())
                  .then(response => {
                        if(response === 1){
                            Swal.fire({
                                icon: "success",
                                title: "Se cancelo tu cita. Se le cobrara un extra al paciente  por cancelar.",
                            });
                        }else{
                            Swal.fire({
                                icon: "error",
                                title: "No cambio nada en su cita",
                            });
                        }
                    })
            })
        })

        let eliminar = document.querySelectorAll('#eliminarPaciente')
        eliminar.forEach(btn=>{
            btn.addEventListener('click',e=>{
                let id_paciente = e.target.getAttribute('id-paciente')
                Swal.fire({
                    title: "Eliminando paciente",
                    text: "Espere un momento",
                    icon: "info"
                });
                Swal.showLoading();
                fetch(`http://localhost:3000/eliminarPaciente/${id_paciente}`,{
                    method: 'DELETE',
                }).then(res => res.json())
                  .then((response) => {
                    if(response === 1){
                        Swal.fire({
                            icon: "success",
                            title: "Se elimino el paciente",
                        });
                    }else{
                        Swal.fire({
                            icon: "error",
                            title: "No se pudo eliminar al paciente",
                        });
                    }
                })
            })
        });
    })

async function getMedicos(){
    let response = await fetch("http://localhost:3000/getMedicos")
    response = await response.json();
    
    let select_medicos = document.querySelectorAll('#select_medicos');
    select_medicos.forEach(select=>{
    
        response.forEach(medico=>{
            select.innerHTML += `<option value="${medico.id_medico}">${medico.nombre_medico}</option>`
        })
    })
    return;
}

function convertirFormatoFecha(fechaOriginal) {
    
    var fechaObjeto = new Date(fechaOriginal);
  
    
    var year = fechaObjeto.getFullYear();
    var month = ("0" + (fechaObjeto.getMonth() + 1)).slice(-2); 
    var day = ("0" + fechaObjeto.getDate()).slice(-2);
    var hours = ("0" + fechaObjeto.getHours()).slice(-2);
    var minutes = ("0" + fechaObjeto.getMinutes()).slice(-2);
  
    
    var nuevaFechaHora = year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":00";
  
    return nuevaFechaHora;
}


function crearMedico(){
    let nombre_medico = document.getElementById('nombre_medico').value;
    let correo_medico = document.getElementById('correo_medico').value;
    let telefono_medico = document.getElementById('telefono_medico').value;
    let contrasena = document.getElementById('contrasena').value;
    let id_especialidad = document.getElementById('select_especialidad').value;

    let objPeticion = {
        nombre_medico,
        correo_medico,
        telefono_medico,
        contrasena,
        id_especialidad,
    }
    Swal.fire({
        title: "Registrando Medico",
        text: "Espere un momento",
        icon: "info"
    });
    Swal.showLoading();
    fetch("http://localhost:3000/registrarMedico",{
        method: 'POST',
        headers: {"Content-type": "application/json"},
        body: JSON.stringify(objPeticion)
    }).then(res => res.json())
      .then(response => {
            if(response.id_medico){
                Swal.fire({
                    icon: "success",
                    title: "Se registro tu medico",
                });
            }else{
                Swal.fire({
                    icon: "error",
                    title: "No se registro tu medico",
                });
            }
        })
}

function crearPaciente(){
    let nombre_paciente = document.getElementById('nombre_paciente').value;
    let fecha_nac = document.getElementById('fecha_paciente').value;
    let direccion = document.getElementById('direccion_paciente').value;
    let telefono = document.getElementById('telefono_paciente').value;
    let correo = document.getElementById('correo_paciente').value;

    const objPeticion = {nombre_paciente, fecha_nac, direccion, telefono, correo}

    Swal.fire({
        title: "Registrando Paciente",
        text: "Espere un momento",
        icon: "info"
    });
    Swal.showLoading();

    fetch("http://localhost:3000/crearPaciente",{
        method: 'POST',
        headers: {"Content-type": "application/json"},
        body: JSON.stringify(objPeticion)
    }).then(res => res.json())
      .then(response => {
            if(response.id_paciente){
                Swal.fire({
                    icon: "success",
                    title: "Se registro tu paciente",
                });
            }else{
                Swal.fire({
                    icon: "error",
                    title: "No se registro tu paciente",
                });
            }
        })
}

