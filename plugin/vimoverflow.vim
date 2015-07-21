function! VimOverflow(arg)
python << _EOF_

import vimoverflow
print search_answer(vim.eval("a:arg"))

_EOF_
endfunction
command! -nargs=1 VimOverflow call VimOverflow(<f-args>)
