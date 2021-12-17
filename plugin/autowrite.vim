function! AutoWriteToggle()
    let g:AutoWriteEnabled = !get(g:, 'AutoWriteEnabled', 0)
    if g:AutoWriteEnabled
        call AutoWriteEnable()
    else
        call AutoWriteDisable()
    endif
endfunction


function! AutoWriteReset()
    augroup AutoWrite
        autocmd!
    augroup END
endfunction


function! AutoWriteEnable()
        augroup AutoWrite
            autocmd TextChanged,TextChangedI <buffer> silent write
        augroup END
endfunction

function! AutoWriteDisable()
    call AutoWriteReset()
endfunction

command! AutoWriteToggle call AutoWriteToggle()
command! AutoWriteEnable call AutoWriteEnable()
command! AutoWriteDisable call AutoWriteDisable()
