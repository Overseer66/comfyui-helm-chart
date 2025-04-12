# ComfyUI Helm Chart

A Helm chart for deploying **ComfyUI** and **code-server** on Kubernetes.

## Features

- Deploys ComfyUI and code-server in a single chart
- Uses the official Docker image from [YanWenKun/ComfyUI-Docker](https://github.com/YanWenKun/ComfyUI-Docker)
- Integrated code-server support
- Configurable password protection for code-server
- Support for additional Kubernetes objects via `extraObjects`

## Prerequisites

- Kubernetes cluster
- Helm 3.x
- Ingress controller (for external access)

## Quick Start

### 1. Add Helm Repository

```bash
helm repo add comfyui https://overseer66.github.io/comfyui-helm-chart
helm repo update
```

### 2. Install Chart

```bash
# Download chart
helm fetch comfyui/comfyui --untar

# Install/Upgrade
helm upgrade -i --create-namespace -n <namespace> comfyui .
```

### 3. Access Services

#### ComfyUI
```
https://<your-domain>/
```

#### code-server
```
https://<your-domain>/code/
```
> **Note:** Always include the trailing slash when accessing code-server.

## Configuration

### Ports
- ComfyUI: `8188`
- code-server: `8080`

### Security
- code-server password can be set via `PASSWORD` environment variable in `values.yaml`
- Default password: `1q2w3e4r`
- Recommended to use Ingress authentication proxy for production

## Uninstallation

```bash
helm uninstall comfyui -n <namespace>
```

## Tags

- `simple`: ComfyUI only
- `code-server`: Integrated code-server access

## Docker Image

**Image:** [`overseer66/comfyui`](https://hub.docker.com/r/overseer66/comfyui)
