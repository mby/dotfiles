# My Dotfiles

Details:

- os: Pop OS
- wm: GNOME
- shell: bash
- editor: neovim, vscode
- font: Fira Code
- browser: firefox



## Bootstrapping

Bootstrapping is easy, you just have to do:

```sh
$ sh bootstrap.sh
```

This installs every package needed + their config files.
Note that it does install some __proprietary software__.
Namely __Visual Studio Code__.

If you don't want to install proprietary software, simply do

```sh
$ rm dev/.deps-dev-prop
```

Other than that, good luck in life!
