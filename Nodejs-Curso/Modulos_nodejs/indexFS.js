// Modulos internos de node.js - Archivos del sistema operativo
const fs = require('fs');


// Crear Archivos
fs.writeFile('./texto.txt', 'linea uno', function(err){
    if (err) {
        console.log(err);
    }
    console.log('Archivo Creado');
});

console.log('Ultima linea de codigo');

// Leer Archivos

fs.readFile('./texto.txt', function(err, data){
    if(err){
        console.log(err)
;    }
    //console.log(data); // Tipo de dato Buffer
    console.log(data.toString()); // Leer en letras
})
