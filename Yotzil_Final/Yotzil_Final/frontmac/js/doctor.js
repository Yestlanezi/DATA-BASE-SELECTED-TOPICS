async function getCitas() {
    let citas_container = document.getElementById('citas_container');
    let htmlcitas = ""
    let medico = ""
    let id_medico = sessionStorage.getItem('id_medico');
    let citas = await fetch(`http://localhost:3000/getCitas/${id_medico}`);
    citas = await citas.json()
    medico = citas;
    citas= citas.cita;
    citas.forEach(cita => {
        htmlcitas +=`<div class="row bg-secondary text-white mx-4 mt-1 p-3">
                        <div class="col-2 text-center"> ${cita.id_paciente_paciente.nombre_paciente}</div>
                        <div class="col-2 text-center">${cita.id_paciente_paciente.telefono}</div>
                        <div class="col-2 text-center">${cita.estatus}</div>
                        <div class="col-3 text-center">${cita.fecha}</div>
                        <div class="col-3 text-center">
                            <button class="btn btn-success" data-bs-toggle="modal" id="crearReceta" data-bs-target="#crearReceta${cita.id_paciente_paciente.id_paciente}">Crear Receta</button>
                            <button class="btn btn-primary" data-bs-toggle="modal" id="crearReceta" data-bs-target="#crearServicio${cita.id_paciente_paciente.id_paciente}">Agregar servicio</button>
                        </div>
                    </div>
                    
                    <div class=" text-dark modal fade" id-paciente="${cita.id_paciente_paciente.id_paciente}" id="crearReceta${cita.id_paciente_paciente.id_paciente}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Receta nueva</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Paciente: ${cita.id_paciente_paciente.nombre_paciente}</p>
                                <p>Doctor: ${medico.nombre_medico} </p>
                                <span>Diagnostico</span>
                                <textarea class="form-control" id="diagnostico${cita.id_cita}"></textarea>
                                <span>Medicamento</span>
                                <select class="select_medicamento form-control" id="medicamento${cita.id_cita}">
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button> 
                                <button type="button" id_cita= "${cita.id_cita}" class="btn btn-primary" id="guardarReceta">Crear receta</button> 
                                                            
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class=" text-dark modal fade" id-paciente="${cita.id_paciente_paciente.id_paciente}" id="crearServicio${cita.id_paciente_paciente.id_paciente}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Servicio Nuevo</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Paciente: ${cita.id_paciente_paciente.nombre_paciente}</p>
                                <p>Doctor: ${medico.nombre_medico} </p>
                                <span>Servicio</span>
                                <input type="text" class="form-control" id="servicio${cita.id_cita}"></textarea>
                                <span>Precio servicio</span>
                                <input type=text class="form-control" id="precioServicio${cita.id_cita}">
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button> 
                                <button type="button" id_cita="${cita.id_cita}" class="btn btn-primary" id="guardarServicio">Crear Servicio</button> 
                                                            
                            </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    `
    });

    citas_container.innerHTML += htmlcitas;

    let guardarReceta = document.querySelectorAll('#guardarReceta');
    let guardarServicio = document.querySelectorAll('#guardarServicio');

    guardarServicio.forEach(btn=>{
        btn.addEventListener('click', e=>{
            let id_cita = e.target.getAttribute('id_cita')
            console.log(id_cita)
            let nombre_servicio = document.getElementById(`servicio${id_cita}`).value
            let costo_servicio= document.getElementById(`precioServicio${id_cita}`).value
        
            let objPeticion = {
                id_cita,
                nombre_servicio,
                costo_servicio,
            }
            Swal.fire({
                title: "Generando el servicio",
                text: "Espere un momento",
                icon: "info"
            });
            Swal.showLoading();
            fetch("http://localhost:3000/crearServicio",{
                method: 'POST',
                headers: {"Content-type": "application/json"},
                body: JSON.stringify(objPeticion)
            }).then(res => res.json())
              .then(response => {
                    if(response.id_servicio){
                        Swal.fire({
                            icon: "success",
                            title: "Se creo tu servicio",
                        });
                    }else{
                        Swal.fire({
                            icon: "error",
                            title: "No se creo tu servicio",
                        });
                    }
                })
        })
    })

    guardarReceta.forEach(btn=>{
        btn.addEventListener('click', e=>{
            let id_cita = e.target.getAttribute('id_cita')
            let diagnostico = document.getElementById(`diagnostico${id_cita}`).value
            let id_medicamento= document.getElementById(`medicamento${id_cita}`).value
            let med_prescrito = document.getElementById(`medicamento${id_cita}`)
            med_prescrito = med_prescrito.options[med_prescrito.selectedIndex].text
            let objPeticion = {
                id_cita,
                id_medicamento,
                diagnostico,
                med_prescrito
            }
            Swal.fire({
                title: "Generando la receta",
                text: "Espere un momento",
                icon: "info"
            });
            Swal.showLoading();
            fetch("http://localhost:3000/crearReceta",{
                method: 'POST',
                headers: {"Content-type": "application/json"},
                body: JSON.stringify(objPeticion)
            }).then(res => res.json())
              .then(response => {
                    if(response.id_receta){
                        Swal.fire({
                            icon: "success",
                            title: "Se creo tu receta",
                        });
                    }else{
                        Swal.fire({
                            icon: "error",
                            title: "No se creo tu receta ",
                        });
                    }
                })
        })
    })
}

async function getMedicamentos(){
    let medicamentos = await fetch(`http://localhost:3000/getMedicamentos`);
    medicamentos = await medicamentos.json()
    let selects = document.querySelectorAll('.select_medicamento')
    let htmlselects = ""
    selects.forEach(select => {
        medicamentos.forEach(medicamento => {
            htmlselects += `<option value="${medicamento.id_medicamento}">${medicamento.nombre_medicamento}</option>`
        });

        select.innerHTML += htmlselects;
        htmlselects = ""
    })
}

async function getRecetas(){
    let id_medico = sessionStorage.getItem('id_medico');
    let recetas = await fetch(`http://localhost:3000/getRecetas/${id_medico}`);
    recetas = await recetas.json()
    let recetashtml = ''
    let recetas_container = document.querySelector('.recetas-container')
    recetas.forEach(receta => {

        recetashtml += `<div class="row bg-light w-50 text-dark rounded-3 m-4 p-3">
                            <div class="col-3 text-center mb-2">No.Receta:</div>
                            <div class="col-3 text-center">Fecha:</div>
                            <div class="col-3 text-center">Paciente:</div>
                            <div class="col-3 text-center">Medico:</div>
                            <div class="col-3 text-center">${receta.id_receta}</div>
                            <div class="col-3 text-center">${receta.id_cita_citum.fecha}</div>
                            <div class="col-3 text-center">${receta.id_cita_citum.id_paciente_paciente.nombre_paciente}</div>
                            <div class="col-3 text-center">${receta.id_cita_citum.id_medico_medico.nombre_medico}</div>
                            <div class="col-12 text-center"><hr></div>
                            <div class="col-6 text-center mb-2">Diagnostico:</div>
                            <div class="col-6 text-center">Medicamento:</div>
                            <div class="col-6 text-center">${receta.diagnostico}</div>
                            <div class="col-6 text-center">${receta.med_prescrito}</div>
                        </div>`
    })

    recetas_container.innerHTML += recetashtml
}

getCitas();
getMedicamentos();
getRecetas();