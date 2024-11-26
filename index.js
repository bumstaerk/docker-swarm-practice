const express = require("express");
const app = express();
const port = process.env.PORT || 3000;
const instance = process.env.INSTANCE || "DEFAULT";

app.get("/", (req, res) => {
  res.send("Hello " + instance);
});

app.listen(port, () => {
  console.log(`Port: ${port}`);
});
