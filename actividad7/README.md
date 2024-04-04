## Hugo Daniel Giron Garcia 
## 202004807 

 
# Características principales y el funcionamiento del Completely Fair Scheduler (CFS) de Linux. 

## Las características principales del CFS son: 

1. FCFS: El CFS se basa en la política FCFS, que asigna el tiempo de CPU  

al proceso que llegó primero al sistema, sin importar el tipo de prioridad 

del proceso ni su uso de recursos. 

2. Prioridad por tiempo de residencia: El CFS asigna una prioridad a cada  

proceso basado en su tiempo de residencia en la CPU. Los procesos que han  

estado en la CPU durante un período más corto de tiempo reciben una mayor  

prioridad que los procesos que han estado en la CPU durante un período más 

largo de tiempo. 

3. Prioridad por uso de recursos: El CFS asigna una prioridad a cada  

proceso basado en su uso de recursos. Los procesos que utilizan más  

recursos reciben una mayor prioridad que los procesos que utilizan menos  

recursos. 

4. Ajuste dinámico de la política de carga: El CFS permite ajustar 

dinámicamente la política de carga según las necesidades del sistema. Por 

ejemplo, si un proceso consume muchos recursos y se demora mucho en  

ejecutarse, el CFS puede aumentar su prioridad para que se ejecute con  

mayor frecuencia. 

5. Monitoreo de la CPU: El CFS monitorea el uso de la CPU y ajusta las  

prioridades de los procesos según sea necesario. 

6. Escalabilidad: El CFS es escalable, lo que significa que puede manejar  

un gran número de procesos sin afectar significativamente el rendimiento  

del sistema. 


## El funcionamiento del CFS se basa en la siguiente lógica: 

1. Los procesos se agregan a una cola FIFO (First-Come, First-Served) para 

ser ejecutados por la CPU. 

2. La CPU asigna el tiempo de CPU al siguiente proceso en la cola que no  

está en estado de bloqueo y que tiene el mayor tiempo de residencia en la  

CPU. 

3. Si un proceso se encuentra en estado de bloqueo, su tiempo de  

residencia en la CPU se detiene hasta que se desbloquea. 

4. El uso de recursos se monitorea constantemente para ajustar las  

prioridades de los procesos. 

5. La política de carga se puede ajustar dinámicamente según las  

necesidades del sistema. 

6. Los procesos con una mayor prioridad tienen un acceso más rápido y  

constante al tiempo de CPU, lo que mejora el rendimiento general del  

sistema. 

 

 