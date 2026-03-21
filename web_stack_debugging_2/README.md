# Web Stack Debugging 2

This directory contains Bash scripts for debugging and fixing web server configuration issues, focusing on user permissions and service management.

## Files

- `0-iamsomeoneelse` - Bash script that accepts one argument (username) and runs the `whoami` command under the specified user using `sudo -u`.
- `1-run_nginx_as_nginx` - Bash script that configures Nginx to run as the `nginx` user by adjusting permissions, changing the listening port from 80 to 8080, killing Apache2, and restarting Nginx.
- `100-fix_in_7_lines_or_less` - Bash script with the same functionality as `1-run_nginx_as_nginx`, optimized to fit in 7 lines or less.

## Requirements

- Ubuntu server
- Nginx installed
- Apache2 (may be installed)
- Root or sudo privileges
- Bash shell

## Usage

### Run whoami as a specific user:

Make the script executable (if needed):

```bash
chmod +x 0-iamsomeoneelse
```

Run the script with a username argument:

```bash
sudo ./0-iamsomeoneelse ubuntu
```

This will output the username you passed as an argument (demonstrating the script runs under that user's context).

### Configure Nginx to run as nginx user:

Make the script executable (if needed):

```bash
chmod +x 1-run_nginx_as_nginx
```

Run the script with sudo:

```bash
sudo ./1-run_nginx_as_nginx
```

Or use the optimized version:

```bash
sudo ./100-fix_in_7_lines_or_less
```

## Verification

Check that Nginx is running:

```bash
sudo service nginx status
```

Verify the Nginx process is running as the `nginx` user:

```bash
ps aux | grep nginx
```

Expected output should show Nginx processes running under the `nginx` user.

Verify that Nginx is listening on port 8080:

```bash
sudo netstat -tuln | grep :8080
```

Or with newer systems:

```bash
sudo ss -tuln | grep :8080
```
