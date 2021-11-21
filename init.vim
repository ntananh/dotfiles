for f in split(glob('~/appdata/local/nvim/configs/*.vim'), '\n')
  exe 'source' f
endfor


