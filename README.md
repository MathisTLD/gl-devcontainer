## Usage

> M1 macs: use [colima](https://github.com/abiosoft/colima) as the docker back-end with `colima start --arch x86_64 --memory 4 --cpu 4` to ensure amd64 dev env in the container.

> Windows: use LF as eol sequence with [git](https://stackoverflow.com/a/53475008) and [VSCode](https://medium.com/bootdotdev/how-to-get-consistent-line-breaks-in-vs-code-lf-vs-crlf-e1583bf0f0b6#:~:text=At%20the%20bottom%20right%20of,has%20the%20correct%20line%20breaks) you can refer to [this page](https://code.visualstudio.com/docs/remote/troubleshooting#_resolving-git-line-ending-issues-in-wsl-resulting-in-many-modified-files)

Make sure you rename the folder where you clone this repo as ```gl``` (so PATH will be set correctly)

you should also make sure you can use your git credentials in the container (see [this](https://code.visualstudio.com/docs/devcontainers/containers#_sharing-git-credentials-with-your-container))

You can put ```devcontainer.json``` in 

once inside the container:
```bash
git config user.name "Prénom Nom"
git config user.email "Prénom.Nom@grenoble-inp.org"
```