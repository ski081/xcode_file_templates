#!/bin/bash
HOME_DIR=$HOME
TEMPLATE_LOCATION="$HOME_DIR/Library/Developer/Xcode/Templates/File Templates/"

echo "Checking for file template location:"
echo $TEMPLATE_LOCATION

if [ ! -d "$TEMPLATE_LOCATION" ]; then
    echo "template location does not exist, creating it..."
    mkdir -p "$TEMPLATE_LOCATION"
fi

cp -r ./Barclays/ "$TEMPLATE_LOCATION/Barclays"
echo "Template installed to $TEMPLATE_LOCATION." 
echo "Please quit Xcode and reopen it to view the new Barclays template group"