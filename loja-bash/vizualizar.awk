BEGIN{
        printf "\n\n"
        print "ID       MUSICA         ARTISTA          ESTILO         FORMATO         PREÇO DE COMPRA          PREÇO DE VENDA          QUANTIDADE ESTOQUE"
        print "-------------------------------------------------------------------------------------------------------------------------------------------"
        FS = ":"
}
{
        printf "%-8d %-14s %-16s %-14s %-15s €%-23.2f €%-22.2f %d\n", $1 , $2 , $3 , $4 , $5 , $6 , $6 + $6 * 0.2, $7
}
