# Web Stack Debugging 4

This directory contains Puppet manifests that fix web stack bottlenecks related to Nginx worker limits and OS file descriptor limits.

## Files

- `0-the_sky_is_the_limit_not.pp` - Puppet manifest that updates worker limits in `/etc/default/nginx` and restarts Nginx.
- `1-user_limit.pp` - Puppet manifest that increases `nofile` hard/soft limits for the `holberton` user in `/etc/security/limits.conf`.

## Problem Context

The server experiences failures during high traffic because Nginx is configured with a very low worker process limit.

`0-the_sky_is_the_limit_not.pp` fixes the issue by replacing:

- `15` with `4096` in `/etc/default/nginx`

After the replacement, Nginx is restarted to apply the change.

`1-user_limit.pp` fixes low user file descriptor limits by replacing:

- `holberton hard nofile 5` with `holberton hard nofile 50000`
- `holberton soft nofile 4` with `holberton soft nofile 50000`

## Requirements

- Ubuntu server
- Nginx installed
- Puppet installed
- Root or sudo privileges

## Usage

Apply the Nginx worker limit fix:

```bash
sudo puppet apply 0-the_sky_is_the_limit_not.pp
```

Apply the user file limit fix:

```bash
sudo puppet apply 1-user_limit.pp
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

Check that user limits were updated:

```bash
grep -n "holberton .* nofile 50000" /etc/security/limits.conf
```
