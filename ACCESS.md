# Access `brainxrcs.html` from another device

This document explains how to serve and access `brainxrcs.html` from other devices on your local network.

## Start the server

From the project root, run:

```bash
bash ./serve.sh 8000
```

This starts a static server bound to 0.0.0.0 on port 8000 (accessible from other devices if the host allows it).

## Find your host IP

Run one of these to get the host's LAN IP:

```bash
hostname -I | awk '{print $1}'
# or
ip route get 1.1.1.1 | awk '{print $7; exit}'
```

## Open from another device

In the other device's browser, go to:

```
http://<HOST_IP>:8000/brainxrcs.html
```

Notes:
- If you're working inside a devcontainer or remote environment, forward port 8000 so the host is reachable (VS Code's "Forwarded Ports" or cloud port settings).
- Make sure your firewall allows inbound connections to the chosen port.
- If you want HTTPS or a more permanent server, I can add a small Node/Express server with self-signed certs or set up a simple reverse proxy.

## Public web hosting (GitHub Pages)

You can publish `brainxrcs.html` publicly with GitHub Pages. I added a GitHub Actions workflow that automatically deploys the repository contents to the `gh-pages` branch on every push to `main`.

- After the workflow finishes, your file will be available at:

```
https://glog007.github.io/utils/brainxrcs.html
```

- It may take a minute for the site to appear the first time. The Pages URL provides HTTPS by default.

If you'd prefer Netlify/Vercel or an ephemeral tunnel (ngrok), tell me which and I'll add it instead.
