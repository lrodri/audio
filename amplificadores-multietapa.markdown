% Traducción de apuntes de amplificadores de Keneth Kuhn 
% Leonardo Rodríguez
% septiembre 06 2014


# Introducción a los transistores

El diccionario Webser define la electrónica como “la ciencia que se ocupa del comportamiento y el control de electrones…”. Específicamente, la electrónica se basa en el uso de campos eléctricos para controlar el flujo de cargas eléctricas.

Uno de los primeros ejemplos conocidos de esto fue observado por Thomas Edison y llegó a ser conocido como efecto Edison. En experimentos con bulbos de luz, Edison notó que había una corriente entre el filamento y otro conductor en el bulbo, si este conductor tenía un potencial eléctrico positivo relativo al filamento, pero no si ese conductor tenía un potencial eléctrico negativo. Así, la corriente podría llegar a ser controlada ajustando un campo eléctrico. Años después, esto llegó a ser conocido como el diodo o válvula eléctrica de una vía. La corriente conduce en una dirección pero no en la otra.

El diodo de vacío evolucionó hasta tener un filamento para indirectamente calentar un cátodo a una temperatura tal que los electrones en el cátodo literalmente saltan del metal y forman una nube de electrones alrededor de ahora un cátodo positivo. Una placa llamada ánodo fue colocada a una distancia corta y podía atraer los electrones como una corriente si esta era más positiva que el cátodo. Si la placa era más negativa no había corriente. Los nombres, cátodo y ánodo son usados   hoy en día en cualquier tipo de diodo.

Flemming descubrió que añadiendo una malla de alambre llamada rejilla de control entre el cátodo y el ánodo, la corriente debida a un ánodo positivo podría ser controlada variando el voltaje de la rejilla al cátodo. Este era un voltaje controlado por una fuente de corriente. Había dos campos eléctricos en trabajo. Un campo estaba entre el ánodo y el cátodo y el otro campo estaba entre la rejilla y el cátodo. Mediante un manejo adecuado de estos dos campos se podían construir amplificadores. Debido a que este dispositivo tenía tres elementos este dispositivo se llamó tríodo. La rejilla de control se polarizaba a un potencial más negativo que el cátodo de tal manera que haciendo que la rejilla de control fuera más negativa redujera la corriente anódica y por el contrario, si la rejilla era menos negativa, la corriente en el ánodo aumentaba.

El transistor fue desarrollado a partir de la necesidad para solucionar el problema que tenían muchos sistemas de tubos de vacío (sistema telefónico) pues la probabilidad de cambiar en cualquier momento al menos un tubo del sistema es alta. En 1948, el primer dispositivo de estado sólido que se conoció como transistor fue desarrollado en los laboratorios Bell. El transistor operaba a temperatura ambiente por lo que no se necesitaba un calentador. Además, el transistor se basa en la física de estado sólido por lo que no se necesitaba un vacío para la operación, también trabaja con tensiones muy bajas y considerablemente más pequeñas que un tubo de vacío, por lo que ha remplazado al tubo de vacío en una gran variedad de equipos durante las últimas décadas. 

# Respuesta en frecuencia de amplificadores

## Introducción

Todos los amplificadores tienen un ancho de banda finito. La frecuencia de corte inferior en algunos casos se puede extender hasta DC y es un parámetro bajo el control directo del diseñador. La frecuencia de corte alta está determinada por las características físicas de los componentes y la construcción del circuito.  El diseñador puede diseñar a una frecuencia de corte superior arbitraria debajo de este límite. La frecuencia de corte es por definición la frecuencia de mitad de potencia y es la frecuencia donde la ganancia de potencia es la mitad de la que se encuentra en la mitad de la banda, entre las frecuencias de corte superior e inferior donde los efectos de la frecuencia se pueden ignorar.

Los amplificadores solo necesitan tener suficiente ancho de banda para que pasen las señales deseadas. Un exceso de ancho de banda puede ser una fuente de problemas, debido a que cualquier señal indeseada fuera de banda se amplificará en lugar de suprimirse. Como un ejemplo, un mito común en los amplificadores de audio es que se necesita un ancho de banda de cientos o miles de kilo Hertz para lograr una reproducción de calidad. La realidad es que es deseable para un amplificador de audio tener una frecuencia de corte superior neta que limite con la sensibilidad de oído humano (aproximadamente 20 KHz) o la frecuencia superior de los parlantes- la que sea menor. Otro mito en los amplificadores de audio, es que la respuesta  las frecuencias bajas se deberían extender hasta DC.

La realidad es que la frecuencia neta de corte inferior debería ser ligeramente menor que la de los parlantes, pues de lo contrario se puede producir distorsión. Un sistema de audio bien diseñado debe estar cuidadosamente limitado en banda para una óptima calidad de sonido. 

## Frecuencia de corte inferior

La frecuencia de corte inferior está determinada por el tamaño de los condensadores de acoplamiento. Cada etapa de AC acoplado tiene una serie de tiempo RC asociada constante con la suma de la resistencia de salida de una etapa en serie con la resistencia de entrada de la siguiente etapa multiplicada por la capacitancia del condensador de acoplamiento. La frecuencia de corte es la frecuencia cuando la reactancia de la capacidad es igual a la resistencia en serie y en esta frecuencia sólo la mitad de la energía se transfiere de una etapa a la siguiente. La Figura 1 muestra el circuito de acoplamiento de AC típico.

La frecuencia de corte inferior es: 



$$ f_{cl} = \frac{1}{2*\pi*(R_o+R_{in})*C}$$
Un amplificador tiene típicamente varios acoplamientos de AC de entrada a salida. Una aproximación popular para calcular la frecuencia de corte inferior neta es la siguiente:
$$f_{cl}net=\sqrt{f_{cl1}^2+f_{cl2}^2+...+f_{cln}^2}$$

![Circuito de acoplamiento de AC\label{fig:dc}](imagenes/xxx.png)

Se puede observar que la frecuencia de corte inferior neta siempre será mayor que la máxima frecuencia de corte individual. Otra observación es que las frecuencias de corte más altas dominan el resultado. 
El proceso de diseño consiste en  determinar los condensadores de tamaño apropiado a utilizar para cada acoplamiento a fin de lograr la frecuencia de corte inferior neta deseada. Al pensar en cómo se deben distribuir las constantes de tiempo para cada acoplamiento debe ocurrir que todos los tiempos constantes de la misma -así la frecuencia de corte es idéntico para todos los acoplamientos. Este concepto simplifica en gran medida lo que de otro modo sería un gran juego de adivinanzas. De la discusión anterior debe tenerse en cuenta que la frecuencia de corte individual para cada acoplamiento debe ser inferior con el fin de neto un objetivo neto de baja frecuencia de corte. De manera simplista, se podría pensar que la frecuencia de corte debería ser la frecuencia de corte objetivo dividido por el número de acoplamiento de AC, pero esto resulta ser un exceso. Cada etapa sólo tiene que reducir la transferencia de poder de un enésimo de la mitad. Este problema se resuelve fácilmente a través de un equipo que plantea la primera función de transferencia para la enésima potencia y luego resuelve para la frecuencia de corte resultante usando los métodos numéricos. Dado que el cálculo es siempre la misma una simple tabla de resultados se puede generar como se muestra a continuación: 

--------------------------------------------------------------------------------------
 Distorsión    Factor de frecuencia de corte individual a la frecuencia de corte neto
-----------    -----------------------------------------------------------------------
1              1.00

2              0.644
   
3              0.510

4              0.435

5              0.386

6              0.350

7              0.323

8              0.301

9              0.283

10             0.268
--------------------------------------------------------------------------------------
Table: 

## Frecuencia de corte superior
La frecuencia de corte superior de un amplificador está determinada por las capacitancias físicas asociadas con cada componente y del cableado físico. Los transistores tienen capacidades internas que desvían caminos de la señal, reduciendo así la ganancia. La frecuencia de corte superior está relacionada con una constante de tiempo de derivación formada por resistencias y capacitancias asociadas con un nodo. Estamos atrapados con las capacidades físicas (por lo general en el rango de picofaradios) por lo que la opción principal para muy alta respuesta de frecuencia es resistencias de bajo valor. Otra opción es usar componentes mucho más pequeños que a su vez tienen capacidades más bajas. En algunos casos, pequeñas inductancias pueden ser incorporadas en el circuito para contrarrestar las capacitancias.

La Figura 2 muestra el circuito típico que se hace para altas frecuencias. Hay que tener en cuenta que $C_{in}$ podría ser la suma de varias capacitancias diferentes. Estas capacidades son de los componentes y la construcción del circuito.

![Circuito para altas frecuencias\label{fig:dc}](imagenes/atasfrecuencias.png)

La frecuencia de corte superior está dada por: 

