BEGIN{

	FS = ":"
	lucro = 0

        print "\n\n"
        print "ID       QUANTIDADE DE VENDA         QUANTIDADE DE COMPRA          PREÇO DE VENDA          PREÇO DE COMPRA          LUCRO"
        print "----------------------------------------------------------------------------------------------------------------------------"

}
{
	printf "%-17d %-27d %-23d € %-22.2f € %-18.2f € %.2f \n", $1 , $3 , $2 , $4 + $4 * 0.2 , $4 , $4 * 0.2
	lucro+= ( $3 * ( $4 + $4 * 0.2 ) ) - ( $2 * $4 )

}
END{
	printf "\nLUCRO TOTAL: %.2f €", lucro

}
