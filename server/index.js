
const express = require('express');

// 127.0.0.1
const PORT = 3000;

const app = express();



app.listen(PORT, "0.0.0.0", () => {
    console.log('### Connect at port ' + PORT);
    console.log(`### Connect at port ${PORT}`);

});

