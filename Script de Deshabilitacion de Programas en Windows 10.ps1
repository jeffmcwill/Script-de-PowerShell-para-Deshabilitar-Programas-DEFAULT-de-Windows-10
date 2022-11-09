#script de powershell para deshabilitar ciertas caracteristicas de windows 10.
#sea la version que sea.
#--------------------------------------------------------------------------------------
function scriptsAutomatizados(){
#1
write-host "Deshabilitando 3D Builder..."
Write-Host "---------------------------------------------------"
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
write-host "¡Hecho!"
sleep 1
#2
write-host "Ejecutando script para borrar alarma y reloj."
Write-Host "---------------------------------------------------"
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#3
write-host "Ejecutando script para desinstalar la Calculadora."
Write-Host "---------------------------------------------------"
Get-AppxPackage *windowscalculator* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#4
write-host "Ejecutando script para desinstalar email y calendario."
Write-Host "---------------------------------------------------"
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#5
write-host "Ejecutando script para desinstalar camara."
Write-Host "---------------------------------------------------"
Get-AppxPackage *windowscamera* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#6
write-host "Ejecutando script para desinstalar Grove Music"
Write-Host "---------------------------------------------------"
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#7
write-host "Ejecutando script para desinstalar Mapas de google"
Write-Host "---------------------------------------------------"
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#8
write-host "Ejecutando script para remover el juego de cartas."
Write-Host "---------------------------------------------------"
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#9
write-host "Ejecutando script para remover cine y tv"
Write-Host "---------------------------------------------------"
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#10
write-host "Ejecutando script para remover aplicacion de noticias."
Write-Host "---------------------------------------------------"
Get-AppxPackage *bingnews* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#11
write-host "Ejecutando script para desinstalar One Note."
Write-Host "---------------------------------------------------"
Get-AppxPackage *OneNote* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#12
write-host "Ejecutando script para desinstalar Fotos."
Write-Host "---------------------------------------------------"
Get-AppxPackage *Fotos* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#13
write-host "Ejecutando script para remover tienda."
Write-Host "---------------------------------------------------"
Get-AppxPackage *windowsstore* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#14
write-host "Ejecutando script para desinstalar Tiempo..."
Write-Host "---------------------------------------------------"
Get-AppxPackage *bingweather* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#15
write-host "Ejecutando script para desinstalar Xbox App..."
Write-Host "---------------------------------------------------"
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Write-Host "Hecho."
#16
Write-Host "Ejecutando script para borrar Candy Crush Saga..."
Write-Host "---------------------------------------------------"
Get-AppxPackage -Name king.com.CandyCrushSaga
Write-Host "Hecho."
sleep 1
#17
Write-Host "Ejecutando script para desinstalar Obt. Office."
Write-Host "---------------------------------------------------"
Get-AppxPackage *officehub* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
#18
write-host "Ejecutando script para remover seccion Deportes."
Write-Host "---------------------------------------------------"
Get-AppxPackage *bingsports* | Remove-AppxPackage
Write-Host "Hecho."
sleep 1
Write-Host "Automatizacion FINALIZADA. Cerrando programa en breve..."
sleep 10
}

function Automatico(){
try{
    do{
        write-host "------------------------"
        write-host "-    Modo Automatico   -"
        write-host "------------------------"
        write-host "¿Esta seguro de ejecutarlo? /1)Si/ 2)NO"
        [int]$user4 = read-host ">>> "
        switch($user4)
        {
            {$_ -eq 1}{
                Write-Host "Ok ejecutando el Modo Automatico..."
                sleep 1
                Write-host "------------------------------------"
                scriptsAutomatizados
                break
            }
            {$_ -eq 2}{
                Write-Host "De acuerdo volviendo al menu principal."
                menu
                break
            }
        }
    }until($user4 -eq 1 -or $user4 -eq 2)
        break
}catch{
    Write-Host "Caracteres no soportados por el programa."
}
}

function manual3(){
try{
    do{
        write-host "-------------------------"
        Write-Host "-     Modo Manual 3     -"
        Write-Host "-------------------------
1.Desinstalar Tiempo.
2.Desinstalar Xbox App
3.Desinstalar CandyCrushSaga
4.Desinstalar Obtener Office.
5.Desinstalar Deportes.
6.Volver Pagina anterior. 2/3
7.SALIR AL MENU PRINCIPAL."
        [int]$user3 = read-host ">>> "
        switch($user3)
        {
            {$_ -eq 1}{
                write-host "Ejecutando script para desinstalar Tiempo..."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *bingweather* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 2}{
                write-host "Ejecutando script para desinstalar Xbox App..."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *xboxapp* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 3}{
                Write-Host "Ejecutando script para borrar Candy Crush Saga..."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage -Name king.com.CandyCrushSaga
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 4}{
                Write-Host "Ejecutando script para desinstalar Obt. Office."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *officehub* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 5}{
                write-host "Ejecutando script para remover seccion Deportes."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *bingsports* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 6}{
                Write-Host "Volviendo a la pagina anterior..."
                Write-Host "---------------------------------------------------"
                manual2
                sleep 1
                break
            }
            {$_ -eq 7}{
                Write-Host "Saliendo al menu."
                menu
                break
            }
        }
}until($user3 -eq 7 -or $user3 -eq 6)
    break
}catch{
    Write-Warning "Caracteres invalidos. Ingrese solo los soportados por el programa."
}
}


