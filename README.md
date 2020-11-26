# Hecked

`hecked-vim` is a vim theme that uses term256 colors.

![Preview 1](https://github.com/professor-l/hecked-bim/blob/master/images/hecked.png)

### Setup

With a Vim plugin manager, install as you normally would.  Otherwise, download [the theme](https://github.com/professor-l/hecked-vim/blob/master/colors/hecked.vim) and place it in the `~/.vim/colors/` directory.

Next, in your `.vimrc`, set the color scheme:

```vimscript
colorscheme hecked
set t_Co=256
```

**Note:** The `t_Co` must be set in order to put the terminal in 256-color mode, rather than the full 24-bit color that many terminal emulators now support. Writing hecked with 256 color support improves compatability with older and more rudimentary terminal emulators to ensure that all your development environments look similar.

Next time you open Vim, it should be in the `hecked` theme. If Vim is already open, you can run `:source ~/.vimrc` in each instance rather than closing them all.
