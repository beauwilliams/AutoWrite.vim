#  AutoWrite.vim


Simple AutoWrite Plugin compatible with most if not all vim distributions (Vim/Neovim)


## About

This is a simple plug-in for Vim (and NeoVim) that enables autowriting of the buffer.
It is useful for applications such as [Markdown Previewers](https://github.com/ms-jpq/markdown-live-preview) to automatically render the text in the preview window as you type.

## Preview

![A preview image of the plugin](https://i.ibb.co/Tw07X4W/ezgif-com-gif-maker1.gif)


## Installation

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use 'beauwilliams/autowrite.nvim'
```

#### [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'beauwilliams/autowrite.nvim'
```

## Commands

| _Command_      | _Description_ |
| -------------- | ------------- |
| `:AutoWriteEnable` |  Enable auto writing the file while inserting text into the current buffer. |
| `:AutoWriteDisable` |  Disable auto writing the file while inserting text into the current buffer. |
| `:AutoWriteToggle` |  Toggle AutoWrite on and off again. |

## Configurables

| _Option_      | _Description_ |
| -------------- | ------------- |
| `let AutoWriteOnInsert = 0` |  Disables auto writing of buffer while typing in insert mode. |


## Help

See `:h autowrite`


## Enhancements

Submit a PR! 😃
