" My custom filetypes
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
	au BufNewFile,BufRead /etc/apache2/sites-*/* setfiletype apache
augroup END
