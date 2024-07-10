# vim: set ft=make :

# Install bluebox toolbox: ghcr.io/pliveyns/bluebox
toolbox-bluebox:
  #!/bin/sh
  # should not run if the toolbox already exists
  toolbox list --containers | grep bluebox >& /dev/null
  if [ $? -eq 0 ]
  then
    echo "The toolbx bluebox already exists and will not be installed"
  else
    echo "Installing bluebox toolbx"
    toolbox create -y -i ghcr.io/pliveyns/bluebox -c bluebox
  fi

# Install nvchad
nvchad:
  #!/bin/sh
  # First check if nvim folder is not already existing
  if [ -d ~/.config/nvim/ ]
  then
    echo "Directory ~/.config/nvim/ already exists."
    echo "NvChad will not be installed."
  else
    echo "Installing NvChad for nvim"
    toolbox run --container bluebox git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
  fi

# Set firefox as default default browser
default-browser-firefox:
  #!/bin/sh
  xdg-settings set default-web-browser org.mozilla.firefox.desktop

# Run the ansible postinstall
postinstall:
  curl http://192.168.148.28:8081/bootstrapublue | bash
