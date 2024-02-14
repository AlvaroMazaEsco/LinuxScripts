#!/bin/bash
echo "Bienvenido a La Medusa Sabrosa"
echo "Antes de presentarte el menú, ¿Cuentas con alguna de las siguientes condiciones especiales?"
opciones=("Celiaco" "Intolerante a la lactosa" "Vegano" "Ninguna de las anteriores")
select opt in "${opciones[@]}"
do
	case $opt in 
	
		"Celiaco") echo "El menu para celiacos es el siguiente:"
		echo "Primeros: Sopa de pan, Migas, Gachas"
		echo "Segundos: Pollo empanado, Bocadillo de calamares a la romana, Croquetas"
		mkdir mesa1
		cd mesa1
		touch menu.txt
		echo "Indique lo que desea"
		read celiaco
		echo $celiaco >> menu.txt
		echo "Sabia decision caballero su pedido de "$celiaco" ha sido enviado al chef" 
		break 
		;;
		"Intolerante a la lactosa") echo "El menu para intolerantes a la lactosa es el siguiente"
		echo "Primeros: Seleccion de quesos manchegos, Risotto, Pasta carbonara"
		echo "Segundos: Croquetas, Lasaña, Canelones"
		mkdir mesa1
		cd mesa1
		touch menu.txt
		echo "Indique lo que desea"
		read lactosa
		echo $lactosa >> menu.txt
		echo "Sabia decision caballero su pedido de "$lactosa" ha sido enviado al chef" 
		break
		;;
		"Vegano") echo "El menu para veganos es el siguiente"
		echo "Primeros: Plato de ibéricos, Torreznos, Oreja"
		echo "Segundos: Rabo de toro, Entrecot de vaca rubia gallega, Rodaballo encebollado"
		mkdir mesa1
		cd mesa1
		touch menu.txt
		echo "Indique lo que desea"
		read vegano
		echo $vegano >> menu.txt
		echo "Sabia decision caballero su pedido de "$vegano" ha sido enviado al chef" 
		break
		;;
		"Ninguna de las anteriores") echo "Sentimos comunicarle que tenemos cerrada la cocina para gente tan basica como usted, vuelva cuando enferme :)"
		break
		;;
		*) echo "El numero introducido no corresponde con ninguna de las condiciones especiales mencionadas"
	esac
done

