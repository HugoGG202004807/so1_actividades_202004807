# Tipos de Kernel y sus diferencias
Los Kernel son el nucleo del sistema operativo y se encuentran divididos en dos categorias ya que unos son mas importantes que otros, se dividen en escenciasles y no escensiales.

* Tipos de Kernel Escenciales
  - Kernel monolítico: Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.
  - Microkernel. El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.
  - Kernel híbrido. La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

* Tipos de Kernel No Escenciales
  - Nanokernel: si el microernel es pequeño, este es todavía más reducido, pero su uso está destinado a sistemas embebidos ya que el nivel de fiabilidad es mayor.
  - Exokernel: la estructura que propone un exokernel es innovadora ya que se estructura de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. En un exokernel la toma de decisiones está a cargo de los programas, para hacer el uso de los recursos del hardware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.
  - Unikernel: es un Kernel destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Es habitual en dispositivos de bajo consumo como los IoT.
  - Anykernel: otro concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario.

 # User vs Kernel Mode

 - User Mode: Al utilizar el modo usuario este se ejecutara en un espacio de direccion virtual y de esta forma es una aplicacion privada y asi la aplicación no puede modificar los datos de otra aplicación. Cada aplicación se ejecutara de forma aislada, lo que garantiza que si se bloquea, no afecte a otras aplicaciones o al sistema operativo. Este modo no permite que se puedan acceder a direcciones virtuales que esten reservadas para el sistema operativo y asi se evita que se creen daños criticos en el sistema operativo.
 - Kernel Mode: Aqui se comparten un solo espacio de direccion virtual y como resultado, un controlador de modo de núcleo no está aislado de otros controladores o del sistema operativo. Hay que tener cuidado ya que un controlador de modo de nucleo podría comprometer los datos que pertenecen al sistema operativo u otro controlador y si algo falla puede causar que el sistema operativo se bloquee
 
