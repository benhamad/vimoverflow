    #############################################################################
    #            _                                      __  _                   #
    #    __   __(_) _ __ ___    ___ __   __ ___  _ __  / _|| |  ___ __      __  #
    #    \ \ / /| || '_ ` _ \  / _ \\ \ / // _ \| '__|| |_ | | / _ \\ \ /\ / /  #
    #     \ V / | || | | | | || (_) |\ V /|  __/| |   |  _|| || (_) |\ V  V /   #
    #      \_/  |_||_| |_| |_| \___/  \_/  \___||_|   |_|  |_| \___/  \_/\_/    #
    #                                                                           #     
    #                                                                           #     
    #############################################################################

# Vimoverflow:

## Introduction: 

If you're programmer, coder or a hacker and you don't know what
[stackoverflow](http://stackoverflow.com) is! Than I suggest that you look for
another carrer. Else I hope that this plugin save you some time.

## How it works: 

type: 

    :VimOverflow your fancy question

The plugin will search it for you and show you the accepted answer.

#### Example:

    :VimOverflow clear last search highlighting

Result :

    ff highlighting until the next search:
        :noh
    Or turn off highlighting completely: 
    set nohlsearch 
    Or, to toggle it: 
    set hlsearch!  
    nnoremap <F3> :set hlsearch!<CR>


## Todo list:
- Using google for search instead of Stackexchange api.

## License 
Copyright © Chaker Benhamed. Distributed under the same terms as Vim itself. See :help
license.
