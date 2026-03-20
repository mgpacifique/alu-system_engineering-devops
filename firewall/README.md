# Firewall

This directory contains firewall configuration scripts for securing the server using UFW (Uncomplicated Firewall).

## Files

- `0-block_all_incoming_traffic_but` - Configures UFW to block all incoming traffic by default while allowing only:
  - SSH (`22/tcp`)
  - HTTP (`80/tcp`)
  - HTTPS (`443/tcp`)

## What the script does

The script applies the following rules:

1. Deny all incoming traffic by default.
2. Allow all outgoing traffic by default.
3. Allow SSH traffic on port 22.
4. Allow HTTP traffic on port 80.
5. Allow HTTPS traffic on port 443.
6. Enable the firewall.

## Requirements

- Ubuntu server
- `ufw` installed
- Root or sudo privileges

## Usage

Make the script executable (if needed):

```bash
chmod +x 0-block_all_incoming_traffic_but
```

Run the script with sudo:

```bash
sudo ./0-block_all_incoming_traffic_but
```

## Verification

Check UFW status and active rules:

```bash
sudo ufw status verbose
```

Expected result:

- Default incoming policy: `deny`
- Default outgoing policy: `allow`
- Allowed ports: `22/tcp`, `80/tcp`, `443/tcp`
