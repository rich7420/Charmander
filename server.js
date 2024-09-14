const express = require('express');
const app = express();

// 使用 PORT 環境變數，或默認為 8080
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
