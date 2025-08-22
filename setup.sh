#!/bin/bash

# Terminate script if the system is not Unix-based
if [[ "$OSTYPE" != "linux-gnu"* && "$OSTYPE" != "darwin"* ]]; then
  echo "This script can only be run on Unix-based systems."
  exit 1
fi

# Install uv
echo -e "Installing uv ..."
if curl -LsSf https://astral.sh/uv/install.sh | sh > /dev/null 2>&1; then
  echo -e "\033[0;32m+ uv installed\033[0m"
else
  echo -e "\033[0;31mFailed to install uv\033[0m"
  exit 1
fi

# Relaunch shell to apply changes
echo -e "Relaunching shell to apply changes ..."
exec $SHELL
