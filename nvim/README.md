# bpavuk's Neovim config

Each language needs its own LSPs, and LSPs have their own dependencies. Here is
the list of everything you may ever need:

## Assembly

You need to have `cargo` installed. That's it.

## HTML/CSS

Install `nvm`.

## Rust

To get Rust working, install Rust with rustup (easy to google) and rust-analyzer with this:
```shell
rustup component add rust-analyzer
```

## C (maybe also C++)

To make autocomplete work, make sure you have clangd installed.

## Python

Install [Pyright](https://github.com/microsoft/pyright) and you are good to go.
```shell
pip install pyright
```

## Markdown

To get Markdown rendering working, install C or Zig compiler.

## Keybindings

- All NvChad bindings
- `<leader>a` - code action in supported languages
- `K` - smarter hover override in supported languages
- `<leader>R` - binding for running code
- `<leader>md` - toggles Markdown rendering

