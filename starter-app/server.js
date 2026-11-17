
const express = require("express");

const app = express();
const PORT = 3001;

app.get("/", (req, res) => {
    res.send(`
        <!DOCTYPE html>
        <html>
        <head>
            <title>My DevOps Journey</title>
            <style>
                body {
                    background: #111827;
                    color: white;
                    font-family: Arial;
                    text-align: center;
                    padding: 80px 20px;
                }
                h1 {
                    color: #34d399;
                }
                .container {
                    background: #1f2937;
                    padding: 35px;
                    border-radius: 15px;
                    max-width: 600px;
                    margin: auto;
                }
            </style>
        </head>
        <body>
            <div class="container">
                <h1>Welcome to My DevOps Journey!</h1>
                <p>Learning DevOps through practical projects.</p>
                <h2>My Learning Roadmap</h2>
                <p>Linux | Git | Docker | CI/CD | AWS | Kubernetes</p>
                <h3>Day 2: Linux + Node.js</h3>
            </div>
        </body>
        </html>
    `);
});

app.get("/health", (req, res) => {
    res.json({
        status: "OK",
        message: "Server is running",
        uptime: process.uptime()
    });
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
