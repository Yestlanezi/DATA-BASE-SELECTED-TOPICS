let login_form = document.getElementById('login_form');

login_form.addEventListener('submit', async (e) =>{
    e.preventDefault();
    
    let endpoint = "http://localhost:3000/login"
    let data = new FormData(login_form);
    let obj = {}

    for (var key of data.keys()) {
		obj[key] = data.get(key);
	}

    Swal.fire({
        title: "Buscando registro",
        text: "Espere un momento",
        icon: "question"
    });
    Swal.showLoading();

    if(obj.tipo_empleado === "2"){
        endpoint = "http://localhost:3000/loginRecepcionista"
    }
    
    let response = await fetch(endpoint,{
        method: 'POST',
        headers: {"Content-type": "application/json"},
        body: JSON.stringify(obj)
    });

    response = await response.json();
    console.log(response);
    if(response.response === false){
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: response.error,
        });
        return;
    }

    
    sessionStorage.setItem("nombre_medico",response.nombre_medico)
    sessionStorage.setItem("id_medico",response.id_medico)

    if(response.tipo_empleado === 2){
        location.href = "hub.html"
    }else{
        location.href = "doctor.html";
    }
    

})