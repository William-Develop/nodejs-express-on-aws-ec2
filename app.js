const express = require("express");
const app = express();
const port = 3000;

app.get("/",(req, res) => {
    res.send("Hello CI / CD Demo - Version 1.0 - Message: ✨Success✨!");
});

app.listen(port, () => {
    console.log("server listening on port 3000")
})
