#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/GuestHouse Templates/Viewable.xctemplate'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy RIBs file templates into the local RIBs template directory
xcodeTemplate () {
  echo "==> Copying GuestHouse Viewable Xcode Template..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -r Viewable.xctemplate ~/Library/Developer/Xcode/Templates/GuestHouse\ Templates/

}

xcodeTemplate

echo "==> ... success👍"
