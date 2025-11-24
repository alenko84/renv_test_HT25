# downgrading ggplot 
packageVersion('ggplot2')
renv::install('ggplot2@3.5.0')

# update lock.file
renv::status()
renv::snapshot()

# restore to initial version
renv::history()
renv::revert(commit = 'efa5c6b69a6e5b7c2ddd45783db17b4fcbbba159')
renv::restore()
