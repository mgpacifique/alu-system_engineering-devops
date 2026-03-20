# Web Stack Debugging 0

This directory contains a script for fixing a basic web server issue by starting Apache and serving a simple page.

## Files

- `0-give_me_a_page` - Starts the Apache service and creates `/var/www/html/index.html` with the text `Hello Holberton`.

## Requirements

- Ubuntu server
- Apache2 installed
- Root or sudo privileges
- Bash shell

## Usage

Make the script executable (if needed):

```bash
chmod +x 0-give_me_a_page
```

Run the script with sudo:

```bash
sudo ./0-give_me_a_page
```

## Verification

Check that Apache is running:

```bash
sudo service apache2 status
```

Verify the page content:

```bash
curl -s localhost
```

Expected output:

```text
Hello Holberton
```
