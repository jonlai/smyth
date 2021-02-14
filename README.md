# smyth
Smyth is a truecolor (24-bit) color scheme, with fallback support for 256-color mode (8-bit) in (Neo)Vim. It is inspired by the [Smyck](http://color.smyck.org/) color scheme.

Smyth also provides color support for:
* [macOS Terminal](https://support.apple.com/en-za/guide/terminal/apd5265185d-f365-44cb-8b09-71a064a42125/mac)
* [iTerm](https://iterm2.com/)
* [ALE](https://github.com/dense-analysis/ale)
* [lightline.vim](https://github.com/itchyny/lightline.vim)
* [vim-lsp](https://github.com/prabirshrestha/vim-lsp)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-signify](https://github.com/mhinz/vim-signify)
* various language packs included via [vim-polyglot](https://github.com/sheerun/vim-polyglot).

## Colors
<p align="center">
    <img src="https://raw.github.com/jonlai/smyth/images/colors.png">
</p>

## Installation
First and foremost, install Smyth with your preferred plugin manager; simply follow the plugin installation steps of your chosen manager. I use [vim-plug](https://github.com/junegunn/vim-plug), whose steps are:
1. Add `Plug 'jonlai/smyth'` to your .vimrc
2. Call `:PlugInstall`

After installation, you can enable the Smyth color scheme by adding the following lines to your .vimrc:
```vim
syntax on
colorscheme smyth
```

To use the accompanying [lightline](https://github.com/itchyny/lightline.vim) theme, set `smyth` as your color scheme in lightline's configuration:
```vim
let g:lightline = { 'colorscheme': 'smyth' }
```

By default, Smyth defines its highlight groups with native terminal colors (0-15) and `gui` attributes. Either option can be used to display Smyth properly, and a 256-color mode with similar fallback colors is also supported. More details about each approach are listed below.

### Native terminal colors
This approach uses your terminal native colors to properly display Smyth colors. It thereby requires that your terminal's color scheme is _also_ set as Smyth.

To set this up, download and install your preferred terminal's color scheme settings from the `term/` directory of this repo. After it's been installed, your editor should also display the Smyth color scheme properly. Because Smyth is using your terminal's color scheme to display its colors, you cannot using a different terminal color scheme when using this approach.

_Note: Only iTerm2 and Terminal.app color scheme settings are currently available._

### True color (24-bit)
This approach uses the `gui` attributes defined by Smyth to properly display its colors. True color must be supported at each emulation layer for this approach to work. Make sure your preferred terminal [supports true colors](https://gist.github.com/XVilka/8346728), or this approach will not work.

 To set this up, enable true color support for your editor.
```vim
" for Vim, add this to your .vimrc
set termguicolors

" for Neovim, add this to your .config/nvim/init.vim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
```

If you also use [tmux](https://github.com/tmux/tmux), you may need some additional settings in your .tmux.conf and .vimrc (if you use Vim) to support true color:
```vim
" add this to your .tmux.conf
set -ga terminal-overrides ",*256col*:Tc"
set -g default-terminal "screen-256color"

" for Vim, add this to your .vimrc
let &t_8f = "\<esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<esc>[48;2;%lu;%lu;%lum"
```

### 256-color (8-bit)
This approach falls back to your terminal's predefined 256 color palette to display similar colors, approximate to Smyth's colors.

To set this up, simply enable `smyth_termcolor` in your .vimrc:
```vim
let g:smyth_termcolor = 1
```

## Overriding highlight groups
If you want to change a highlight group's look, you can use Smyth's highlight function to do so:
```
smyth#hi(<str>item, <str>fg, <str>bg, <str>attr)
```
where `item` is the name of the highlight group, `fg`/`bg` are the Smyth colors to be used for the foreground/background, and `attr` are the font attributes. `fg` and `bg` use four-character strings to represent a color, e.g. `'lred'`, `'dmgt'`, `'lcyn'`, `'dwht'`. A complete list can be found in [`autoload/smyth.vim`](https://github.com/jonlai/smyth/blob/master/autoload/smyth.vim). An empty string for `fg`, `bg`, and `attr` is replaced with a `NONE` value. Example usage can be found in  [`colors/smyth.vim`](https://github.com/jonlai/smyth/blob/master/colors/smyth.vim).

Overrides for a highlight group must come after the `colorscheme smyth` line in order to take effect.

## Screenshots
**JavaScript:**  
![JavaScript example of Smyth color scheme](https://raw.github.com/jonlai/smyth/images/examples/js.png)

**Python:**  
![Python example of Smyth color scheme](https://raw.github.com/jonlai/smyth/images/examples/py.png)

**Rust:**  
![Rust example of Smyth color scheme](https://raw.github.com/jonlai/smyth/images/examples/rs.png)