$$ f_{ch} = \frac{1}{2*\pi*(R_o//R_{in})*C_{in}}$$
La frecuencia de corte superior neta es: 
$$ f_{ch}net=\frac{1}{\sqrt{\frac{1}{f_{ch1}^2+f_{ch2}^2+...+f_{chn}^2}}}$$
Se puede observar que la frecuencia de corte superior siempre será menor que la frecuencia de corte individual más baja; donde las frecuencias más bajas dominarán el resultado. Para reducir el ancho de banda se puede agregar una capacitancia hasta ajustar el valor deseado. 


# Distorsión 

La distorsión es el resultado de cualquier acción no lineal en la señal. El
recorte es una forma de distorsión debido al rango finito del un sistema.
La distorsión de transferencia es causada por una función de transferencia
no lineal en el rango dinámico (no recortada) del sistema y puede ser
significativa a niveles inferiores a los del recorte.

Sólo una distorsión significativa se puede ver en el osciloscopio. El menor
nivel de distorsión en una simple onda seno que un ojo entrenado puede
percibir está sobre el 1%. Normalmente el umbral de un observardor sin
entrenamiento de un osciloscopio es del tres porciento o más


Generalmente es deseable que la distorsión esté por debajo del 1%. Se hace
considerable esfuerzo en los sistemas alta fidelidad para que la distorsión
esté por debajo del 0.1%. La siguiente es una guía general sobre la
distorsión en sistemas de audio:

----------------------------------------------------------------
 Distorisón    comentarios
-----------    ------------------------------------------------
30%            Esta es una distorsión muy severa con componentes
               sólo 10 dB por debajo de la señal. Este nivel es
               típico de un radio barato sonando muy fuerte y con 
               un sonido carrasposo sobre todo en las notas bajas

10%            Esta es una distorisión severa con componentes 
               abajo de la señal primaria sólo 20 dB. Cualquiera
               puede detectar este nivel. Sin embargo puede ser
               tolerado por mucha gente
      
3%             Esta es una distorsión moderada típica de las 
               grabadoras de casette. En esta distorsión los 
               componentes están 30 dB por debajo de la señal
               primariay son generalmente escuchados como un
               ruido de banda ancha cuyo nivel es modulado por
               la señal. Es también tolerado por la mayoría de 
               las personas

1%             Este nivel es apenas audible aún para oídos
               entrenados ya que los componentes de distor
               sión están 40 dB por debajo de la señal
               primaria

0.3%           Baja distorsión. Los componentes de distorsión 
               están 50 dB por debajo de la señal primaria y
               muy poca gente tiene oídos entrenados para detectar
               esto

0.1%           muy baja distorsión. Los componentes de distorsión 
               están 60 dB por debajo de la señal primaria. Este es
               el límite que puede detectar un oído humano muy bien
               entrenado

0.03%          distorsión ultra baja. Los componentes de 
               distorsión están 70 dB abajo de la señal primaria

0.001%         distorsión extremadamente baja. Los componentes de 
               distorsión están 80 dB por debajo de la señal primaria
               Cualquiera que diga que detecta esta distorsión con
               su oído, está mintiendo
-----------------------------------------------------------------


## Midiendo la distorsión

El método clásico de medir la distorsión es aplicar una onda seno
extremadamente pura (onda seno con contenidos armónicos aproximadamente 80
dB por debajo de la fundamental y preferiblemente más de 100 dB abajo de la
fundamental) a un sistema y medir el contenido armónico relativo a la
fundamental en la señal de salida. Esto es conocido como distorsión
armónica total (THD: *Total Armonic Distortion*) y se calcula así:

$$ THD = \frac{rms\, de \,los \,armomincos}{rms \,de \,la \,fundamental} 100 $$

Hay dos métodos comunes para medir la THD.

El primero involucra el uso de un analizador de espectro para medir las
amplitudes de la fundamental y los armónicos significativos:

$$ THD = \frac{\sqrt{H_2^2 + H_3^2 + H_4^2 + H_N^2}} {H_1} * 100 $$

$H_1$ es la amplitud de la fundamental, $H_2$ es la amplitud del segundo
armónico y $H_N$ es la amplitud del n-ésimo armónico. El armónico más
fuerte dominará el resultado. Los armónicos de más de 20 dB abajo del
armónico más fuerte tienen un efecto limitado sobre el resultado final y se
pueden ignorar para este cálculo.

El segundo método es una aproximación del primer método e involucra un
instrumento llamado analizador de distorsión que es un filtro *notch* que
quita la frecuencia fundamental y deja pasar el resto. La distorsión se
determina midiendo el valor rms de la señal filtrada y el valor rms de la
señal total y usando esta ecuación:

$$ THD = \frac{rms\,senal\,filtrada} {rms\,senal\,total}*100 $$

Este segundo método da resultados exactos si la distorsión es menor que el
10%. La razón para la inexactitud a niveles más altos de distorsión es
debido al término del denominador incluye componentes de distorsión
contrario al primer método en el cual el denominador sólo incluye la
fundamental.



# Introducción a los Amplificadores #

Esta sección introduce a los estudiantes en los amplificadores
electrónicos. El tipo específico a ser discutido acá es conocido como
amplificador de pequeña señal. Este tipo de amplificador toma una señal
AC pequeña (tal vez en el rango de los nanovoltios a milivoltios) de algún
transductor o fuente de señal y la amplifica a un nivel más alto. Sin
importar si la entrada del amplificador es un voltaje o una corriente, el
propósito del amplificador es entregar ganancia de potencia. Esto es la
potencia entregada a la carga del amplificador es mayor que la potencia
entregada al amplificador por la fuente.

Hay varios conceptos para tener en cuenta sobre cualquier amplificador:

-  Cada señal tiene una impedancia de fuente $R_S$
-  Cada amplificador tiene una impedancia de entrada $R_i$
-  Cada amplificador tiene una impedancia de salida $R_o$
-  Un amplificador debe tener una ganancia de potencia mayor a 1 para que
   sea útil

Hay cuatro tipos de amplificador:

1. entrada y salida de voltaje: este tiene una ganancia de voltaje.
2. entrada de corriente y salida de voltaje: Este amplificador tiene una
   ganancia de transimpedancia.
3. entrada y salida de corriente: este amplificador tiene una ganancia de
   corriente.
4. entrada de voltaje y salida de corriente: este amplificador tiene una
   ganancia de transconductancia.   

Trataremos primero amplificadores de voltaje. Debe tenerse en cuenta que
con la circuitería adecuada cualquiera de los cuatro tipos de
amplificadores se puede comportar como un amplificador de voltaje. Los
amplificadores que primordialmente construimos en este curso serán de
entrada y salida de corriente o entrada y salida de voltaje.
Un amplificador está compuesto de al menos una etapa y puede tener dos o
más etapas para alcanzar altas ganancias de voltaje.

El modelo básico de un amplificador de voltaje consiste en tres elementos:
*  una entrada que tiene alguna resistencia *shunt* $R_i$,
*  Una fuente de voltaje controlada por voltaje que coloca un voltaje A
   veces el voltaje de entrada
*  y una resistencia en serie con esta fuente de voltaje llamada $R_o$ que
   conecta la fuente de voltaje a la salida.

Estos elementos están definidos como sigue:

$R_i$: Resistencia de entrada del amplificador

$A$: Ganancia del amplificador sin carga conectada

$R_o$: Resistencia de salida del amplificador


Hay dos divisores de voltaje que consideraremos. Uno ocurre en la entrada
del amplificador debido al divisor del voltaje formado por la resistencia
de la fuente y la impedancia de entrada del amplificador. El otro ocurre
en la salida del amplificador debido al divisor del voltaje formado por la
resistencia de salida del amplificador y la resistencia de la carga que se
está manejando. La presencia de estos divisores de voltaje reducen la
ganancia efectiva del amplificador. Hay tres tipos de ganancias de
voltajeque consideraremos:

* Ganancia sin carga: $A$
* Ganancia con carga: $A$*divisor de voltaje a la salida
* Ganancia neta: divisor de voltaje a la entrada * $A$ * divisor de voltaje
  a la salida.

Los factores de división de voltaje son los siguientes:

Divisor de voltaje de entrada 

$$ \frac{R_i}{R_s + R_i} = \frac{1}{R_s/R_i + 1} $$

Divisor de voltaje de salida

$$ \frac{R_L}{R_o + R_L} = \frac{1}{R_o/R_L + 1} $$

En el caso de amplificadores multietapa, la resistencia de entreda puede
ser la resistencia de salida de la etapa anterior y la resistencia de carga
puede ser la resistencia de entrada de la próxima etapa.


##Ganancia de potencia ##

La ganancia de potencia está definida como la potencia entregada a la carga
dividida por la potencia tomada de la fuente. Considerando voltajes de
entrada y salida, esto se puede expresar matemáticamente como

$$ P_g = \frac{P_L}{P_i} = \frac{V_L^2/R_L}{V_i^2 / R_i} =
(\frac{V_L}{V_i})^2 \frac{R_i}{R_L} $$

Donde

* $P_g$: Ganancia de potencia
* $V_i$: Señal de voltaje de entrada al amplificador
* $V_L$: Voltaje entregada a la carga
* $R_i$: Resistencia de entrada del amplificador
* $R_L$: Resistencia de carga

$V_L$ es el voltaje de entrada multiplicado por la ganancia con carga del
amplificador

$$ V_L = Vi \frac{A}{R_o/R_L + 1} $$

Combinando las ecuaciones da:

$$ P_g = \frac{A^2 (R_i / R_L}{(R_o / R_L + 1)^2}  $$

Con un poco de álgebra, la ecuación anteror se puede expresar como:

$$P_g = \frac{A^2 (R_i /R_L)}{(R_o / R_L) + 2 + R_L / R_o}  $$

Hay un número de observaciones que podemos hacer acerca de la ecuación. Una
manera de alcanzar una alta ganancia de potencia es tener una $R_i$ mucho
más grande que $R_L$. La ganancia de potencia se maximiza si $R_o=R_L$,
ya que esta situación minimiza el denominador. Considere los siguientes
ejemplos:

* $A = 32, \, R_i / R_L  = 2 R_o / R_L = 1 \rightarrow P_g = 512$. Un amplificadro típico
* $A = 10, \, R_i /R_L = 0.3 R_o / R_L = 5  \rightarrow P_g = 0.83$. Un amplificador poco
  útil ya que $P_i < P_o$.
* $A = 0.8, \, R_i / R_L = 1000,\,R_o/R_L=1 \rightarrow P_g = 160$ Otro
  amplificador típico. (ganancia de voltaje $<1$)

## Prueba real

Hay una prueba real que debemos considerar. ¿Cuál es la razón de potencia
entregada a la carga con un amplificador a la potencia que debería haber
sido entregada a la carga ...?
¿Es posible alcanzar menor potencia a la carga con un amplificador (que
tenga una ganancia de potencia mayor que 1) por simplemente conectar la
fuente a la carga sin usar un amplificador? Estas preguntas deben ir siendo contestadas por el mismo estudiante. 




# Diseño general de BJT


## Introducción

El proceso de realizar el diseño de un amplificador de AC usando
transistores bipolares involucra:

1.  Determinar el tipo apropiado de amplificador para usar.
2.  Escoger ciertos valores de resistencia basados en la resistencia de
    carga.
3.  Determinar las condiciones apropiadas de polarización para el tipo de
    amplificador que se está diseñando.
4.  Realizar el diseño de la polarizaicón DC para alcanzar estas
    condiciones.
5.  Calcular el valor necesario de $R_{E1}$ para alcanzar una ganacia específica
    para los amplificadores emisor común.
5.  Determinar el valor de los condensadores de acoplamiento para alcanzar
    la respuesta especificada en baja frecuencia.

El paso 6 no se discutirá y será detallado en otra nota. Esta sección trata
solo con determinar los valores de las resistencias.

Es posible que la ganancia deseada no se pueda alcanzar. Esto no se
conocerá hasta que se realicen algunos cálculos en el proceso de diseño que
produzcan valores negativos de resistencias. La solución es añadir una o
más etapas de ganancia.

Cada tipo de amplificador tendrá diferentes cuestiones a considerar:

## Escogencia del tipo de amplificador

Los tres tipos de amplificadores: emisor común, base común y colector común
tienen características muy diferentes. Para cualquier amplificador dado uno
de estos amplificadores será la mejor opción sin embargo otro tipo de
amplificador también podría comportarse bien. En general, el mejor
amplificador para usar en es aquel cuya resistencia de entrada es
comparable a la resistencia de la fuente  y cuya resistencia de salida es
comparable a la resistencia de carga. Normalmente no es posible satisfacer
las características de de resistencia de entrada y salida simultaneamente.
Algunas veces es necesario realizar el diseño para dos de los tres posibles
tipos para vier si uno de ellos suministra las mejores características. La
siguiente tabla suministra una guía aproximada cuando el objetivo es
alcanzar una alta ganancia de potencia. El parámetro clave que marca la
decisión es la razón de al fuente y la resistencia de carga.

Resistencia fuente/resistencia de carga      Buena opción
--------------------------------------       ---------------
> 10                                         CC
2 a 10                                       EC o CC
0.5 a 2                                      EC
0.1 a 0.5                                     EC BC
< 0.1                                        BC
------------------------------------------------------------

Se puede ver que el amplificador común emisor es capaz de alcanzar la
máxima ganancia posible de potencia sin embargo esto no es útil si el
amplificador no es el mejor para una situación dada alguno de los otros
tipos suministrará una alta ganancia de potencia en estas situaciones.

Sobre todo, el amplificador emisor común es el más flexible en términos de
resistencia de entrada y salida mientras que alcanza una ganancia de
potencia razonable.

El amplificador base común es generalmente útil sólo cuando la resistnecia
de la fuente es mucho más pequeña que la resistencia de carga o se necesita
una aplicación de frecuencia muy alta.
El amplificador base común es capaz de el mayor ancho de banda de
amplificación.

El amplificador colector común es generalmente solamente útil cuando la
resistencia de la fuente es mucho más alta que la resistencia de carga. Las
dos aplicaciones principales para amplificadores colector común están en
las etapas de entrada para incrementar la impedancia de entrada del
amplificador o en las etapas de salida para disminuir la impedancia de
salida del amplificador.

## Cuestiones de estabilidad

La estabilidad como se menciona acá se refiere a las características
deseables de voltajes y corrientes de polarización  son afectadas por los
cambios en la temperatura o variaciones en el beta del transistor. La
estabilidad y ganancia de potencia pueden estar en oposición así que el
compromiso del ingeniero es tener el criterio para solucionar esta
dualidad.

El siguiente es un resumen de los pasos de diseño de cada tipo de
amplificador:

## Diseño emisor común 

Los pasos básicos son:

1.  Escoger un valor adecuado de $R_{C}$ basado en la resistencia de carga.
2.  Calcular un valor para $V_{BB}$ basado en las necesidades de estabilidad de
    temperatura.
3.  Determinar el valor de $V_{CQ}$ (muy complicado -- ver otras notas).
4.  Completar el diseño de la polarización.
5.  Calcular el valor de $R_{E1}$ para alcanzar una ganancia AC específica.

## Diseño base común

Es muy similar al diseño de amplificadores emisor común:

1.  Escoger un valor adecuado de $R_{C}$ basado en la resistencia de carga.
2.  Calcular un valor para $V_{BB}$ basado en las necesidades de estabilidad de
    temperatura.
3.  Determinar el valor de $V_{CQ}$ (muy complicado -- ver otras notas).
4.  Completar el diseño de la polarización.
5.  Calcular el valor de $R_{E1}$ para alcanzar o una impedancia de entrada.
    específica o una ganancia AC específica.

## Diseño colector común

El diseñador no tiene control sobre la ganancia de un diseño colector
común. La ganancia será siempre menor a uno. Las ganancias típicas varían
de 0.99 a 0.7. El diseñador tiene algún control sobe la impedancia de
salida añadiendo un resistor $R_{E1}$, en serie con la salida. Este resistor
incrementa la impedancia de salida y también incrementa la impedancia de
entrada. Sin embargo, en todos los casos, la ganancia neta decrece como
resultado de la división de voltaje adicional pero alguna adaptación de
impedancia puede ser más importante que la ganancia.


1.  Escoger un valor adecuado de $R_{C}$ basado en la resistencia de carga.
3.  Determinar el valor de $V_{CQ}$ para máxima excursión.
2.  Calcular un valor para $V_{BB}$.
4.  Completar el diseño de la polarización.
5.  Calcular el valor de $R_{E1}$ para alcanzar una impedancia de salida
    específica.



# Amplificadores multietapa 


Existe un límite de cuánta ganancia se puede alcanzar de un amplificador de
una sola etapa. Los amplificadores de una sola etapa también tienen límites
en las impedancias de entrada y de salida. Los amplificadores multietapa
son usados para alcanzar altas ganancias y suministran mejor control de
impedancias de entrada  y salida. Dos grandes ventajas que tienen los
amplificadores multietapa sobre los de una sola etapa son la flexibilidad
en la impedancia de entrada y salida y una ganancia mucho más grande.

Los amplificadores multietapa se pueden dividir en lazo abierto y
realimentación negativa. Los amplificadores de lazo abierto son fáciles de
entender y diseñar pero son sensibles a las variaciones ambientales. Los
amplificadores de realimentación negativa son un poco más difíciles de entender pero tienen
la ventaja de ser menos sensibles a las variaciones ambientales y de
componentes.
Esta sección se enfocará en amplificadores de bucle abierto. Un buen amplificador de
bucle cerrado comienza con un buen diseño de un amplificador de lazo
abierto.

Para muchas aplicaciones de amplificadores es deseable que la impedancia de
entrada sea muy alta.  Así es común  que para la primera etapa del
amplificador sea un colector común para BJT o drenador común para los FET.
Algunas veces la alta impedancia de entrada no es importante y se usa un
emisor común. Los FET son usados normalmente sólo para la etapa de entrada y
para aplicaciones específicas de impedancias de entrada muy grande.

Es también común la situación donde es deseable  que la impedancia de salida
sea baja. En este caso se usa típicamente un  circuito colector común. Pero en
algunos casos no son necesarios  donde no hay impedancias de salida muy bajas y la última
etapa puede ser un emisor común.

Para las etapas de amplificación intermedias se acostumbra usar circuitos
emisor común porque ellos tienen ganancias de voltajes muy grandes.

El análisis de amplificadores multietapa se realiza iniciando con la etapa
de entrada y avanzando hacia la etapa de salida. Los métodos de análisis
son idénticos a los de los amplificadoes de una sola etapa. Un punto de
confusión  para los estudiantes que analizan amplificadores directamente
acoplados es que la resistencia de colector de una etapa se convierte en la
resistencia de base de la siguiente etapa. En las etapas que involucran
amplificadores colector común es necesario hacer algunas aproximaciones modificadas,incluyendo algunas
aproximaciones simplificadoras, porque las características
de etapas de colector común son dependientes de impedancias externas. El
estudiante no debería preocupartse de las aproximaciones ya que es rutinario
hacer esto todo el tiempo en la profesión. Una ventaja de los amplificadores
de lazo cerrado es que los errores de aproximación se reducen ampliamente.

El diseño de amplificadores multietapa comienza en la salida y progresa hacia
atrás en la entrada. Inialmente el número de etapas no se conoce. El diseño
progresa con etapas adicionales hasta que se reúnan los requerimientos. Es
común para ello hacer una buena cantidad de iteraciones en el diseño y el
número de etapas puede variar en cada iteración.

La siguiente tabla resume algunas de las diversas construcciones de
amplificadores multietapa y sus características:

1    2    3    4      Rin        Rout            Ganancia de  voltaje
---- ---- ---- ----   --------   ----------      -------------------
EC   EC               Media      Media           Alta
EC   CC               media      Baja            Media
CC   EC               Alta       Media           Media
CC   CC               Muy alta   Muy baja        <1
EC   EC   EC          Media      Media           Extremadamente alta
EC   EC   CC          Media      Media           Muy alta
EC   CC   EC          Media      Media           Muy alta
EC   CC   CC          Media      muy baja        Media
CC   EC   EC          Alta       Media           Muy alta
CC   EC   CC          Alta       Baja            Media
CC   CC   EC          Muy alta   Media           Media
CC   CC   CC          Muy alta   Baja            <1
CC   CE   CE   CC     Alta       Baja            Muy alta
---------------------------------------------------------------------------
Table: Características generales de amplificadores multietapa


Descriptor            Rin o Rout
----------            -------------------------------------------------
Bajo                  Menos que unos cientos de Ohoms
medio                 De unos pocos cientos a unos pocos miles de Ohms 
Alto                  Unos pocos miles a decenas de mil de Ohms
Muy alto              Unos decenas de miles de Ohms
Extremadamente alto   Unos cientos de miles de Ohms
-----------------------------------------------------------------------
Table: Cuantificación de valores de Resitencias de entrada y salida

Descriptor               Ganancia de voltaje
--------------------     -------------------
Bajo            
medio                    < 50        
Alto                     50 a 500    
Muy alto                 500 a 5000 
Extremadamente alto      > 5000      
------------------------------------------

Table: Cuantificación de las ganancias de voltaje

## Acoplamiento AC versus acoplamiento DC

El método más simple para construir un amplificador multietapa es colocar
en cascada varias etapas con su respectivo acople AC. El acoplamiento AC
bloquea los caminos DC y hace el diseño y análisis de polarización más
simple. Un ejemplo típico se muestra en la figura \ref{fig:ac}

![Amplificador multietapa con acoplamiento capacitivo\label{fig:ac}](imagenes/multietapa-ac-lt.png)

El uso de acoplamiento de AC requiere una gran cantidad de condensadores y
resistores que podrían ser eliminados con un diseño innovador. La clave
para esto es el de organizar para el punto Q de voltaje en la salida de una
etapa sea el mismo que el punto Q de voltaje en la entrada de la siguiente
etapa.  Entonces los condensadores de acoplamiento AC y los resistores
asociados a la polarización no son necesarios. Los resistores de polarización y así reducir la ganancia del
amplificador.  Un amplificador diseñado sin eso se puede alcanzar una alta
ganancia con muchas menos partes. El siguiente circuito muestra el primer
ejemplo que las partes innecesarias quitadas. Observe la simplicidad de la
figura \ref{fig:dc}

![Amplificador multietapa con acoplamiento directo\label{fig:dc}](imagenes/multietapa-dc-lt.png)

Los amplificadores directamente acoplados son un reto para el diseñador
debido a que el análisis de la polarización y los cálculos de diseño son
más complicados. Es importante para diseñar el amplificador tal que la
ganancia DC sea baja. Pero, esto es por lo que les pagan a los ingenieros. 
Usando sólo las partes necesarias para cumplir la función deseada baja los
costos para el fabricante.

Una buena cuestion para preguntar y explorar es, ¿Existe un límite
superior en la ganancia que puede tener un amplificador? La
respuesta es sí pero no existe un valor específico. Depende de una variedad de
factores. Un fenomeno limitante es el ruido aleatorio que existen en toda
la electrónica. Estos voltajes pequeños a menudo en el rango de nanovoltios
a microvoltios dominarán o aún saturarán la salida del amplificador si la
ganancia es lo suficientemente alta. Dependiendo del ancho de banda deseado
y cuánto ruido se puede tolerar en la salida el límite práctico de ganancia
puede variar de menos de mil a muchos millones. Los amplificadores típicos
en las frecuencias de audio que operan en micrófonos o equipos de sonido
tienen ganancias de voltaje en el rango de los miles. La ganancia total de
voltaje de un micrófono a un parlante de miles de vatios en un auditorio
puede estar en el rango de 50000. La ganancia de potencia puede estar en el
rango de 120 dB.

Los amplificadores pueden ser o de lazo abierto (sin realimentación de la
salida a la entrada) o de lazo cerrado (parte de la salida amplificada se
realimenta a la entrada). En un curso básico de electrónica sólo hay tiempo
de discutir los amplificadores de lazo abierto. Virtualmente el cien
porciento 
los amplificadores del mundo real son de lazo cerrado utilizando
realimentación negativa para reducir características indeseables del
amplificador. Los amplificadores de realimentación negativa pueden alcanzar
una ganancia muy estable y muy específica sin variar la temperatur y las
características del transistor así como una distorsión muy baja.
Muchos retos de la polarizacón en los amplificadores multietapa son
eliminados con realimentación negativa.
La matemática es más complicada (una vez más, es por lo que le pagan a los
ingenieros) y uno debe primero entender los amplificadores de lazo abierto
antes de evolucionar hacia los amplificadores de lazo cerrado.

Los transistores NPN y PNP son a  menudo usados en amplificadores
multietapa para mejorar las características que se pueden
alcanzar usando sólo un tipo. La sensibilidad de temperatura puede ser
reducida drásticamente usando los dos tipos de transisitores en ciertos circuitos tal que
las caídas de voltaje en la base-emisor prácticamente se cancelan --así
reduciendo los efectos de la temperatura.
Cada caída de voltaje individual es muy sensible a la temperatura, pero el
resultado neto es la resta de dos. El uso de un NPN emisor común seguido
de un PNP colector común (o viceversa) a la salida permite una
condición cercana a la óptima para la polarización de los dos.

Los siguientes son ejemplos de amplificadores multietapa de lazo abierto:

![Amplificador de alta ganancia de voltaje\label{fig:voltaje}](imagenes/multietapa-voltaje-dc.png)

El circuito de la figura \ref{fig:voltaje} es capaz de una alta ganancia. La ganancia puede
alcanzar hasta varias decenas de miles si $R_{iE1B}$  y $R_{E2B}$ son cero.
Estos resistores a menudo no son cero para reducir la ganancia a niveles
deseados.

![Amplificador de alta impedancia de entrada\label{fig:alta}](imagenes/multietapa-alta-impedancia-in.png)

El circuito de la figura \ref{fig:alta} tiene un colector común de etapa de entrada para
una impedancia de entrada alta, seguida de un amplificador emisor común
para alta ganancia de voltaje. Esta característica suministra mucha mayor
ganancia de potencia que la que se alcanza sólo con un amplificador emisor
común.
Este circuito tiene una sesibilidad muy baja a la temperatura porque 
la caída de voltaje base emisor prácticamente se cancela.

![Amplificador de alta impedancia de entrada, baja impedancia de
salida y alta ganancia de voltaje\label{fig:cuatro}](imagenes/multietapa-4-dc.png)

El circuito de la figura \ref{fig:cuatro} es el último en el que es práctico hacerlo con
amplificadores directamente acoplados sin necesidad de realimentación
negativa. Este circuito tiene una etapa de entrada de colector común que
suministra una impedancia de entrada alta y un colector común para la etapa
de salida para la etapa de salida y así suministra una impedancia baja de
salida. Las dos etapas de emisor común en la mitad son capaces de obtener
grandes ganancias de voltaje.


Las siguientes imágenes muestran ejemplos de amplificadores multietapa de
lazo cerrado:

![Amplificador inversor con realimentación\label{fig:inversor}](imagenes/multietapa-realimentado.png)

El circuito de la figura \ref{fig:inversor} se caracteriza por la simplicidad y la alta
linealidad en la señal de salida gracias a la realimentación negativa. El
voltaje de salida DC generalmente se fija a $\frac{V_{CC}}{2}$ por la razón del resistor
de realimentación y el resistor de base a tierra. La ganancia inversor se
fija por la razón del resistor de realimentaciń al resistor de entrada.

![Amplificador inversor con realimentación de alta ganancia\label{fig:alta}](imagenes/multietapa-realimentado-4.png)

El circuito de la Figura \ref{fig:alta} es la versión de alta ganancia del circuito de la
figura anterior. La operación es similar excepto que alcanza una ganancia
mucho más alta. La ganancia de bucle abierto del amplificador (no práctica
para operar en este modo) es de cientos de miles.

![Amplificador no inversor con realimentación\label{fig:fase}](imagenes/multietapa-realimentado-no-inversor.png)

El circuito de la Figura \ref{fig:fase} es un ejemplo de realimentación en fase para
impulsar impedancia de entrada mientras baja la impedancia de salida. La
realimentación estabiliza la polarización en DC  y la ganancia de voltaje.


# Ejemplo de análisis de amplificador multietapa #

Se describirá cómo analizar un amplificador multietapa con acoplamento
directo, contruido con transistores NPN y PNP, tal como se muestra en la
figura \ref{fig:analiza}

![Amplificador de alta impedancia de entrada y baja impedancia de salida\label{fig:analiza}](imagenes/amplificador.png)

El circuito de ejemplo explora varias cuestiones de cómo manejar el
acoplamiento directo. La clave del análisis es "divide y reinarás".

Para el análisis comenzaremos en la entrada del amplificador y trabajar
hacia la salida. Los objetivos del análisis son determinar las
características de caja negra y las diferentes polarizaciones de los voltajes en el circuito. 

* Resistencia de entrada: $R_{in}$
* Resistencia de salida: $R_{out}$
* Ganacia de voltaje: $A_v$
* Los voltajes de polarización: $V_{CE1}$, $V_{CE2}$, $V_{CE3}$, $I_{CQ1}$, $I_{CQ2}$, $I_{CQ3}$

Tomaremos el beta del transistor como 150 y $V_{BE}=0.65$

##Análisis de polarización de la primera etapa ##

La primera cosa que se hace es calcular las condiciones de polarización de
$Q_1$. Primero calcularemos el voltaje de circuito abierto, $V_{BB1}$ para la
base del circuitos. Esto es:


$$ V_{BB1} =\frac{V_{CC} * R_{B11}}{R_{B11} + R_{B12}}  =\frac{15 * 36k}{360k + 36k} = 1.363 $$

Entonces ahora calculamos $R_B$ de $Q_1$

$$R_{BQ1} = R_{B12} || R_{B11} = 360 || 360k = 32.73k $$

Para el circuito emisor tenemos un acople directo con la segunda etapa
cuyas características aún no conocemos. La primera etapa es un amplificador
colector común y esto puede ser difícil de analizar a menos que hagamos una
simplificación.
Para un amplificador "*bien diseñado*" los efectos de polarización de carga
de la próxima etapa son pocos --a menudo muy pequeñas. Por definición un
amplificador bien diseñado tiene una dependencia mínima de las
características de un transisitor en particular. Entonces asumiremos que
este amplificador está "*bien diseñado*". Entonces, tenemos que hacer los
cálculos de polarización, podemos verificar o no usando los resultados para
recalcular las condiciones de polarización en la primera etapa. Si la nueva
respuesta no cambia mucho, entonces nuestra aproximación fue buena.

Así ignoraremos la segunda etapa y calcularemos la corriente de emisor de
$Q_1$ como

Haciendo la malla
$$ V_{CC} = I_{E1}* R_{E1} + V_{EB1} + V_{BB1} + I_{B1}* R_{BQ1} $$ 
$$ I_{E1} = \frac{ - V_{CC} + V_{EB1} + V_{BB1} } { R_{E1} + \frac{R_{BQ1}}{\beta +1}} $$ 
$$ I_{E1} = \frac{(1.364 - 15 + 0.65)}{(18k + 32.73k / 151)} = -0.713 mA $$

Las polaridades en esta ecuación pueden no parecerle correctas a algunos
estudiantes. Pero observe que los 15 voltios de la fuente de poder es
el $V_{EE}$ para esta etapa ya que  es acá donde el emisor se conecta. Debido a
que el
transistor es PNP sumamos $V_{BE}$ en lugar de restarlo. Piense del numerador como el
voltaje a través de $R_E$ medido relativo a $V_{CC}$ ($+ 15V$ en este caso).

Ahora calculamos el voltaje en el emisor de $Q_1$ o la base de $Q_2$. 
Generalmente deseamos medir voltajes relativos a tierra así el voltaje en
la base de Q2 es

$$ V_{E1} = V_{B2} = V_{CC} - I_{E1} * R_{E1} 
 = 15 - 0.713 mA * 18K = 2.17 V $$

La última cosa para hacer es calcular el voltaje en la base de $Q_1$ relativo a
tierra. Este voltaje será algo más alto que el voltaje en circuito abierto
calculado antes porque la corriente de base está hacia fuera del transistor para
un PNP en lugar que hacia adentro. Este voltaje es:

$$ V_{B1} = V_{B2} - V_{BE1} = 2.17 - 0.65 = 1.52 $$

## Análisis de la polarización de la segunda etapa ##

Hemos finalizado el cálculo de la polarización de la primera etapa. La
próxima tarea es determinar la $R_B$ efectiva para $Q_2$. Esta es mucho más pequeña
que los $18k$ de la resistencia de emisor para $Q_1$. El valor correcto es la
resistencia de salida DC de la etapa $Q_1$ que es el resistor de emisor (18k)
en paralelo con la resistencia de base divida por $\beta +1$ esto es

$$ R_{B2} = R_{E1} || \frac{R_{B1}}{\beta + 1} $$

Así la resistencia efectiva $R_B$ para $Q_2$ es

$$R_{B2} \ll R_{E2} $$

$$R_{B2} = 18000 || \frac{32.73}{151} = 214 \Omega $$

Observe que este valor es despreciable comparado con $R_{E2}$ (3.6K) y es una
característica de un amplificador bien diseñado. Así, el efecto de la
corriente de base $Q_2$ en la condición de polarización para la primera etapa
discutida antes es insignificante. Tuvimos que asumir esto en primera
instancia. Ahora esto está probado. Si este no fuera el caso entonces
nuestros cálculos en la primera etapa no serían correctos y tendríamos que
aplicar otras ecuaciones matemáticas y probablemente  iteraciones para
obtener los resultados correctos. El término $R_{BQ2}$ está incluido en el
siguiente cálculo sólo para no confundir al estudiante, observe que
$\frac{214}{151}$ es insignificante comparado con el resistor de emisor de 3.6K

$$ V_{BB2} =I_{B2} R_{B2} + V_{BE2} + I_{E2} R_{E2} = \frac{I_{E2}}{\beta+1} R_{B2} + V_{BE2} + I_{E2} R_{E2}$$

$$ I_{E2} = \frac{V_{BB2} - V_{BE2}}{\frac{R_{B2}}{(\beta+ 1)} + R_{E2}} $$

$$ I_{E2} = \frac{(2.17 - 0.65)}{(3.6K + 214/151)}= 422 uA $$

El voltaje de emisor de $Q_2$ es el mismo que el de el voltaje de base de $Q_1$
o
1.52V prácticamente independiente de la temperatura. Esto se consigue por
la combinación correcta de transistores PNP y NPN en un circuito para
obtener un resultado neto mejor que uno sólo.

Ahora calculamos la condición de polarización en el colector de Q2. La
primera cosa para hacer es calcular la corriente de colector multiplicando
la corriente de emisor por 

$$ I_{C2} = I_{E2} * \frac{\beta}{(\beta + 1)} $$

Esto da como resultado
una

$$ I_{C2} = 419 uA $$

## Análisis de polarización de la tercera etapa ##

En este punto podemos calcular un voltaje de circuito abierto (por ejemplo la base de
$Q_3$ no conectada) para el colector de $Q_2$. El voltaje actual no se puede
determinar hasta que no conozcamos las condiciones de polarización para
$Q_3$. El voltaje de circuito abierto (o Thevenin) de $V_{C2}$ es el mismo que $V_{BB3}$
para $Q_3$. $R_B$ para $Q_3$ es simplemente la resistencia de colector de $Q_2$ ya que
el colector de $Q_2$ se comporta como una fuente de corriente o una
resistencia infinita (o al menos muy grande).

![Análisis de la polarización de la tercera etapa\label{fig:terceraetapa}](imagenes/terceraetapa.png)

$$R_B= R_{C2}$$

$$ V_{b3} = V_{c2} = V_{BB3} = V_{CC} - I_{C2}* R_{C2} = 15 - 419 uA * 24K = 4.94 V $$

Ahora calcularemos la corriente de emisor para $Q_3$

$$ V_{CC} = I_{E3} R_{E3} + V_{BE3} + V_{BB3} + I_{B3} R_{BQ3}$$

$$ I_{E3} = \frac{4.94 - 15 + 0.65} {1000 + 24K/151} = -812 mA $$

El voltaje de emisor de $Q_3$ con respecto a tierra es

$$ V_{E3} = 15 - 812 mA * 1k = 6.88 V $$

El voltaje en la base de $Q_3$ será más grande que el voltaje en circuito
abierto, $V_{BB3}$ calculado anteriormente ya que este es un transistor PNP y es 

$$ V_{B3} = 6.88 - 0.65  = 6.23 V $$

## Análisis AC ##

Este es análisis completo de polarización. Ahora estamos listos para el
análisis AC. Primero calcularemos la resistencia dinámica de cada uno de
los transistores

$$ r_{e1} = \frac{0.026} {0.713 mA} = 36.5 \Omega $$

$$ r_{e2} = \frac{0.026} {0.422 mA} = 61.6 \Omega $$

$$ r_{e3} = \frac{0.026} {8.12 mA} = 3.2 \Omega $$

## Cálculo de la resistencia de entrada del amplificador ##

Ya que la primera etapa es colector común necesitamos conocer la impedancia
en el circuito emisor que será 18k en paralelo con la impedancia de entrada
de la segunda etapa. La impedancia de entrada de la segunda etapa se
encuentra de la forma normal:

![Cálculo de la resistencia de entrada del amplificador\label{fig:resistenciadeentrada}](imagenes/calculodelaresistencia.png)

$$ r_{bt2} = (\beta + 1) (r_{e2} + R_{E2A} || R_{E2B})$$
$$ r_{bt2} = 151 * (61.6 + 3600 || 47) = 16.3 k $$

La impedancia de entrada de la primera etapa se encuentra de la manera
usual:

$$ r_{bt1} = (\beta +1 ) ( r_{e1} + R_{E1} || r_{bt2} )$$
$$ r_{bt1} = 151 * (36.5 + 18k || 16.3 k) = 1.3 M $$

La impedancia neta del amplificador es entonces la $R_B$ de la primera etapa
en paralelo con $r_{bt1}$.

$$ R_{in} = R_{B1} || r_{bt1}$$
$$ R_{in} = 32.7k || 1.3M = 31.9k $$



## Calculando la impedancia de salida del amplificador ##

La resistencia de salida del amplificador es simplemente la resistencia de
salida de la etapa colector común de salida que se calcula como:

$$ R_{out} = R_{E3} || \left( r_{e3} + \frac{R_{C2}}{(\beta+1)} \right)$$
$$ R_{out} = 1000 || \left (3.2+\frac{24k}{151}\right)= 139.5 \Omega $$

![Cálculo de la resistencia de salida del amplificador\label{fig:resistenciadesalida}](imagenes/impendanciadesalida.png)

## Cálculo de la ganancia de voltaje del amplificador sin carga ##

La ganancia de voltaje del primer amplificador es 

$$ A_{v1} =\frac{R_{E1}}{r_{e1} + R_{E1}}$$
$$ A_{v1} = \frac{18k} {36.5 + 18k} = 0.998 $$

La resistencia de salida de la primera etapa es al menos (tomando la
resistencia de la fuente que no conocemos, que sea muy grande comparada con
la RB de la primera etapa) dada por lo siguiente

$$ R_{o1} = R_{E1} || \frac{R_{in}}{\beta + 1}$$
$$ R_{o1} = 18k || \left(36.5 + \frac{32.73k}{151}\right) = 249.7 \Omega $$

La resistencia de entrada $r_{bt2}$ a la segunda etapa ya se calculó como 16.3k

El factor de división de voltaje entre la primera y segunda etapa es 

$$ V_{d12} = \frac{r_{bt2}}{R_{o1} + r_{bt2}}$$ 
$$ V_{d12} = \frac{16.3k}{(249.7 + 16.3k)} = 0.9875 $$

La ganancia de la segunda etapa es

$$ A_{v2} = \frac{150}{151} * \frac{24k}{(61.6 + 3600 || 47)} = 220.8 $$

La resistencia de salida de la segunda etapa es $R_{o2} = 24k$ 

La resistencia de entrada de la tercera etapa es

$$ R_{in3} = (\beta + 1) * ( r_{e3} + R_{E3})$$
$$ R_{in3} = 151 * (3.2+1000) = 151.5 k $$

El factor de división de voltaje entre las etapas dos y tres es

$$ V_{d23} = \frac{R_{in3}}{R_{o2} + R_{in3}}$$
$$ V_{d23} = \frac{151.5k}{(24k + 151.5k)} = 0.863 $$

La ganancia de voltaje de la tercera etapa es

$$ A_{v3} = \frac{R_{c3}}{r_{e3}+R_{C3}}$$
$$ A_{v3} = \frac{1000}{(3.2 + 1000)} = 0.997 $$

El voltaje total del amplificador es

$$ A_{v} = A_{v1}*V_{d12}*A_{v2}*V_{d23}*A_{v3}$$
$$ A_{v} = 0.998 * 0.985 * 220.8 * 0.863 * 0.997 = 186.7 $$

## Resumen de resultados ##

$$ R_{in} = 31.9k $$

$$ R_o = 139.5 \Omega $$

$$ A_v = 186.7 $$

## Ejercicio ##

El estudiante debe crear un circuito equivalente usando etapas NPN-PNP-NPN
e intercambiar el lugar de la tierra y de $V_{cc}$ (ayuda: redibuje el circuito
para relacionar con este). Entonces analice este circuito usando el mismo
proceso que se describe acá. El método  y resultados serán idénticos
excepto de las obvias polaridades. Algunos voltajes serán diferentes ya que
el punto de referencia se ha movido con el intercambio de $V_{cc}$ y tierra. Por
ejemplo $V_{b2}$ = 15 - 2.17 = 12.83 V

# Fuentes
* [1] <http://www.kennethkuhn.com/students/ee351/multistage_amplifiers.pdf>

* [2] <http://www.kennethkuhn.com/students/ee351/bjt_general_design.pdf>

* [3] <http://www.kennethkuhn.com/students/ee351/multistage_analysis_example.pdf>

* [4] <http://www.kennethkuhn.com/students/ee351/amplifiers.pdf>

* [5] <http://www.kennethkuhn.com/students/ee351/distortion_of_signals.pdf>

# El papel del amplificador de potencia 

El amplificador de potencia en un sistema de audio convierte la señal de la línea en una gran señal que pueda manejar el parlante.

El nivel de la señal de la línea se encuentra típicamente entre 1V a 3V  RMS a máxima potencia y no se espera que suministre mucha corriente al amplificador de potencia.

Un amplificador de potencia típico tendrá una impedancia de entrada mayor a 10K$\Omega$. Un amplificador de 100W manejando una carga de 8$\Omega$ necesitará producir aproximadamente 28V RMS y 3,5 A RMS a toda potencia con una señal senoidal como entrada. 

$$P=\frac{V^2}{R}$$ 
$$V=\sqrt{PR}=\sqrt{800}=28V$$
$$I^2R=P$$
$$I=\sqrt{\frac{P}{R}}=3,5A$$

Así el trabajo de un amplificador de potencia es producir un voltaje y una corriente de valores considerablemente altos.

Un rango común para la ganancia de voltaje de un amplificador de potencia se encuentra en el orden de 20 a 30. Un voltio RMS en un amplificador de potencia con una ganancia de 20  producirá 50W.


![Amplificador de potencia manejando una carga\label{fig:amplificador}](imagenes/amplificadordepotencia.png)

$$P=\frac{20^2}{8}=\frac{400}{8}=50W$$

Idealmente, el amplificador de potencia tiene una impedancia de salida muy baja, de tal forma que actúa como una fuente de voltaje manejando la carga.

## Especificaciones de desempeño básicas

###Potencia máxima

La máxima potencia casi siempre se mide sobre una carga de 8$\Omega$ y otras veces sobre una carga de 4$\Omega$. Un voltaje dado aplicado a una carga de 4$\Omega$ causará que fluya el doble de corriente y por lo tanto también la cantidad de potencia será el doble. 

$$P=I^2R_{L}=\frac{I^2R_{L}}{2}=\frac{P}{2}$$

La correcta terminología para la potencia nominal es potencia de onda seno promedio continua. Sin embargo, frecuentemente se toma la libertad la libertad de usar el término de W RMS.

###Respuesta en frecuencia

La respuesta en frecuencia de un amplificador de potencia debe extenderse sobre la banda de audio completa de 20 Hz a 20KHZ dentro de una tolerancia razonable. Los amplificadores modernos, por lo general exceden este rango con una respuesta en frecuencia de 5Hz a 200KHz.

La respuesta en frecuencia para un amplificador de este tipo se ilustra en la siguiente figura: 

![Respuesta en frecuencia del amplificador\label{fig:res}](imagenes/respuestafrecuencia.png)

Mientras que la tolerancia asignado a la respuesta de frecuencia de los altavoces es a menudo $\pm 3$ dB, la tolerancia asociada con los amplificadores de potencia es generalmente +0 dB, -3 dB, o más fuerte. Especificación de dónde un amplificador es por 3 dB del nominal de referencia 0 dB es la manera convencional de especificar el ancho de banda de un sistema. Esto se refiere a menudo como el ancho de banda de -3dB.

La respuesta en frecuencia para un amplificador menos capaz se muestra en la figura. Este amplificador tiene un ancho de banda de -3dB de 10Hz a 80KHz. Su respuesta cae 1dB a 20 Hz y 0,5dB a 20 KHz.

###Ruido

Es importante que los amplificadores de potencia produzcan poco ruido, ya que el ruido existe siempre independientemente del ajuste de control de volumen y el nivel de escucha. Esto es particularmente evidente cuando los amplificadores se utilizan con altavoces de alta eficiencia. El ruido generalmente se especifica como tantos decibelios abajo ya sea de la potencia de salida máxima o con respecto a 1 W. El número anterior será más grande por 20 dB para un amplificador 100W.

###Distorsión

La especificación más común para la distorsión es la distorsión armónica total (THD), que por lo general se especifica en una o dos frecuencias o en un rango de frecuencias. Se especifica típicamente a un nivel de potencia dado con el amplificador manejando una impedancia de carga especificada. Un buen amplificador 100W podría tener un THD-1kHz (referido como THD-1) de 0.005% a 100W en 8$\Omega$. Ese mismo amplificador podría tener un THD a 20kHz (THD-20) de 0.02% hasta 100W en 8$\Omega$.

Alcanzar un buen desempeño THD-20 es mucho más difícil de lograr y generalmente es un mejor indicador del rendimiento del amplificador. En la práctica, la especificación de la distorsión armónica se describirá como THD+N, donde el N se refiere al ruido. Esto refleja la forma en que se mide más a menudo THD. Al medir THD-1, una onda sinusoidal fundamental se aplica a la entrada del amplificador.
La señal de salida se le aplica a un filtro muy estrecho. Todo lo demás, ambos armónicos de distorsión y el ruido, se mide, dando lugar a la THD+N. 

Para el voltaje y corriente de salida, la tabla muestra:
* El valor RMS del voltaje.
* La corriente pico.
* El voltaje pico.
* La corriente de reserva requerida para la carga resistiva de 8$\Omega$ como función de la potencia.

P    $V_{RMS}$    $V_{pico}$     $I_{pico}$      $I_{rsen}$
---- ----------   -----------    -----------     -----------
50   20           28             3,5             10,5
100  28           40             5               15
200  40           56             7               21
400  57           80             10              30
-------------------------------------------------------------
$$R_{L}=8\Omega$$

La corriete de reserva es simplemente un factor de 3 con respecto a la corriente pico requerida para una carga resistiva y representa la realidad
de parlantes reactivos con señales no senosoidales. 

Esta corriente de reserva se utilizará solo en intervalos de tiempo muy breves y bajo circunstancias muy raras. 


P    $V_{RMS}$    $V_{pico}$     $I_{pico}$      $I_{rsen}$
---- ----------   -----------    -----------     -----------
100  20           28             7               21
200  28           40             10              30
400  40           56             14              42
800  57           80             20              60
-------------------------------------------------------------
$$R_{L}=4\Omega$$

## Velocidad de respuesta 

Mide que tan rápido el voltaje de salida del amplificador puede cambiar bajo condiciones de señales grandes. Se mide en V/$\mu$s.
Es una medida de qué tan bien un amplificador puede responder a un transiente de alto nivel.
Un amplificador promedio debe tener una velocidad de respuesta de 5V/$\mu$s y un amplificador de alto desempeño tiene una velocidad de respuesta entre los rangos de 50V/$\mu$s a 300V/$\mu$s.

Un amplificador de alta potencia necesita tener una velocidad de respuesta grande, ya que los recorridos del voltaje son grandes también. Un amplificador de 100W manejando un parlante con una eficiencia de 85dB necesitará tener 3,16 veces la velocidad de respuesta de un amplificador de 10W manejando un parlante de una eficiencia de 95dB al mismo nivel de presión del sonido. 

Como punto de referencia la razón máxima de cambio de una onda seno a 20KHz es 0,125V/$\mu$s por voltio pico; esto significa que un amplificador de 100W que produce un nivel de 40V pico a 20KHz debe tener una velocidad de respuesta de 5V/$\mu$s, que es igual a: 0,125V/$\mu$s * 40 = 5V/$\mu$s.

En la práctica se necesita un valor mucho más grande para lograr un desempeño de baja distorsión para un programa con contenido de alta frecuencia. 

## Factor de amortiguamiento

Mide la razón de la impendncia del amplificador con respecto a la impedancia de salida.
$$DF=\frac{Z_{out}}{Z_{L}}$$

![Impedancia de salida del amplificador\label{fig:sal}](imagenes/salidaamplifi.png)

Es deseable una respuesta plana para evitar la coloración tonal, pero esta respuesta plana no siempre se puede obtener cuando el amplificador se conecta a un parlante real. 

La impedancia de entrada de un parlante puede variar dramáticamente en función de la frecuencia mientras la impedancia de salida del amplificador no sea cero.
 
* Se forma un divisor de voltaje por la impedancia de salida del amplificador y la impedancia de entrada del parlante. 

El factor de amortiguamiento se define como la razón de 8$\Omega$ y la impedancia actual del apara un amplificador, entonces para un amplificador con una impedancia de salida de 0,2$\Omega$, se obtiene un factor de amortiguamiento de: 

$$ DF=\frac{8}{0,2}=40$$

Es importante tener en cuenta que el DF en función de la frecuencia es grande para altas frecuencias. Muchos parlantes tienen un pico sustancial en su impedancia cerca de sus frecuencias de cruce. ESto podría producir una coloración en el amplificador si el DF es bajo.

## Headroom Dinamic

Se refiere a la cantidad por la cual las capacidades a manipular para una señal de un sistema de udio excede un nivel conocido como máximo nivel permitido (PML).

El headroom se puede interpretar como una zona de seguridad que permite transientes picos de auidio y que se dañe el sistema de audio. A diferencia de una onda seno, la música es impulsiva y dinámica. 

Los picos de potencia son amenudo varias veces mayores que la potencia promedio. Esta razón se llama factor de cresta:

$$Factor de cresta= \frac{Potencia pico de audio}{Potencia promedio}$$

El headroom dinámico se refiere al hecho de que un amplificador normalmente puede producir una ráfaga corta de potencia que no puede en una base contínua. La primera causa de esto es una caída de la regulación de la fuente de poder.

Considere un amplificador que se diseña para 100W a 8$\Omega$ en una base contínua. Si este amplificador tiene una fuente de poder con una regulación del 10% a plena carga (que es bastante bueno), la tensión de alimentación disponible será un 10% más alta durante un estallido a corto plazo. Esto dará lugar a una capacidad de potencia a corto plazo en el orden de los 120W.

$$P=\frac{V^2}{R}= 1,21P$$

## Topología básica de un amplificador 


![Topología básica de un amplificador\label{fig:topo}](imagenes/topologia.png)

La figura muestra un diseño simplificado de un amplificador de potencia de tres etapas. Este es un descendiente directo de la topología LTI intoducida en los años 50.

$Q_{1}$ y $Q_{2}$ son un par diferencia que es alimentado por una fuente de corriente que es un circuito con una impedancia muy alta. Esta estapa se llama etapa de entrada (IPS) y normalmente posee una ganancia pequeña en el rango de 10 a 15.

El IPS compara la señal de entrada aplicada con una fracción de la señal de salida. Esta operación hace una realimentación negativa. La fracción de la señal de salida esta determinada por un divisor de voltaje formado por $R_{2}$ y $R_{3}$, tal y como se muestra en la siguiente figura: 

![Divisor de voltaje\label{fig:divisor}](imagenes/divisor.png)

Si la fracción es 1/20 y la ganancia de lazo abierto del amplificador es grande, entonces se necesita una diferencia muy pequeña entre la señal de entrada y la señal realimentada para poroducir el voltaje de salida. 

### Cómo trabaja la realimentación negativa 

![Realimentación negativa\label{fig:negativa}](imagenes/realimentacion.png)

El amplificador tiene una ganancia de lazo abierto $A_{ol}$. La red de realimentación atenúa la señal para producir un factor de 20. 

Suponga que la salida del amplificador es 20V, la realimentación será de 1V, entonces la diferencia entre las entradas es:

$$1,02-1=0,02=20mV$$

Si $A_{ol}$ es igual a 1000, entonces:

$$V_{out}= 20mV * 1000= 20V$$

Y la ganancia en lazo cerrado será:

$$\frac{20}{1,02}=19,6$$

El transistor $Q_{3}$ forma el VAS (Etapa amplificadora de voltaje). Es un emisor común de alta ganancia que suministra la mayoría de la ganacia de voltaje del amplificador. Observe que si se carga con una fuente de corriente en lugar a una resistencia suministra la mayor ganancia posible. No es raro que el VAS suministre ganancias de 100 a 10000. Esto significa que la diferencia de señal necesaria para manejar la etapa de entrada no necesita ser muy grande para manejar la salida a este nivel requerido. 

La etapa de salida (OPS) está compuesta por los transistores $Q_{4}$ y $Q{7}$. Su principal tarea es suministrar la corriente necesaria en la forma de ganancia de VAS y la caraga de los parlantes tiene una ganancia aproximadamente de 1.

Son dos pares de colector común, un par para cada ciclo del seno. Esto se llama push pull complementario.

$Q_{4}$ y $Q{5}$ se llaman drivecs y $Q{6}$ y $Q_{7}$ son los transistores de salida. Un OPS de dos etapas como estos producen una ganancia de corriente entre 500 y 10000. Esto significa que una carga de 8$\Omega$ se verá como una resistencia de carga entre 4000 y 80000 en la salida del VAS.

![Circuito\label{fig:c}](imagenes/carga.png)

![Circuito\label{fig:ci}](imagenes/ss.png)
La caja, suministra un voltaje DC a la polarización que enciende.

















# Transistores

El transistor de unión BJT (Bipolar junction transistor)  es el principal bloque constructor de la mayoría de los amplificadores de audio, se discutirá el comportamiento del transistor en el contexto del diseño de un amplificador de potencia.

## Ganancia de corriente

![Transistor NPN\label{fig:npn}](imagenes/NPN.png)

Si se introduce una corriente pequeña en la base de un transistor NPN, fluirá una corriente mucho más grande en el colector. La razón de estas dos corrientes se llama beta.

$$\beta=hfe=\frac{I_{c}}{I_{b}}$$

La ganancia de corriente para transistores a pequeña señal  está en el rango:
$$50<\beta<100$$

Para un transistor de salida (Potencia):

$$20<\beta<100$$

El beta puede cambiar un poco de transistor a transistor y es también una función suave de la corriente del transistor y el voltaje en el colector. Debido a esto, los circuitos normalmente se diseñan para que su operación no dependa mucho de un valor en particular de $\beta$.
En lugar de esto el circuito se diseña para que opere bien para un beta mínimo y funcione mejor para un beta muy alto. Es mala práctica diseñar un circuito que tenga un mal comportamiento con un $\beta$ muy alto.

La trasconductancia,  es el parámetro que es más predecible y por lo tanto el parámetro de diseño más importante:

$$g_{m}=\frac{\Delta*I_{c}}{\Delta*V_{be}}$$

Es el cambio en la corriente de colector en respuesta a un cambio dado en el voltaje base-emisor. La familia de curvas de la ganancia de corriente se muestra a continuación:

![Corriente de colector del transistor\label{fig:npn}](imagenes/Corriente_de_colector.png)
 
La familia de curvas muestra cómo la corriente de colector se incrementa en la medida que se incrementa $V_{CE}$ con la corriente de base como parámetro. 

* La pendiente revela la dependencia suave de $\beta$ con el voltaje $V_{CE}$.
* El espacio entre las curvas para diversos valores de $I_{c}$ muestra la ganancia de corriente.
* Se observa que el espacio entre las curvas se aumenta en la medida que $V_{CE}$ se incremente. 

El beta puede tener más fuerte dependencia de la corriente cuando la corriente es alta y puede decrecer rápidamente cuando la corriente aumenta. A esto se le llama la caída del beta y puede ser fuente de distorsión en los amplificadores de potencia. 
Un transistor de potencia típico puede iniciar en $\beta=70$ a 1A y caer a 20 cuando $I_{c}=10A$. 
Esto es especialmente importante cuando el amplificador maneja impedancias bajas.

## Voltaje Base-Emisor

El transistor de unión bipolar requiere cierto voltaje de polarización entre la base y el emisor para que la corriente de colector  comience a conducir. Este voltaje de encendido se conoce normalmente como $V_{be}$. Para transistores de silicio, se encuentra en el rango:

$$0.5<V_{be}<0.7$$

Este voltaje $V_{be}$ se incrementa 60 mV por cada década de incremento en la corriente de colector $I_{c}$. Para el 2N5551:

$$V_{be}=600mV$$ a 100$\mu$A.
$$V_{be}=720mV a 10mA$$

Pequeños aumentos en la corriente de colector. La corriente de colector se incrementa exponencialmente con el voltaje base-emisor y se tiene la aproximación: 

$$I_{c}=I_{s}*e^(\left( \frac{V_{be}}{V_{T}}\right ))$$ 

Donde: 

$$V_{T}: Voltaje térmico$$
$$I_{S}: Corriente de saturación$$

26 mV a temperatura ambiente. Es proporcional a la temperatura. 

Esta es una de las razones por las cuales el voltaje $V_{be}$ se incrementa con la temperatura. La otra causa (la principal) es el fuerte incremento de la corriente  de saturación con la temperatura. Esto en últimas resulta en un coeficiente negativo de temperatura de $V_{be}$, aproximadamente igual a $2.2 mV/^oC$.

Despejando $V_{be}$, se obtiene:

$$V_{be}=V_{T}ln\left(\frac{I_{c}}{I_{s}}\right)$$ 

El voltaje $V_{be}$ disminuye aproximadamente 2.2 mV por cada grado centígrado que se incremente la temperatura. Esto significa que cuando se polariza el transistor con valor fijo de $V_{be}$, la corriente de colector se incrementará en la medida que aumenta la temperatura.; como la corriente de colector se incrementa, la potencia disipada y el calor aumentará, esto producirá otro aumento en temperatura y producirá un ciclo vicioso llamado Thermal runaway, conocido como una realimentación negativa.

FIGURA 3

El $V_{be}$ del transistor de potencia iniciará con un voltaje pequeño con una corriente de colector pequeña pero se incrementará sustancialmente con la corriente.

$$100 mA ---> 0.7V$$
$$10A ---> >1V$$

$V_{be}$ típicamente sigue una regla logarítmica incrementándose 60mV/década.
 
Ejemplo: 

$$550mV--->150mA$$
$$630mV--->1A$$
$$-80mV --->60mV$$

Al rededor de 1A, $V_{be}$ vs $I_{c}$ en un transistor de potencia a menudo comienza a comportarse línealmente como una resistencia de aproximadamente 0.1$\Omega$ en serie con el emisor. Por ejemplo:

$$V_{be}=1.6V ---> 1A$$

corresponde a una resistencia de 0.1$\Omega$ en serie con el emisor. 

Considere un transistor de potencia operando a:
$$I_{c}=10A$$
$$Resistencia base=4\Omega$$
$$\beta=50$$
$$Resistencia de emisor=20m\Omega$$  

![Circuito\label{fig:t}](imagenes/transistor.png)

$$I_{B}= \frac{I_{c}}{\beta}$$
$$I_{B}=\frac{10}{50}=200mA$$
$$V_{RE}=I_{c}*R_{E}$$
$$V_{RE}=10.20m\Omega$$
$$V_{RB}=4*200mV=800mV$$
$$V_{RB} + V_{be} + R_{RE}= 0.2 + 0.66 + 0.8 = 1.6V$$

Se ve que  un transistor de potencia puede desarrollar altos niveles de $V_{be}$.

## La gráfica de Gummel

Si el logaritmo de la corriente de colector se dibuja como función de $V_{be}$, este diagrama es bastante revelador. Como se ha mencionado arriba es una línea recta. El diagrama se vuelve aún más útil si la corriente de base se dibuja en el mismo eje. Esto es llamado el gráfico de Gummel:

![Gráfica de Gummel\label{fig:gummel}](imagenes/gummel.png)

En la práctica ninguna de las dos corrientes es una línea recta, sobre todo en el rango de $V_{be}$. La distancia vertical entre $I_{b}$ e $I_{e}$ corresponde al $\beta$ del transistor y el cambio en la distancia muestra cómo cambia $\beta$ como función de $V_{be}$. Las curvas también ilustran las pérdidas típicas en la ganancia de corriente del transistor en los dos extremos de la corriente. 

## Trasconductancia 

Mientras que la ganancia de corriente  es un parámetro importante y en gran medida la fuente de su habilidad amplificadora; la trasconductancia $(g_{m})$ del transistor es tal vez el parámetro más importante usado por los ingenieros cuando se hacen los diseños. 

La trasconductancia es la razón de cambio en la corriente de colector y el cambio en el voltaje de base. La unidad de medición de la trasconductancia es el siemens (S), que corresponde a un cambio  de corriente de 1A por un cambio de 1V, esto es el inverso de la resistencia.  Si el voltaje base-emisor de un transistor se incrementa en 1mV y esto produce un aumento en la corriente de colector de 40$\mu$A, entonces:

$$g_{m}=\frac{\Delta I_{c}}{\Delta V_{be}}$$
$$g_{m}=\frac{40\mu A}{ 2mV}=40mS$$

La trasconductancia de un transistor bipolar está gobernada por la corriente de colector. Esto es un resultado directo de la relación exponencial de la corriente de colector y voltaje base-emisor. La pendiente de esta curva se incrementa en la medida que $I_{c}$ crece, esto significa que la trasconductancia también crece, y ésta esta dada por: 

$$g_{m}=\frac{I_{c}}{V_{T}}$$

Donde $V_{T}$ es el voltaje térmico igual a 26mV a $20^oC$. A una corriente de 1mA $g_{m}$ será:

$$g_{m}=\frac{1mA}{26mV}=0.038S$$

El inverso de $g_{m}$ es la resistencia. Algunas veces es más fácil ver el comportamiento de un circuito tratando la trasconductancia del transistor como si fuera una resistencia de emisor dinámica $r`_{e}$.

$$r`_{e}=\frac{V_{T}}{I_{c}}$$
$$r`_{e}=\frac{0.026}{1mA}=26\Omega$$

Si el transistor está polarizado con una corriente de 10mA:

$$r`_{e}=2.6\Omega$$

El transistor se comportará como si un cambio en el voltaje base-emisor cayera sobre una resistencia de 2.6$\Omega$. Esto9 causa un cambio correspondiente en la corriente de emisor y es muy cercano al cambio en la corriente de colector. Esto es la base del amplificador emisor común.

Es importante reconocer:

$$g_{m}=\frac{1}{r`_{e}}$$

Que es una trasconductancia intrínseca que ignora los efectos de la resistencia base y emisor. La trasconductancia será reducida por la resistencia de emisor $R_{E}$ y $\frac{R_{B}}{\beta}$ será añadido a $r`_{e}$ para obtener la trasconductancia real. Esto es importante en los transistores de potencia. 

## Resistencia de entrada

Si se hace un pequeño cambio en el voltaje base-emisor ¿Qué cambio ocurrirá en la corriente de base?

![Resistencia de entrada\label{fig:R}](imagenes/resistenciaen.png)

Esto define la resistencia de entrada efectiva del transistor. La trasconductancia dicta que si el voltaje base-emisor cambia Lmv la corriente de colector cambiará alrededor de 40$\mu$A, si el transistor está polarizado con 1mV.

Si el transistor tiene un $\beta$ de 100, la corriente de base cambiará a 0.30$\mu$A. Observe que $\beta$ es la ganancia efectiva de corriente del transistor para pequeños cambios, que más aproximadamente se llama ganancia de corriente AC.

$$\beta_{AC}= Ganancia de corriente AC$$

La resistencia de entrada efectiva en este caso es: 

$$\frac{1mA}{0.30\mu A}= 2.6K\Omega$$
$$R_{in}=\beta_{AC}*r`_{e}$$

## Efecto Early 

Es una resistencia finita en el colector de un transistor y es el resultado de la ganancia de corriente del transistor siendo función del voltaje de base. La figura muestra que la corriente de colector a una corriente de base dada se incrementa con un incremento del voltaje de colector. 

![Corriente de colector del transistor\label{fig:npn}](imagenes/Corriente_de_colector.png)

Esto significa que:

* La ganancia de corriente del transistor se incrementa con el voltaje del colector.
* Da una resistencia equivalente de salida en el circuito de colector del transistor. 

El incremento de la corriente de colector con el incremento del voltaje de colector es el llamado efecto early. Si las porciones rectas de las curvas de corriente 
de colector se extrapolan hacia la izquierda, ellas se cortarán con el eje x  en un voltaje negativo. Este valor negativo es llamado voltaje early $V_{A}$. 

Figura 7. 

La pendiente de esta curvas representa la resistencia de salida $r_{o}$ del dispositivo.  Valores típicos de $V_{A}$ para transistores  a pequeña señal están entre 20V y 200V. Un valor muy común de $V_{A}$ es 100 como para el 2N5551. La resistencia $r_{o}$ es inversamente proporcional a la corriente de colector. Un valor típico para un transistor operando a 1mA es 100K$\Omega$.

El efecto early es especialmente importante porque actúa como una resistencia en paralelo con el circuito de colector de transistor, esto efectivamente hace que la carga neta en el colector es más pequeña que la resistencia externa de carga  en el circuito como resultado, la ganancia de la etapa común emisor se disminuye debido a que la carga extra es función del voltaje de colector y la corriente, por lo que causa distorsión. 

El efecto early se puede modelar como una resistencia :

$$r_{o}=\frac{V_{A} + V_{ce}}{I_{c}}$$

Para el 2N5551 con:

$$V_{A}=100$$
$$V_{ce}=10V$$
$$I_{c}=10mA$$

$r_{o}$ será:

$$r_{o}=\frac{100 + 10}{10mA}= 11K\Omega$$

El valor de $r_{o}$ se dobla en la medida que el voltaje de colector cambia en muy pocos voltios a un voltaje igual a $V_{A}$. Es importante entender que esta resistencia en sí misma no es necesariamente la resistencia de salida, ya que la resistencia de salida está conectada entre el colector y tierra. $r_{o}$ se encuentra entre el colector y el emisor:

![\label{fig:ro}](imagenes/ro.png) 

Cualquier resistencia o impedancia en el circuito emisor incrementará significativamente la resistencia efectiva de salida causada por $r_{o}$. El efecto early es especialmente importante en el $V_{AS}$ de un amplificador de audio, ya que el dispositivo está sometido a cambios muy grandes en el voltaje de colector y la impedancia en el nodo colector es un poco alta debido a la carga de la fuente de corriente y gracias a la utilización de un buffer se evita el efecto de carga de salida de este nodo.  Un 2N55521 como $V_{AS}$ polarizado con 10mA y sin degeneración de emisor con un $V_{ce}$ igual a 35V tendrá una $r_{o}$ de:

$$r_{o}=\frac{100 + 35}{10mA}= 14K\Omega$$

en el voltaje colector-emisor de $\pm$ 35V. Esto podrá corresponder a una señal de salida de 0V en un arreglo con una fuente de $\pm$ 35V.

El mismo transistor con una degeneración de emisor de 10:1 tendrá una resistencia de salida de 135K$\Omega$.

En un voltaje emisor- colector a solo 5V (correspondiente a solo -30V de cambio de salida) este transistor tendrá una resistencia reducida de 1055K$\Omega$ $r_{o}=\frac{100 + 5}{1mA}$. 

A un voltaje de 65V (correspondiente a +30V de cambio de salida) este transistor tendrá una resistencia de salida de 165K$\Omega$ $r_{o}=\frac{100 + 65}{1mA}$.

Estos cambios en la resistencia de salida como resultado de una señal de voltaje implican un cambio en la ganancia y así distorsión del segundo armónico. 

Debido a que el efecto early se manifiesta en sí mismo como un cambio del $\beta$ del transistor como una función del voltaje de colector  y porque un $\beta$ alto requerirá una menor corriente de base se puede argumentar que a una cantidad dada de efecto early tiene menor influencia en algunos circuitos si el $\beta$ del transistor es alto. Un transistor cuyo $\beta$ varía de 50 a 100 debido al efecto early y a la variación del voltaje de colector tendrá mayor efecto en el desempeño del circuito en muchos casos que un transistor cuyo $\beta$ varíe de 100 a 200 sobre la misma variación del voltaje de colector. La variación en la corriente de base será menos en el último que en el primero. Por esta razón, el producto $\beta$ y $V_{A}$ es una función a mérito (FOM) para los transistores. 

## Capacitancia de unión 

Todos los BJT tienen una capacitancia base-emisor $(C_{be})$ y colector-base $(C_{cb})$. Esto limita la respuesta de alta frecuencia, además introduce una distorsión porque estas capacitancias son función del voltaje. Las regiones de base, emisor y colector de un transistor pueden ser modeladas como placas de un condensador separadas por una región no conductora. La base se separa del emisor por la unión base-emisor. Cada una de estas uniones tiene capacitancia si se polariza directamente o inversamente. 

En realidad estas uniones almacenan carga y esta es su impedancia característica. Una unión polarizada inversamente tiene la llamada región de evacuación; esta región puede tener el tamaño de las placas del condensador. Con una gran polarización inversa de la unión, la región de evacuación se agranda. El espacio de las placas del condensador es entonces grande y por lo tanto la capacitancia disminuye. 

La capacitancia de unión es entonces función del voltaje a través de la unión, disminuyendo en la medida que la polarización inversa se aumenta. 

Figura 9. 

Este comportamiento es principalmente de interés en la unión colector-base que se polariza inversamente, mientras que la unión base-emisor se polariza directamente. Se mostrará que la capacitancia efectiva de la unión base-emisor directamente polarizada es alta.

La variación de capacitancia de unión en un semiconductor con polarización inversa es utilizada en los diodos varactor, donde los circuitos son sintonizados electrónicamente variando la polarización inversa del diodo.  En los amplificadores de audio, este efecto es indeseable ya que la capacitancia varía con la señal de voltaje esto representa una linealidad. 

Esto obviamente es indeseable para el ancho de banda o la ganancia de alta frecuencia de la etapa del amplificador, ya que variará ehn función de una señal de voltaje. La capacitancia colector-base del 2N5551 varía entre 5pF-0V y 1pF-100V, polarizado inversamente. 

La capacitancia base-emisor varía entre 12pF a 0.1V y 10pF a 5V polarizado inversamente. Tenga en cuenta que la capacitancia esta directamente polarizada en condiciones normales, la capacitancia de unión en un transistor de potencia típico, y dos ordenes de magnitud mayor que los de pequeñas señales. 

## Velocidad y $f_{T}$

La ganancia a corriente AC de un transistor cae a altas frecuencias en parte debido a la necesidad de la corriente de entrada para cargar y descargar la capacitancia relativamente grande de la unión base-emisor polarizada directamente. La característica más importante para un BJT y $f_{T}$, donde $f_{T}$ es frecuencia de transición; es la frecuencia a la cual $\beta_{AC}$ cae aproximadamente a la unidad. 

Para transistores de pequeña señal usados en amplificadores de audio:

$$50<f_{T}<300 MHz$$

Un transistor con un $\beta_{\alpha}$ de baja frecuencia de 100 y $f_{T}$ 100MHz tendrá una caída de 3dB a una frecuencia a 1MHz aproximadamente, esta frecuencia se llama $f_{\beta}$.

$f_{p}=$ Frecuencia a la cual $\beta_{AC}$ cae a 3dB.

El valor efectivo de la capacitancia base-emisor de un BJT conduciendo es aproximadamente:

$$C_{be}=\frac{g_{m}}{w_{T}}=\frac{g_{m}}{2* \pi * f_{T}}$$
$$g_{m}=\frac{I_{c}}{V_{T}}$$
$$C_{be}= \frac{I_{c}}{V_{c}*w_{T}}$$

Esta capacitancia en el modelo $\pi$ se llama $C_{\pi}$. Para un transistor con:
$$f_{T}= 100MHz$$
$$I_{c}= 1mA$$
$$V_{T}=26mV$$
$$C_{be}=\frac{1mA}{26mV*2\pi*100MHz}$$
$$C_{be}=\frac{10^-6}{5200\pi}=61pF$$

Los transistores de potencia normalmente tienen un valor mucho menor de $f_{T}$, normalmente en el rango de 1 a 8 MHz. Su capacitancia base-emisor en un transistor de estos puede ser sorprendentemente grande. Si:
$$f_{T}= 2MHz$$
$$I_{c}= 1A$$
$$V_{T}=26mV$$
$$C_{be}=\frac{1}{20mV*2\pi*2MHz}$$
$$C_{be}=\frac{1}{104\pi* 10^3}=\frac{10^-3}{104\pi}=3.1\mu F$$

Esto explica porque puede ser difícil apagar un transistor rápidamente. Suponga que la ganancia de corriente $\beta$ es igual a 50, si la corriente de base es 20mA, si se elimina la corriente de base y se apaga el transistor $V_{be}$ cambiará:

$$\frac{I_{b}}{C_{\pi}}=\frac{0.02}{3.1*10^-6}= \frac{6.4mV}{\mu s}$$

Recuerde que un cambio de 60 mV en $V_{be}$ cambiará la corriente de colector por un factor de 10, esto significa que le tomará aproximadamente 9$\mu$s para que la corriente de colector caiga de 1A a 0.1A. Esto ilustra porque es importante drenar corriente activamente de la base para apagar el transistor rápidamente. Este estimativo es aproximado porque asume que $C_{\pi}$  es constante durante el tiempo de descarga y esto no es cierto debido a que $I_{c}$ disminuye. Sin embargo, la corriente de base, que fue la corriente de descarga en este caso, fue decrementado durante el tiempo de descarga. La disminución de $C_{\pi}$ y el decrecimiento de la corriente de base cancela todos los efectos, así que la aproximación original no es mala. En un circuito real se tendrán algunos medios para drenar corriente de la base aun si este es solo una resistencia de base a emisor. Esto ayudará a encender el transistor más rápidamente para disminuir la corriente de colector del transistor de 1 a 0.1A, $C_{\pi}$ se debe descargar durante 60mV.

Reconociendo que la capacitancia se puede aproximar usando un valor promedio de 1/2 o aproximado diferente de 1.5$\mu$F. Asumiendo un transistor con un gran $\beta$ tal que la corrienyte de base que normalmente debe influir para que el transistor se encienda se puede ignorar. Si se emplea una constante de descarga de 50mA el tiempo que toma la corriente de colector por década se puede estimar así:

$$T=C*\frac{V}{I}=3\mu s$$ 

Este tiempo es un poco largo si el amplificador está tratando de cambiar rápidamente la corriente de salida como resultado de una gran señal trascendente de alta frecuencia. En este caso la velocidad de cambio promedio de la corriente de colector es 0.3$\frac{A}{\mu s}$, para colocar esto en perspectiva, asume que un amplificador está manejando una señal de 40V pico en una carga de 4$\Omega$ a 20KHz.

$$V_{pp}=40V$$
$$R_{L}=4\Omega$$
$$f=20KHz$$

La velocidad de cambio es:

$$\frac{5V}{\mu s}$$

y el cambio de corriente debe ser: $\frac{1.25A}{\mu s}$. Desafortunadamente, ya que los BJT sufren de la caída del $\beta$ a altas corrientes, también sufren una caída de $f_{T}$ a altas corrientes. Un buen transistor de potencia puede iniciar con $f_{T}=$ 6MHz a 1A y puede caer un 20% a 3A y será de $f_{T}=$ 2MHz a 10A. A la vez que el BJT sufre de la caída de $f_{T}$ a voltaje bajos de colector-emisor mientras opera a altas corrientes . Esto compone el problema cuando la etapa de salida esta en la parte de gran amplitud o una forma de onda de alta frecuencia y entregando gran corriente. Bajo estas condiciones:

* Gran amplitud.
* Alta frecuencia.
* Gran corriente. 

$V_{ce}$ puede ser tan pequeño como 5V o menos, y la corriente en el dispositivo puede ser de varios amperios. Los llamados ring emitter transistors $(RET_{s})$ y BJTs de potencia parecida puede tener un $20<f_{T}<80 MHz$, sin embargo, también sufren una caída de $f_{T}$ a altas frecuencias. Un RET típico puede iniciar con un $f_{T}$ de 40MHz a 1A y mantenerlo igual hasta los 3A y puede caer a 4MHz o menos a 10A. Los dispositivos RET también pierden $f_{T}$ a bajas corrientes.

A 100mA donde se puede polarizar una etapa de salida AB y el mismo RET puede tener un $f_{T}$ de solo 20MHz.

## Modelo híbrido $\pi$

![Modelo híbrido $\pi$\label{fig:pi}](imagenes/PI.png) 

$$I_{c}=g_{m}*V_{be}$$
$$g_{m}=40*I_{c}$$

La figura muestra el modelo híbrido $\pi$ de pequeña señal de transistor. El modelo activo fundamental del transistor es una fuente de corriente controlada por voltaje, llamada transconductancia, todo lo demás en el modelo son componentes parásitos. La ganancia de corriente AC se toma en cuenta por la resistencia base-emisor $r_{\pi}$. 

El efecto early se toma en cuenta mediante $r_{o}$, la capacitancia colector-base se muestra como $C_{cb}$. La ganancia de corriente roll off con frecuencia (como se define por $f_{T}$ se modela por $C_{\pi}$).

Los valores de estos elementos son descritos arriba. Este es el modelo de pequeña señal; los valores de los elementos cambiarán con el punto de trabajo del transistor. 

# Bloques constitutivos

Un amplificador de potencia está compuesto de unos pocos bloques que se pueden colocar de muchas maneras diferentes, cada uno de estos bloques se deben analizar y entender y no es difícil hacer un análisis aproximado por inspección de un amplificador completo de potencia. 

El conocimiento de como estos bloques realizan y brindan un desempeño le permiten al diseñador analizar y sintetizar circuitos. 

## Etapa emisor común 

El emisor común es tal vez el bloque más importante ya que suministra una ganancia básica de voltaje. Se asume que el emisor del transistor está en tierra y que una corriente de polarización circula por el transistor. Si una pequeña señal de voltaje se aplica a la base dle transistor, la corriente de colector varía de acuerdo al voltaje de la base. Si existe una resistencia de carga $R_{L}$ en el circuito colector, esta resistencia convertirá la corriente de colector en voltaje.

Como resultado tenemos un amplificador de voltaje a la entrada y voltaje a la salida. En la figura se muestra un emisor común: 

![Emisor común\label{fig:EC}](imagenes/emisor_comun.png) 

La ganancia de voltaje será aproximadamente igual a la resistencia de carga multiplicada por la trasconductancia $g_{m}$:

$$A_{v}= R_{L}*g_{m}=\frac{R_{L}}{r`_{e}}$$

Considere un transistor polarizado a un 1mA con una resistencia de carga de 5K$\Omega$ y una fuente de voltaje de 10V:

$$A_{v}=\frac{5000}{26}=182$$

Este es un valor un poco grande. Sin embargo, la carga de otros circuitos que se manejan a la salida se ha ignorado, tales cargas reducirán la ganancia. El efecto early también se ha ignorado. Este efecto coloca un resistencia $r_{o}$ en paralelo con $R_{L}$, como se mencionó antes $r_{o}$ para un 2N5551 operando a 1mA y unos voltaje relativamente bajos de colector-emisor estarán en el orden de 100K.

El error introducido por el efecto early será del 5%, debido a que $r`_{e}$ es una función de la corriente de colector, la ganancia variará con oscilación de la señal y la etapa de ganancia sufrirá alguna distorsión. 

La ganancia será menor en la medida que la corriente esté en el ciclo negativo y el voltaje de salida esté en el ciclo positivo. La ganancia será mayor cuando la corriente esté en el ciclo positivo y el voltaje de salida esté en el ciclo negativo. Esto produce una distorsión del segundo armónico. Si la señal tiene un ciclo positivo tal que la corriente de colector se incremente a 1.5mA y el voltaje de colector a 2.5V.

$$r`_{e}=\frac{26mV}{1.5mA}=17.3\Omega$$
$$A_{v}=\frac{R_{L}}{r`_{e}}=\frac{5000}{17.3\Omega}=289$$

Si la señal tiene un ciclo pos negativo tal que la corriente un colector cae a 0.5mA y el voltaje de colector aumenta a 7.5V. 

$$r`_{e}=\frac{26mV}{0.5mA}=52\Omega$$
$$A_{v}=\frac{R_{L}}{r`_{e}}=\frac{5000}{52\Omega}=96$$

La ganancia incremental de esta etapa ha cambiado en un factor de

$$\frac{289}{g_{e}}=3$$

Cuando la señal tiene una oscilación de 5V pico a pico, esto representa un alto nivel de distorsión. Si se analiza una resistencia externa $R_{E}$ la ganancia sera:

$$A_{v}=\frac{R_{L}}{R_{E}+r'_{e}}$$

![Circuito\label{fig:Ec}](imagenes/figura_2.png)

debido a que la resistencia externa no cambia con la señal, la ganancia se estabiliza y es más lineal, esto es llamado la degeneración del emisor y es una forma de realimentación negativa local.

La etapa emisor común de la figura es en esencia la misma $g_{e}$ de la figura anterior pero con una resistencia de emisor de 234$\Omega$, esto corresponde a una degeneración de emisor de 10:1 porque la resistencia efectiva total en el emisor se ha incrementado un factor de 10 de 26 a 260.

## Degeneración de emisor

Resistencia total de emisor: $r'_{e}$

$$R_{E}+r'_{e}:r'_{e}$$
$$234+26:26$$
$$260:26$$
$$10:1$$

La ganancia nominal también se ha reducido un factor de 10:

$$A_{v}=\frac{R_{L}}{R_{E}+r'_{e}}=\frac{5000}{260}=19.2$$

Considere otra vez que pasa con la ganancia cuando la señal de entrada oscila de positivo a negativo por tener una excursión de 5V pico a pico en la salida. Si la señal de entrada en el ciclo positivo es tal que la constante de colector se incrementa hasta 1.5mA y el voltaje de colector cae a 2.5V, la resistencia de emisor total es:

$$R_{E}=R_{E}+r'_{e}=17+237=251\Omega$$
$$A_{v}=\frac{5000}{287}=17.4$$

la ganacia se incremento por un factor de 1.14:1 o un 14% que es una distorsión mucho menor que la del circuito sin resistencia de emisor:

$$A_{v}=\frac{R_{L}}{R'_{R}+R_{E}}$$  

El factor a degeneración se define como:

$$FD=\frac{R'_{R}+R_{E}}{R_{L}}$$

La degeneración de emisor también suaviza la linealidad causada por el efecto Early en la etapa emisor común, como se muestra la resistencia punteada $r_{o}$ en la figura, la mayoría de la señal de corriente fluyendo por $r_{o}$ se retorna al colector por el camino que se inyecta en el emisor. 

Si toda la señal de corriente en $r_{o}$ se retornara al colector, la presencia de $r_{o}$ podría no tener efecto en la resistencia de salida de la etapa. En realidad, parte de la señal que fluye por $r_{o}$ se pierde y fluye hacia la resistencia externa de emisor $R_{E}$ en lugar de ir hacia la resistencia interna $r'_{e}$. (Otra se pierde debido a la ganancia de corriente finita del transistor). 

La fracción de corriente depende de la razón de $r'_{e}$ y $R_{E}$ que es una reflexión de la cantidad de degeneración del emisor. Como una aproximación burda, la resistencia de salida debido al efecto Early para una etapa emisor común degenerada es: 

$$R_{out}=r_{o}*FD$$

Si $r_{o}$ es 100K y FD 10:1, entonces:

$$R_{out}= 100*10=1M\Omega$$

tenga en cuenta que esto es solo una aproximación. 

En la práctica la resistencia de salida de la etapa no puede excederse. Se ha asumido que la etapa emisor común se maneja con una fuente de voltaje. 

Si es manejada por una fuente con una impedancia significativa, la resistencia de salida de la etapa emisor común degenerada se disminuirá a alguno de los valores dichos anteriormente. Esta reducción ocurrirá porque los cambios en la corriente de base que son resultado del efecto Early. 

## Ancho de banda de la etapa de emisor común y el efecto Miller

La respuesta de alta frecuencia de un emisor común estará limitada si debe manejar cualquier carga capacitiva. Esto no difiere en nada cuando una resistencia de una fuente maneja un capacitor en derivación, forzando un filtro pasabajos de primer orden.

![Circuito\label{fig:ec}](imagenes/Figura_3.png) 

Se forma un polo donde la resistencia de la fuente y la reactancia de la capacitancia son iguales, esto causa que la respuesta en frecuencia caiga 3dB a esta frecuencia. La reactancia de un condensador igual a: 

$$X_{c}=\frac{1}{2\pi f_{c}}$$

La frecuencia a -3dB es:

$$f_{3}=\frac{1}{2\pi R_{c}}$$

En la figura, la impedancia de salida de la etapa emisor común es aproximadamente la resistencia de colector.

![Emisor común\label{fig:EC}](imagenes/emisor_comun.png) 

Suponga que la etapa está manejando un capacitancia de carga de 100pF. El ancho de banda será el del filtro pasabajo formado por la impedancia de salida y el condensador de carga. El polo se formará en:

$$f_{3}=\frac{1}{2\pi R_{L} C_{L}}=\frac{1}{2K*5K*100pF}= 318KHz$$

Como una aproximación se puede considerar también la capacitancia colector-base como parte de $C_{L}$, el ancho de banda de la etapa emisor común es a menudo limitado por la capacitancia del transistor cuando la etapa es alimentada desde una fuente con una impedancia significativa. La fuente debe sumistrar correinte para cargar y descargar la capacitancia colector-base a través de la gran excursión de voltaje que existe entre el colector y la base. 

Este fenómeno se llama efecto Miller.

Suponga que la capacitancia colector-base es 5pF y asuma que la  etapa emisor común está siendo alimentada desde una impedancia de la fuente de $R_{s}$ igual a 5K. Tenga en cuenta que la ganancia de voltaje G del circuito de la figura era aproximadamente 192. Esto significa que el voltaje a través de $C_{cb}$ es 193 veces mas grandes que la señal de entrada (tenga en cuenta que la señal de entrada está en contra fase con la señal de salida, añadiendo la diferencia). Esto significa que la corriente que fluye a través de $C_{cb}$ es 193 veces mas grande que la corriente que debería fluir si fuera conectada de la base a tierra en lugar de base a colector. 

El circuito de entrada entonces $V_{e}$ una capacitancia efectiva de entrada $C_{in}$ que es 1+A veces que la capacitancia colector-base. Este fenómeno se llama multiplicación Miller de la capacitancia, en este caso el valor efectivo de $C_{in}$ sería:

$$C_{in}=965pF$$

La capacitancia base-colector efectivamente forma un circuito de realimentación en desviación que en últimas controla la ganancia de la etapa a altas frecuencias donde la reactancia del condensador se vuelve pequeña. En la medida que se incrementa la frecuencia, una gran parte de la señal de entrada de corriente debe fluir a la capacitancia colector-base del transistor. Si esencialmente toda la señal de corriente de entrada fluye a través de la capacitancia colector-base, la ganancia de la etapa deberá ser simplemente la razón de: 

* Reactancia capacitiva de $C_{cb}$.
* Resistencia de la fuente. 

$$A=\frac{X_{ccb}}{R_{s}}=\frac{1}{2\pi f C_{ccb} R_{s}}$$

Esto representa el valor de ganancia que disminuye en 6dB por octava en la medida que la frecuencia se incrementa.Esta disminución comenzará en la frecuencia donde la ganancia calculada es igual a la ganancia de baja frecuencia de la etapa. 

El efecto Miller se usa a menudo como ventaja en el suministro de roll off de frecuencia necesario para estabilizar un bucle de realimentación negativa. Esto se llama compensación Miller. 

## Amplificador diferencial

Es un par de amplificadores emisor común unidos a los emisores y polarizados con una corriente común. Esta corriente es llamada corriente de cola, esta configuración a menudo se llama LTP.

![Amplificador diferencial\label{fig:AD}](imagenes/amplificador_diferencial.png) 


El amplificador diferencia envía su corriente de cola a los dos colectores de $Q_{1}$ Y $Q_{2}$ de acuerdo con el voltaje diferencial a través de las base de  $Q_{1}$ Y $Q_{2}$. 

Si los voltajes de las bases son iguales entonces fluirán corrientes iguales en los colectores de $Q_{1}$ Y $Q_{2}$, si la base de $Q_{1}$ es más positiva que la de $Q_{2}$ la mayoría de la corriente de cola fluirá por $Q_{1}$ y menos por la de $Q_{2}$. Esto producirá una gran caída de voltaje a través de la resistencia de colector $R_{L1}$ y una caída más pequeña a través de $R_{L2}$. La salida alfa entonces se invierte con respecto a la entrada A. 

Observe la resistencia intrínseca de emisor $r_{e}'$ presente en los emisores de $Q_{1}$ Y $Q_{2}$. Tenga en cuenta que el valor de $r_{e}'$ es aproximadamente:

$$r_{e}'=\frac{26mV}{1mA}=26$$

Recuerde también que:

$$g_{m}=\frac{1}{r_{e}'}$$

y depende de la corriente instantánea del transistor, los valores de $r_{e}'$ y $g_{m}$ dependen del tipo de señal que circula por ellos y por lo tanto esto representa una alinealidad que produce una distorsión. Habiendo observado el transistor ideal como resistencia de emisor $r_{e}'$, uno puede ahora asumir que el emisor idealizado interno de cada dispositivo mueve excatamente con la base del transistor, pero con un voltaje DC fijo de desplazamiento igual a $V_{be}$.

Ahora observe que pasa si la base de $Q_{1}$ es 5.2mV más positivo que la base de $Q_{2}$, la resistencia total de emisor separando estos dos puntos de voltajes es 52$\Omega$; casi que la corriente de 5.2mV/5R=0.1mA fluirá del emisor de $Q_{1}$ al emisor de $Q_{2}$. Esto significa que la corriente de colector de $Q_{1}$ será 100$\mu$A mayor que la correinte nominal y la correinte de $Q_{2}$ será 100$\mu$A menor que la nominal, por lo tanto las corrientes son: 

$$I_{Q1}=1mA$$
$$I_{Q2}=0.9mA$$

Ya que las dos deben sumar la corriente de cola, asumiendo un $\beta$ muy alto para los transistores.  Este incremento a 100$\mu A$ en la corriente del colector de $Q_{1}$ producirá un cambio de 500 mV en la salida A, debido a la resistencia de colector de 5K$\Omega$.

Un cambio de 5.2mV en la entrada en la base de $Q_{1}$ ha producido un cambio de 500mV en el colector de $Q_{1}$, por lo tanto la ganancia de la etapa en la salida A en este caso es aproximadamente:

$$\frac{500}{5.2}=92.2$$

La ganancia de la etapa definida de esta manera es equivalente numéricamente de esta manera y equivalente numéricamente a la resistencia de carga de 5000$\Omega$ dividido por la resistencia total del emisor $r_{e}'= 52\Omega$.

$$A_{v}=\frac{R_{L}}{2r_{e}'}=\frac{5000}{52}$$

Teniendo además una degeneración de emisor externa con resistores externos se podrían añadir en este cálculo. Por ejemplo, si la resistencia  de emisor de degeneración es de 48$\Omega$, la ganancia será entonces: 

$$A_{v}=\frac{R_{L}}{2r_{e}'+2R_{E}}=\frac{5K}{52+48}=25$$

Esta manera de estimar la ganancia de la etapa es un muy importante concepto de back-of-tre-envelope en el diseño de amplificadores.  En el diseño típico de un amplificador, uno a menudo comenzará con estas aproximaciones y entonces tendrá en cuenta algunas desviaciones del ideal. Esto será evidente en numerosos análisis de diseños posteriores. 

Como se anotó antes que el cambio en la trsconductancia de los transistores como una función de la señal de corriente puede ser una fuente de distorsión. Considere la situación donde una señal negativa de entrada en la base $Q_{1}$ causa que $Q_{1}$ conduzca 0.5mA y $Q_{2}$ conduzca 1.5mA. 

La resistencia de emisor $r_{e}'$ de $Q_{1}$ es ahora:

$$r_{e1}'=\frac{26}{0.5}=52\Omega$$
$$r_{e2}'=\frac{26}{1.5}=173\Omega$$

La resistencia total de emisor se elevó de 52 a 69.3$\Omega$.

$$A_{v}=\frac{54}{69.3}=72.15$$

Esto representa una reducción de la ganancia por un factor de 0.75 o sobre el 25%. Esto es una fuente importante de distorsión en el LTP. La oscilación de la señal que causa el desbalance de las corrientes de colector entre $Q_{1}$ y $Q_{2}$ da como resultado en un decrecimiento substancial en la ganancia incremental de la etapa como función del valor instantáneo de la señal. 

La ganancia de un LTP es típicamente grande en su estado balanceado y decrece en la medida que la señal  se vuelve más positiva o negativa con respecto al punto de balance. Este comportamiento simétrico en contraste con el comportamiento asimétrico a la etapa emisor común, donde la ganancia se incrementa con la oscilación de la señal en una dirección y decrece con la oscilación en la otra dirección. La distorsión simétrica es del tercer armónico; mientras que la distorsión asimétrica es del segundo armónico.

Observe que la entrada diferencial de voltaje necesaria para causar el debalance en el LTP que no tenga degeneración es solo del orden de 25mV. Esto significa que es muy fácil sobrecargar un LTP que no tenga degeneración de emisor. Esto es de gran importancia en el diseño de la mayoría de los amplificadores que emplean un LTP como etapa de entrada. 

Suponga que el LTP ha empujado el 90% de su capacidad de salida. En este caso $Q_{1}$ debería conducir 0.1mA y $Q_{2}$ 1.9mA.

$$r_{e1}'=260$$
$$r_{e2}'=14$$
$$r_{eT}'=274$$
$$A_{v}=\frac{5000}{274}=18.29$$

La ganancia nominal de este LTP sin degeneración fue del 96.2. La ganancia incremental bajo estas grandes condiciones de señal está por debajo aproximadamente un 80% lo que implica una gran distorsión. Como en el caso de la etapa de colector-emisor si se le añade la degeneración añadiendo una resistencia de emisor al LTP reducirá la distorsión sustancialmente. En resumen, tenemos la aproximación:

$$A_{v}=\frac{R_{L1}}{2(r_{e}'+R_{e})}$$

Donde  $R_{L1}$ es una resistencia de carga en el colector. 
$R_{E}$ es el valor de la resistencia de degeneración en cada emisor del par diferencial. 

Esta ganancia es para el caso donde solo una resistencia está conectada al colector. Si se toma la salida diferencial a través de los colectores de $Q_{1}$ y $Q_{2}$ la ganancia será el doble. Por conveniencia, la resistencia total emisor a emisor en un LTP incluyendo las resistencia intrínseca $r_{e}'$ se llamará :

$$R_{LTP}=2(R_{e}'+R_{E})$$

## Colector común

Es esencialmente un amplificador de ganancia unitaria que suministra ganancia de corriente. Es a menudo como una etapa de buffer, permitiendo que la gran impedancia de salida de la etapa EC o el LTP pueda manejar una gran carga. Este circuito se ilustra en la siguiente figura: 


![Colector común\label{fig:CC}](imagenes/colector_comun.png) 

Es llamado colector común porque el colector está conecta a una tierra AC. La resistencia $R_{1}$ establece una corriente constante de colector constante en $Q_{1}$. 

 Para efectos de ilustración, se coloca una resistencia de carga $R_{2}$ a través de un condensador de acople. Para las señales de AC, la resistencia de carga neta $R_{L}$ en el emisor de $Q_{1}$ es el paralelo de $R_{1}$ y $R_{2}$.

$$R_{L}=R_{1}||R_{2}$$

Si $r_{e}'$ es pequeña comparada con $R_{L}$ virtualmente toda la señal de voltaje aplicada a la base de $Q_{1}$ aparecerá en el emisor y la ganancia de voltaje del colector común estará cerca de la unidad. La señal de corriente en el emisor será igual a: 

$$I_{E}=\frac{V_{out}}{R_{L}}$$

Mientras que la señal de corriente en la base de  $Q_{1}$ será esta cantidad dividida por $\beta$:

$$I_{\beta}=\frac{V_{out}}{R_{L}}*\frac{1}{\beta}$$

Es aparente que la impedancia de vista en la base de  $Q_{1}$ es igual a la impedancia de carga multiplicada por la ganancia de corriente de  $Q_{1}$.

$$Z_{in}=R_{L}*\beta$$

Esta es la función más importante del colector común. 

Como se ha mencionado, la ganancia de voltaje de colector común es cercana a la unidad. Suponga que $R_{1}=9.4K\Omega$ y la corriente de polarización del transistor es 1mA:

$$r_{e}'=\frac{26mV}{1mA}=26\Omega$$

Suponga que  $R_{2}=1K\Omega$ obteniendo una resistencia neta:

$$R_{L}=9.4K\Omega || 1K\Omega= 904\Omega$$

La ganancia de voltaje del seguidor de emisor es aproximadamente:

$$G= \frac{R_{L}}{R_{L}+r_{e}'}=\frac{904}{904 + 26}=0.97$$ 

A grandes oscilaciones de voltaje la corriente instantánea de colector de $Q_{1}$ cambiará con la señal causando un cambio de $r_{e}'$. Esto producirá un cambio en la ganancia incremental que corresponde a distorsión. Suponga que la señal de corriente en el emisor es 0.9mA pico en cada dirección, produciendo un voltaje de 814mVp.

En el pico de la oscilación negativa, la corriente de emisor es solo 0.1mA y $r_{e}$ es 260$\Omega$, la ganancia incremental cae 0.78. en el pico de la oscilación positiva la corriente de emisor es 1.9mA y $r_{e}=13.7\Omega$, esto implica una ganancia de voltaje de 0.985, la ganancia de voltaje ha cambiado un 21% sobre la excursión de la señal de voltaje. Esto causa una distorsión considerable del segundo armónico.

Una solución a esto es reducir $R_{1}$ tal que fluya una gran cantidad de corriente de polarización haciendo $r_{e}'$ una pequeña parte de la elevación de ganancia. Esto, claro esta, también reduce la resistencia neta de carga $R_{L}$. Una mejor solución es reemplazar $R_{1}$ con una fuente de corriente constante.

La transformación de una impedancia de bajo valor a una impedancia de entrada mucho mas grande realizada por el colector común
es una función de la ganancia de corriente del transistor.

El $\beta$ es función de la frecuencia tal como lo establece el $f_{T}$ de transistor. Esto significa, por ejemplo que una carga resistiva se transformara en una impedancia en la entrada del colector común que eventualmente empieza a decrecer con la frecuencia en la medida que $\beta_{AC}$ disminuya con la frecuencia.

Un transistor con unos valores nominales de :

$$\beta=100$$
$$f_{T}=100MHz$$
$$f_{p}=1MHz$$

El $\beta$ AC del transistor comenzara a decrecer a 1MHz. La disminución de la impedancia de entrada del colector común entonces sera capacitiva en naturaleza, y la fase de la corriente de entrada se adelantara en fase al voltaje en un ángulo aproximado a $90^o$. La transformación impedancias trabaja en los dos sentidos.

Suponga que tenemos un colector común que está manejado por una impedancia de una fuente de 1K$\Omega$.

La frecuencia interior de la impedancia de salida del $C_{r} C_{o}$ sera aproximadamente 1K$\Omega$ dividido por 10$\Omega$ (ignorando $r_{e}'$).

Sin embargo, la impedancia de salida que se incrementa con la frecuencia es inductiva. Entonces $Z_{out}$ de C.C tiende a ser inductiva en altas frecuencias. Ahora considere que un C.C esta cargado con una capacitancia, esto puede producir inestabilidad tal como se verá.

La impedancia de carga presentada por la capacitancia disminuye con el incremento de la frecuencia. La cantidad por la cual esta impedancia de carga es multiplicada por $\beta_{AC}$ también cae con la frecuencia 1MHz.

Esto significa que la impedancia de entrada del C.C en ultimas decrecerá con el cuadrado de la frecuencia. También significa que la corriente en la carga, se adelanta al voltaje en $90^o$, posteriormente se transformara en otros $90^o$ por la caída de la corriente del transistor con la ganancia de corriente por la frecuencia.

Esto significa que la corriente de entrada del colector común adelantara al voltaje aproximadamente $180^o$ . Cuando la corriente esta desfase con el voltaje $180^o$ corresponde a una resistencia negativa; esto puede producir inestabilidad, ya que la impedancia de entrada de este colector común bajo estas condiciones es una resistencia negativa dependiente de la frecuencia. Es explica por qué colocando una resistencia en serie en un colector común algunas veces lo estabiliza. La resistencia negativa se añade tal que la resistencia total es positiva; hay un aspecto mas del comportamiento del C.C que es pertinente  en el uso que se le da como etapa de salida en un amplificador de potencia.





 


 

     





 

      





