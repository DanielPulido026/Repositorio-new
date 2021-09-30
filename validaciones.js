

function validar_nombre_usuario(nombre) {
    let validado = nombre.trim().split(' ').map((element) => {
        return element[0].toUpperCase() + element.slice(1)
    }).join(' ')
    return nombre === validado ? true : false
}

function validar_edad_usuario(edad) {
    let number = Number(edad)
    return number >= 13 && number < 110 ? true : false
}

function validar_contrasena (password) {    
    let dato_contrasena = /^[0-9a-zA-Z]{6,}$/
        if(dato_contrasena.test(password)){
            //alert ("Inicio de sesión")
            return true            
        } else {
            alert ("Error")
            return false
        }
}

let registros = [];

function agregarRegistro() {
    console.log("Entro y guarda")
    let persona = {
        "nombre": '', 
        "edad": '',
        "contrasena": ''
    }
    persona.nombre = document.getElementById("dato_nombre_usuario").value;
    persona.edad = document.getElementById("dato_edad_usuario").value;
    persona.contrasena = document.getElementById("dato_contrasena").value;
    registros.push(persona)
    console.log(registros)
}
ordenarArreglo(registros)
/*
+ Parametro que represente el arreglo de registros a ordenar
+ Ordenar arreglo registro de menor a mayor por el campo "EDAD"
+ Imprimir en consola el arreglo ordenado y retornarlo

*/
function ordenarArreglo(registros) {
    registros.sort((a, b) => a.edad - b.edad)
    console.log(registros)
    return(registros)
}

module.exports.registros = registros;
module.exports.ordenarArreglo = ordenarArreglo;
module.exports.agregarRegistro = agregarRegistro;
module.exports.validar_nombre_usuario = validar_nombre_usuario;
module.exports.validar_edad_usuario = validar_edad_usuario;
module.exports.validar_contrasena = validar_contrasena;

