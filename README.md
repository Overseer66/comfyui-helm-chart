# ComfyUI Helm Chart

This repository contains a simple Helm chart for deploying **ComfyUI**

## Docker Image

This chart uses the Docker image based on [YanWenKun/ComfyUI-Docker](https://github.com/YanWenKun/ComfyUI-Docker).

## Notes

- Additional Kubernetes objects can be injected via `extraObjects` in `values.yaml`.

## Installation

### Add Helm Repository

```bash
helm repo add comfyui https://overseer66.github.io/comfyui-chart
helm repo update
```

### Download

```bash
helm fetch chart/comfyui --untar
```

### Upgrade/Install

```bash
# /<PWD>/chart
helm upgrade -i --create-namespace -n <namespace> comfyui .
```

## Tags

- simple: only comfyui chart
