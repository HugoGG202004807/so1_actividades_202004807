# Creacion de un systemd unit de tipo servicio

## Paso 1 crear el Script
* abrir una terminal y crear el script con el comando

``` sudo nano saludo_script.sh ```

* agregarle el contenido para que muestre el mensaje cada segundo

```
#!/bin/bash

while true; do
    echo "Hola Hugo Giron :) La fecha actual es: $(date)"
    sleep 1
done
```


* Guardar el achivo presionando Ctr+O 
* Darle permisos de ejecucion con el comando

``` chmod +x saludo_script.sh ```

## Paso 2 Crea el archivo de unidad de systemd

* Abrir una nueva terminal y crear el archivo en el directorio /etc/systemd/system en modo super usuario

``` sudo nano /etc/systemd/system/saludo.service ```

* Agregarle el contenido al archivo y luego guardarlo con el comando Ctr+O

```
[Unit]
Description=Saludo y fecha actual infinitos

[Service]
Type=simple
ExecStart=/ruta/del/script/saludo_script.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

## Paso 3: Habilita y comienza el servicio

* Para recargar los archivos de configuracion se utilizan los siguientes comandos desde una terminal
``` 
sudo systemctl daemon-reload
sudo systemctl enable saludo.service
sudo systemctl start saludo.service
```

## Para poder ver los logs en tiempo real utiliza el comando

```
journalctl -u saludo.service -f

```

![image](https://github.com/HugoGG202004807/so1_actividades_202004807/assets/81279833/956c9713-8bab-421a-88c2-482bf8868d9a)






