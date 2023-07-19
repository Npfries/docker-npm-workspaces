import express from "express";

const app = express();

app.get("/", () => {
  return "Hello, World!";
});

const PORT = 3000;
app.listen({ port: PORT });
console.log(`App listening on port: ${PORT}`);
