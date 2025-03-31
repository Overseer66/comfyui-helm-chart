# ComfyUI Helm Chart

This repository contains a simple Helm chart for deploying **ComfyUI** and **code-server**.

## Docker Image

This chart uses the Docker image based on [YanWenKun/ComfyUI-Docker](https://github.com/YanWenKun/ComfyUI-Docker).

Additionally, it now supports an integrated image with **code-server**:

**Image:** [`overseer66/comfyui`](https://hub.docker.com/r/overseer66/comfyui)

## Overview

- **ComfyUI Port:** `8188`
- **code-server Port:** `8080`
- To enable password authentication for code-server, set the `PASSWORD` environment variable in `values.yaml`.

## Notes

- Additional Kubernetes objects can be injected via `extraObjects` in `values.yaml`.
- code-server is included in the default image and accessible via `/code` path.
- You can set a password for code-server via the `PASSWORD` environment variable in `values.yaml` (default is no password).

## Access

### ComfyUI

```
https://<your-domain>/
```

### code-server

```
https://<your-domain>/code/
```
By default, code-server is running with the password `1q2w3e4r`. It is recommended to use an Ingress authentication proxy or change the password via the environment variable for enhanced security.

## Installation

### Add Helm Repository

```bash
helm repo add comfyui https://overseer66.github.io/comfyui-chart
helm repo update
```

### Download

```bash
helm fetch comfyui/comfyui --untar
```

### Upgrade/Install

```bash
# /<PWD>/chart
helm upgrade -i --create-namespace -n <namespace> comfyui .
```

### Uninstall

```bash
helm uninstall comfyui -n <namespace>
```

## Tags

- simple: only comfyui chart
- code-server: integrated code-server access
