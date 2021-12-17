if !exists("g:AutoWriteOnInsert")
    let g:AutoWriteOnInsert=1
endif


function! AutoWriteToggle()
    let g:IsAutoWriteEnabled = !get(g:, 'IsAutoWriteEnabled', 0)
    if g:IsAutoWriteEnabled
        call AutoWriteEnable()
    else
        call AutoWriteDisable()
    endif
endfunction

function! AutoWriteEnable()
    augroup AutoWrite
        if g:AutoWriteOnInsert
            autocmd TextChanged,TextChangedI <buffer> silent write
        else
            autocmd TextChanged,InsertLeave <buffer> silent write
        endif
    augroup END
endfunction

function! AutoWriteDisable()
    augroup AutoWrite
        autocmd!
    augroup END
endfunction

command! AutoWriteToggle call AutoWriteToggle()
command! AutoWriteEnable call AutoWriteEnable()
command! AutoWriteDisable call AutoWriteDisable()
