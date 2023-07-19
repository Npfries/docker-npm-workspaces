import fastify from "fastify";

const app = fastify();

app.get("/", () => {
  return "Hello, World!";
});

const PORT = 3000;
app.listen({ port: PORT });
console.log(`App listening on port: ${PORT}`);
