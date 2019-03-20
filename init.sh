#!/bin/sh

package=$(basename $(ls bin) .sh)

mkdir lib
mkdir lib/${package}
touch lib/${package}/main.sh
