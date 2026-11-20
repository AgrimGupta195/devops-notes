# Manual Deployment Guide – Ubuntu VM

## 1. Overview

This document explains how to manually deploy a Node.js application on an Ubuntu VM using Nginx as a reverse proxy.

**Architecture:**
- Application: Node.js / Express
- Application Port: 3000
- Web Server: Nginx
- HTTP Port: 80
- Operating System: Ubuntu Linux

## 2. Install Nginx

```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
```

## 3. Start Node.js Application

Navigate to the project directory:

```bash
cd ~/your-project
npm install
node app/server.js
```

Verify the application:

```bash
curl http://localhost:3000
```

## 4. Configure Nginx

Create the configuration:

```bash
sudo nano /etc/nginx/sites-available/myapp
```

Add:

```nginx
server {
    listen 80;
    server_name _;

    location / {
        proxy_pass http://127.0.0.1:3000;

        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

Enable the configuration:

```bash
sudo ln -s /etc/nginx/sites-available/myapp /etc/nginx/sites-enabled/myapp
sudo rm /etc/nginx/sites-enabled/default
```

Validate and reload:

```bash
sudo nginx -t
sudo systemctl reload nginx
```

## 5. Verify Deployment

```bash
curl http://localhost
```

Access the application through:

```text
http://YOUR_VM_PUBLIC_IP
```

## 6. Process and Service Monitoring

```bash
ps aux
ps aux | grep node
top
pgrep -a node

sudo systemctl status nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
```

## 7. Application and Nginx Logs

Nginx access logs:

```bash
sudo tail -f /var/log/nginx/access.log
```

Nginx error logs:

```bash
sudo tail -f /var/log/nginx/error.log
```

Systemd logs:

```bash
sudo journalctl -u nginx -n 50
```

Node.js logs:

```bash
nohup node app/server.js > app.log 2>&1 &
tail -f app.log
```

## 8. Text Processing

```bash
grep -i "error" app.log
sed 's/ERROR/WARNING/g' app.log
awk '{print $1}' app.log

ps aux | grep node | awk '{print $2}'
sudo grep '" 200 ' /var/log/nginx/access.log
```

## 9. HTTP Request Flow

When a client sends a request:

1. The browser sends an HTTP request to the VM's public IP on port 80.
2. Linux receives the network packet.
3. Nginx accepts the request.
4. Nginx reads its reverse proxy configuration.
5. The request is forwarded to Node.js at 127.0.0.1:3000.
6. Express matches the route and executes its handler.
7. Node.js generates the response.
8. Nginx forwards the response to the client.

## 10. Troubleshooting

**502 Bad Gateway**
- Check whether Node.js is running.
- Verify the application port.
- Check Nginx error logs.
- Test the backend using curl.

**Nginx not starting**
- Run `sudo nginx -t`.
- Check `sudo journalctl -u nginx -n 50`.

**Application not accessible**
- Verify port 80 is open in the VM firewall or cloud security group.
- Check the Nginx configuration.
- Verify that the backend responds locally.

## 11. Deployment Summary

Successfully configured Nginx as a reverse proxy for a Node.js application.

The application runs on port 3000 internally, while external HTTP requests are accepted through Nginx on port 80.

This deployment demonstrates Linux process management, service management, log analysis, reverse proxy configuration, and manual application deployment.
