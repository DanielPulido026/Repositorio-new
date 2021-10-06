//Objeto para exportacion
const math ={};

// Suma
function add (x1, x2){
    return x1 + x2;
}

// Resta
function substract(x1, x2){
    return x1 - x2;
    
}

// Multiplicacion
function multiply(x1, x2){
    return x1 * x2;

}

// Division
function divide(x1, x2){
    if (x2 == 0){
        console.log("No se puede dividir por 0");
    }else{
        return x1 / x2;
    }

}

function hello(name){
    console.log("Hola", name)
}



/* // Exportacion de archivos por node.js - individuales
exports.add = add;
exports.substract = substract;
exports.multiply = multiply;
exports.divide = divide;
*/


//Expotacion por modulo
math.add = add;
math.substract = substract;
math.multiply = multiply;
math.divide = divide;

module.exports = math;

/* Exportacion por Funcion
module.exports = hello;
*/