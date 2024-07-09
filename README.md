# Checking compatibility for locales

The goal is to understand how different ways to compile python code matches different runtime environments for the scope of using OS-level locale in the code.

# Steps

Docker is user to build and test.

Can be testing under devcontainer or CodeSpace (using Docker-in-Docker)

To build image `frozen` using `Dockerfile.frozen`:

```shell
scripts/build.sh frozen
```

To check built image `frozen` for `ru_RU.UTF-8` locale:

```shell
scripts/check.sh ru_RU.UTF-8 frozen
```

All builds followed by all checks:
```shell
scripts/all.sh
```

# Results

| Image | Result | Description |
|-------|--------|-----|
| python_src | Ok | Build image with pythin, code as source |
| python_src_alpine | Ok | Build image with python Alpine, code as source |
| frozen | Ok | PyInstaller to pack python with dylibs |
| frozen_static | Ok | PyInstaller to pack python as static with staticx |
| frozen_static_alpine | Ok (Errors on build?) | PyInstaller to pack python as static with staticx on Alpine |
| frozen_static_alpine_on_ubuntu | `en` result | PyInstaller to pack python as static with staticx on Alpine, but distribute/test on Ubuntu |
| frozen_static_debian_on_alpine | Exception | PyInstaller to pack python as static with staticx on python (Debian), but distribute/test on Alpine |
