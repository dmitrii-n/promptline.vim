fun! promptline#slices#conda_env#function_body(...)
  let conda_symbol = promptline#symbols#get().conda_env
  let lines = [
        \'',
        \'function __promptline_conda_env {',
        \'  local conda_symbol="' . conda_symbol . '"',
        \'  if [ -n "$CONDA_DEFAULT_ENV" ]; then',
        \'    printf "%s" "${conda_symbol}$CONDA_DEFAULT_ENV"',
        \'    return',
	\'  else return 1',
	\'  fi',
        \'}',]
  return lines
endfun
