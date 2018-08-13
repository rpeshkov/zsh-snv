# zsh-snv

[![license][license-badge]][LICENSE]

> Zsh plugin for quick load of single NodeJS version

While nvm is a great tool that greatly simplifies maintaining NodeJS versions on your machine, its load time can really make you mad. If you're not NodeJS developer and use Node only for tooling, you usually have only 1 version of NodeJS installed. With this plugin you're able to load this single version blazingly fast!

If later you need use nvm - just type `nvm` in your console and it will be loaded, taking control over this extension.

## Options

### Custom Directory

If you have installed nvm not in default location (`$HOME/.nvm`), you're able to specify path where you installed it. This
option must be set before `zsh-snv` is loaded.

Example:

```zsh
export NVM_DIR="$HOME/.node_version_manager"
zplug "rpeshkov/zsh-snv"
```

### Single node version

This is the main option that you need to specify. In this option you specify which node version you want to load.
Version number must be exactly the same as it shown in `nvm ls` command. Aliases are not supported. This option must
be set before `zsh-snv` is loaded.

Example:

```zsh
export SNV="v8.11.3"
zplug "rpeshkov/zsh-snv"
```

## Installation

### Using zplug

```zsh
zplug "rpeshkov/zsh-snv"
```

### Manually

1. Clone this repository to your machine

```sh
git clone https://github.com/rpeshkov/zsh-snv ~/.zsh-snv
```

2. Source `zsh-snv.plugin.zsh` file in your shell config (`.bashrc` or `.zshrc`)

```sh
source $HOME/.zsh-snv/zsh-snv.plugin.zsh
```

### Other ways

This plugin should be compatible with all other Zsh package managers, but this functionality was not tested. If you tried to install this extension via i.e. antigen and succeded - you can create an issue for readme update.

[LICENSE]: ./LICENSE
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg
