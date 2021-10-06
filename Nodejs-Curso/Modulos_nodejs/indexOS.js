// Modulos internos de node.js
const os = require('os');

// Metodos del modulo os
console.log(os.platform());
console.log(os.release());
console.log('Memoria libre: ', os.freemem());

console.log('Memoria total: ', os.totalmem());