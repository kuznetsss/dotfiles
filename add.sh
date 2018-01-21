#!/bin/bash
for p in $@
do
	RELATIVE_TO_HOME_PATH="$(realpath --relative-to=$HOME  --relative-to=$HOME $p)"
	NAME=$(basename $p)
	mkdir --parents "./$(dirname $RELATIVE_TO_HOME_PATH)"
	mv "$p" "./$RELATIVE_TO_HOME_PATH"
	echo "$p moved to ./$RELATIVE_TO_HOME_PATH"
	echo "Created symlink $(ln -sv "$HOME/.dotfiles-git/$RELATIVE_TO_HOME_PATH" "$p")"
done
