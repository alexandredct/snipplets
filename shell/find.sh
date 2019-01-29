#buscar caminhos para os arquivos com um texto específico
find [path] -type f -name "[arquivo.extensao | *.extensao | arquivo.*]" -exec grep -l "texto_a_ser_buscado" '{}' \;
find [path] -type f -name "[arquivo.extensao | *.extensao | arquivo.*]" -print0 | xargs -I {} -0 grep "texto_a_ser_buscado" "{}"
