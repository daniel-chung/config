#!/usr/bin/env zsh

# -----------------------------------------------------------------------------
# Alacritty
# -----------------------------------------------------------------------------
setup_alacritty () {
	ln -s ~/.config/alacritty/.alacritty.toml ~/.alacritty.toml
}

# -----------------------------------------------------------------------------
# Prezto
# 	https://github.com/sorin-ionescu/prezto
# -----------------------------------------------------------------------------
setup_prezto () {
	# Regular setup (with updated path)
	setopt EXTENDED_GLOB
	for rcfile in "${ZDOTDIR:-$HOME}"/.config/prezto/runcoms/^README.md(.N); do
		ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
	done

	# Symlink main folder (Used if not updating the .zshrc file directly
	# to source the init.zsh files)
	# ln -s "${ZDOTDIR:-$HOME}/.zprezto" "${ZDOTDIR:-$HOME}"/.config/zsh/.zprezto
}

# -----------------------------------------------------------------------------
# Setup
# -----------------------------------------------------------------------------
#setup_alacritty
setup_prezto
