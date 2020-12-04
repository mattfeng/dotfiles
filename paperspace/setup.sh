#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

bash nvm install 14.15.1
bash jupyter labextension install @mohirio/jupyterlab-horizon-theme
bash jupyter labextension install jupyterlab_vim

