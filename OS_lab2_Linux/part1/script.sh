#!/bin/bash

# Task 1,2,3
sleep 10 &  # Первая задача в фоновом режиме (консоль не остановится)
gedit    # Вторая задача в интерактивном режиме
ping google.com  # Третья задача в интерактивном режиме

#ctrl+z
#bg %2 
#fg %2 # можно остановить)


