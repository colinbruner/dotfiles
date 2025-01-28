# Notes
The following captures notes for post-installation tasks for select technologies.

## Podman

Post installation, refer to https://podman.io/docs/installation.

```bash
$ podman machine init
$ podman machine start

Starting machine "podman-machine-default"

This machine is currently configured in rootless mode. If your containers
require root permissions (e.g. ports < 1024), or if you run into compatibility
issues with non-podman clients, you can switch using the following command:

        podman machine set --rootful

API forwarding listening on: /var/folders/7b/f9yh3wzs2nb20tm_0zlnmp5h0000gn/T/podman/podman-machine-default-api.sock

The system helper service is not installed; the default Docker API socket
address can't be used by podman. If you would like to install it, run the following commands:

        sudo /opt/homebrew/Cellar/podman/5.3.2_1/bin/podman-mac-helper install
        podman machine stop; podman machine start

You can still connect Docker API clients by setting DOCKER_HOST using the
following command in your terminal session:

        export DOCKER_HOST='unix:///var/folders/7b/f9yh3wzs2nb20tm_0zlnmp5h0000gn/T/podman/podman-machine-default-api.sock'

Machine "podman-machine-default" started successfully
```



