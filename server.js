const express = require('express');
const app = express();

// 使用 PORT 環境變數，或默認為 8080
const PORT = process.env.PORT || 8080;

app.listen(port, () => {
    console.log('Hello world listening on port', port);
  });  
