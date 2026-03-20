# Web Stack Debugging 1

This directory contains a script for fixing a web server issue by ensuring Nginx is running and listening on port 80.

## Files

- `0-nginx_likes_port_80` - Bash script that starts the Nginx service to listen on port 80.

## Requirements

- Ubuntu server
- Nginx installed
- Root or sudo privileges
- Bash shell

## Usage

Make the script executable (if needed):

```bash
chmod +x 0-nginx_likes_port_80
```

Run the script with sudo:

```bash
sudo ./0-nginx_likes_port_80
```

## Verification

Check that Nginx is running:

```bash
sudo service nginx status
```

Verify that Nginx is listening on port 80:

```bash
sudo netstat -tuln | grep :80
```

Or with newer systems:

```bash
sudo ss -tuln | grep :80
```

Expected output should show Nginx listening on `0.0.0.0:80` or equivalent.
