BEGIN{
	printf "\n\n"
	print "ID       MUSICA         ARTISTA          ESTILO         FORMATO         PREÇO         QUANTIDADE"
	print "------------------------------------------------------------------------------------------------"
	FS = ":"
}
{
	printf "%-8d %-14s %-16s %-14s %-15s €%-12.2f %d\n", $1 , $2 , $3 , $4 , $5 , $6 + $6 * 0.2 , $7
}
