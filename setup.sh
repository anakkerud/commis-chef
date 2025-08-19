#!/bin/bash

# Terminate script if the system is not Unix-based
if [[ "$OSTYPE" != "linux-gnu"* && "$OSTYPE" != "darwin"* ]]; then
  echo "This script can only be run on Unix-based systems."
  exit 1
fi

echo "System is Unix-based. Proceeding with the script..."