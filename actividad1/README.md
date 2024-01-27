# Tipos de Kernel y sus diferencias
Los Kernel son el nucleo del sistema operativo y se encuentran divididos en dos categorias ya que unos son mas importantes que otros, se dividen en escenciasles y no escensiales.

* Tipos de Kernel Escenciales
  - Kernel monolítico: Un núcleo extenso que abarca todas las funciones. Es el único encargado de supervisar la administración de la memoria y los procesos, así como de facilitar la comunicación entre procesos, además de proveer funciones de respaldo para controladores y hardware. Ejemplos de sistemas operativos que emplean el kernel monolítico incluyen Linux, OS X y Windows.
  - Microkernel: El microkernel ha sido específicamente concebido con un tamaño reducido para evitar que un fallo afecte a la totalidad del sistema operativo. Sin embargo, para desempeñar las mismas funciones que un núcleo más extenso, se divide en varios módulos. Un ejemplo de implementación es el componente Mach de OS X, siendo hasta el momento inexistente un sistema operativo que utilice exclusivamente un microkernel.
  - Kernel híbrido: Kernel híbrido: La fusión del kernel monolítico y el microkernel da lugar al kernel híbrido. En este enfoque, el núcleo extenso se vuelve más compacto y adaptable, permitiendo la carga dinámica de otras partes del kernel. Este concepto ya se implementa en cierta medida en sistemas operativos como Linux y OS X.

* Tipos de Kernel No Escenciales
  - Nanokernel: En comparación con el microkernel, el nanokernel es aún más diminuto, diseñado principalmente para sistemas embebidos debido a su mayor nivel de confiabilidad.
  - Exokernel: La propuesta de un exokernel es innovadora debido a su estructura vertical. Los núcleos son pequeños y su desarrollo se enfoca principalmente en la investigación. En un exokernel, la toma de decisiones recae en los programas, permitiendo la gestión de los recursos de hardware a través de ciertas bibliotecas. El papel del kernel se limita a prevenir errores en los permisos de hardware y evitar conflictos.
  - Unikernel: Se trata de un kernel diseñado para eliminar capas intermedias entre el hardware y las aplicaciones, con el objetivo de simplificar al máximo todos los procesos. Este enfoque es comúnmente utilizado en dispositivos de bajo consumo, como los dispositivos IoT (Internet de las cosas).
  - Anykernel: Este concepto innovador busca preservar las características de los kernels monolíticos, al tiempo que facilita el desarrollo de controladores y proporciona mayor seguridad al usuario.

 # User vs Kernel Mode

 - User Mode: Al utilizar el modo usuario este se ejecutara en un espacio de direccion virtual y de esta forma es una aplicacion privada y asi la aplicación no puede modificar los datos de otra aplicación. Cada aplicación se ejecutara de forma aislada, lo que garantiza que si se bloquea, no afecte a otras aplicaciones o al sistema operativo. Este modo no permite que se puedan acceder a direcciones virtuales que esten reservadas para el sistema operativo y asi se evita que se creen daños criticos en el sistema operativo.
 - Kernel Mode: Aqui se comparten un solo espacio de direccion virtual y como resultado, un controlador de modo de núcleo no está aislado de otros controladores o del sistema operativo. Hay que tener cuidado ya que un controlador de modo de nucleo podría comprometer los datos que pertenecen al sistema operativo u otro controlador y si algo falla puede causar que el sistema operativo se bloquee.
 
# Interrruptions vs Traps
| Traps | Interruptions |
|----------|----------|
| Es una señal de un programa de usuario para que el sistema operativo realice alguna funcionalidad de inmediato  | es una señal a la CPU emitida por el hardware que indica un evento que requiere atención inmediata   | 
| Solo ocurre en dispositivos de software   | Ocurre en software y hardware   | 
| Ocurre por una instruccion de algun programa   | Es ocasionado por el hardware   |
