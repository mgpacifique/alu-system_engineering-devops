# Load Balancer

This directory contains scripts for configuring load balancers and web servers for high availability.

## Files

- `0-custom_http_response_header` - Bash script that configures Nginx with a custom HTTP response header (X-Served-By) to track which web server is handling requests.

## Requirements

- Ubuntu server
- Nginx web server
- Bash shell

## Usage

To configure a web server with the custom header:

```bash
sudo ./0-custom_http_response_header
```

After running the script, you can verify the custom header is working:

```bash
curl -sI <server_ip> | grep X-Served-By
```

This should display something like:
```
X-Served-By: web-01
```
