# Web Stack Debugging 3

This directory contains a Puppet manifest used to fix a WordPress file typo that causes PHP execution issues.

## Files

- `0-strace_is_your_friend.pp` - Puppet manifest that replaces `phpp` with `php` in `/var/www/html/wp-settings.php`.

## Problem Context

The web server returns errors because of a typo in the WordPress settings file:

- Wrong string: `phpp`
- Correct string: `php`

This manifest automates the fix with a `sed` replacement.

## Requirements

- Ubuntu server
- Puppet installed
- Root or sudo privileges
- WordPress file present at `/var/www/html/wp-settings.php`

## Usage

Apply the Puppet manifest:

```bash
sudo puppet apply 0-strace_is_your_friend.pp
```

## Verification

Check the file no longer contains `phpp`:

```bash
grep -n "phpp" /var/www/html/wp-settings.php
```

Expected result: no output.

Confirm `php` entries exist where expected:

```bash
grep -n "php" /var/www/html/wp-settings.php
```