function manual2(){
try{
    do{
        write-host "-------------------------"
        write-host "-      Modo Manual 2    -"
        write-host "-------------------------
1.Remover juego de cartas del Solitario.
2.Remover Cine y Tv.
3.Remover Noticias.
4.Desinstalar One Note.
5.Desinstalar Fotos.
6.Remover Tienda.
7.Pagina siguiente 2/3
8.Retrocediendo a la pagina anterior 1/3
9.SALIR AL MENU."
        [int]$user2 = read-host ">>> "
        switch($user2)
        {
            {$_ -eq 1}{
                write-host "Ejecutando script para remover el juego de cartas."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *solitairecollection* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 2}{
                write-host "Ejecutando script para remover cine y tv"
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *zunevideo* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 3}{
                write-host "Ejecutando script para remover aplicacion de noticias."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *bingnews* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 4}{
                write-host "Ejecutando script para desinstalar One Note."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *OneNote* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 5}{
                write-host "Ejecutando script para desinstalar Fotos."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *Fotos* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 6}{
                write-host "Ejecutando script para remover tienda."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *windowsstore* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 7}{
                write-host "Yendo a la pagina siguiente."
                manual3
                sleep 1
                break
            }
            {$_ -eq 8}{
                write-host "Retrocediendo a la pagina anterior..."
                manual1
                sleep 1
                break
            }
        }
}until($user2 -eq 9 -or $user2 -eq 8)
    write-host "Volviendo al menu."
    menu
    break

}catch{
    Write-Warning "Caracter no soportado."
}
}

function manual1(){
try{
    do{
        write-host "-------------------------"
        write-host "-      Modo Manual 1    -"
        write-host "-------------------------
1.Desinstalar 3D Builder
2.Desinstalar alarma y reloj
3.Desinstalar Calculadora
4.Desinstalar Email y calendario
5.Desinstalar Camara
6.Desinstalar Groove Music
7.Desinstalar Mapas
8.Pagina siguiente 2/3
9.SALIR AL MENU."
        [int]$user2 = read-host ">>> "
        switch($user2)
        {
            {$_ -eq 1}{
                write-host "Ejecutando script para borrar 3D Builder."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *3dbuilder* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 2}{
                write-host "Ejecutando script para borrar alarma y reloj."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *windowsalarms* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 3}{
                write-host "Ejecutando script para desinstalar la Calculadora."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *windowscalculator* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 4}{
                write-host "Ejecutando script para desinstalar email y calendario."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 5}{
                write-host "Ejecutando script para desinstalar camara."
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *windowscamera* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 6}{
                write-host "Ejecutando script para desinstalar Grove Music"
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *zunemusic* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 7}{
                write-host "Ejecutando script para desinstalar Mapas de google"
                Write-Host "---------------------------------------------------"
                Get-AppxPackage *windowsmaps* | Remove-AppxPackage
                Write-Host "Hecho."
                sleep 2
                break
            }
            {$_ -eq 8}{
                write-host "Pasando a la pagina siguiente..."
                Write-Host "---------------------------------------------------"
                manual2
                sleep 1
                break
            }
        }
}until($user2 -eq 9 -or $user2 -eq 8)
    write-host "Volviendo al menu."
    menu
    break

}catch{
    Write-Warning "Caracter no soportado."
}
}

function menu(){
try{
    do{
        write-host "---------------------------------------------------------
Script de deshabilitacion de aplicaciones default de w10
---------------------------------------------------------
1. Automatico
2. Manual
3. Salir
---------------------------"
        
        [int]$user = read-host ">>>"
        switch($user)
        {
            {$_ -eq 1 }{
                write-host "Ejecutando script automaticamente..."
                sleep 1
                Automatico
                break
            }
            {$_ -eq 2}{
                write-host "Ok. yendo a la seleccion manual."
                sleep 1
                manual1
                break
            }
            {$_ -eq 3}{
                Write-Host "Ok, hasta luego."
                exit
            }
}
}until($user -eq 3 -or $user -eq 2 -or $user -eq 1)
    break
}catch {
    Write-Warning "Caracteres no soportados en el script"
}
}

#----- funcion primera en ejecutarse -----
menu