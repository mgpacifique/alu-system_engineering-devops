# Web Stack Debugging 4

This directory contains a Puppet manifest that fixes an Nginx configuration bottleneck to improve request handling under load.

## Files

- `0-the_sky_is_the_limit_not.pp` - Puppet manifest that updates the worker process limits in `/etc/default/nginx` and restarts Nginx.

## Problem Context

The server experiences failures during high traffic because Nginx is configured with a very low worker process limit.

This manifest fixes the issue by replacing:

- `15` with `4096` in `/etc/default/nginx`

After the replacement, Nginx is restarted to apply the change.

## Requirements

- Ubuntu server
- Nginx installed
- Puppet installed
- Root or sudo privileges

## Usage

Apply the Puppet manifest:

```bash
sudo puppet apply 0-the_sky_is_the_limit_not.pp
```

## Verification

Check that the worker process limit was updated:

```bash
grep -n "4096" /etc/default/nginx
```

Check that Nginx is running after the restart:

```bash
sudo service nginx status
```
