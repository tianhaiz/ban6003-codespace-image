# BAN 6003 Codespace Image

This repository builds the preconfigured GitHub Codespaces image for BAN 6003.

Published image:

```text
ghcr.io/tianhaiz/ban6003-codespace:2026f
```

The image uses the Microsoft Dev Containers Miniconda base image, pins the conda `base` environment to Python 3.12, installs the course Python packages, and registers the notebook kernel:

```text
base(BAN6003)
```

Assignment repositories should reference this image in `.devcontainer/devcontainer.json`.
