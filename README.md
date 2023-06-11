# Setup

start devcontainer.

```bash
❯ devcontainer up --workspace-folder .

...

Container started
{"outcome":"success","containerId":"e12c6094c2659ad45cdc247276e487fe9a06b25c178ee5167b1127b3fc907d62","remoteUser":"non-root","remoteWorkspaceFolder":"/workspaces/sample"}
```

Install neovim

```bash
❯ docker exec -u root -it e12  bash

root@e12c6094c265:/# git clone https://github.com/ChappieM/dfv.git
Cloning into 'dfv'...
remote: Enumerating objects: 19, done.
remote: Counting objects: 100% (19/19), done.
remote: Compressing objects: 100% (11/11), done.
Receiving objects: 100% (19/19), done.
remote: Total 19 (delta 2), reused 18 (delta 1), pack-reused 0
Resolving deltas: 100% (2/2), done.
```

```bash
./dfv/scripts/setup.sh
```

Clone my neovim setup

```bash
❯ docker exec -it e12 bash

./scripts/clone_my_settings.sh
```

Install neovim plugin.

```bash
:PackerInstall
```

Start neovim server

```bash
devcontainer exec --workspace-folder . nvim --headless --listen 0.0.0.0:6666
```

Connect neovim Server
```bash
nvim --server localhost:6666 --remote-ui
```
