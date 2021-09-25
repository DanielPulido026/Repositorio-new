

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

//Paula: Constraseña, debe tener minimo 6 caracteres (max 16), permite Números y letras, NO permite otros caracteres 
function validar_contrasena (password) {
    // let dato_contrasena = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{7,}$/
    let dato_contrasena = /^[0-9a-zA-Z]{6,}$/
        if(dato_contrasena.test(password)){
            return true
        } else {
            return false
        }
}

module.exports.validar_nombre_usuario = validar_nombre_usuario;
module.exports.validar_edad_usuario = validar_edad_usuario;
module.exports.validar_contrasena = validar_contrasena;

