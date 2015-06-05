% Notas de clase amplificadores de Audio 
% Leonardo Rodríguez
% septiembre 06 2014


# Introducción a los transistores

El diccionario Webser define la electrónica como "la ciencia que trata con
el comportamiento y control de los electrones..." Específicamente la
electrónica trata con el uso de los campos eléctricos para controlar el
flujo de cargas eléctricas.

Uno de los primeros ejemplos conocidos de esto fue observado por Thomas
Edison y se le llamó el efecto Edison. En experimentos con bulbos de luz,
Edison observó que había una corriente entre el filamento y otro conductor
en el bulbo si este conductor tenía un potencial eléctrico positivo
relativo al filamento pero no si esto conductor tenía un potencial
eléctrico negativo  Así la corriente se podía controlar ajustando un campo
eléctrico. Años después, esto se conció como el diodo o válvula eléctrica
de una vía. La corriente conduce en una vía pero no en la otra.

El diodo de vacío evolucionó hasta tener un filamento indirectamente
calentando un cátodo a una temperatura tal que los electrones en el cátodo
literalmente saltan fuera del metal y forman una nube de electrones al
rededor un ahora relativamente positivo cátodo. Una placa llamada ánodo se
colocaba a una distancia corta y podía atraer los electrones como una
corriente si ella era más positiva que el cátodo. Si la placa fuera más
negativa que el cátodo no habría corriente. Los nombres ánodo y cátodo son
usados hoy día en cualquier tipo de diodo.

Flemming descubrió que añadiendo un cable llamdao grilla de control entre
el cátodo y el ánodo, la corriente debida a un ánodo positivo podría ser
controlada variando el voltaje de la grilla relativo al cátodo. Esta era
una fuente de voltaje controlada por corriente.
Había dos campos eléctricos en trabajo. Un campo estaba enre el ándodo y el
cátodo  y el otro campo entre la grilla y el cátodo. Mediante un manejo
adecuado de estos dos campos, se podían construir amplificadores.
Debido a que este dispositivo tenía tres elementos  este dispositivo se
llamó triodo. La grilla de control se polarizaba a un potencial más o menos
negativo que el cátodo tal que el 


El transistos fue desarrollado a partir de solucionar el problema de los
sistemas que tenían muchos tubos de vacío (como un sistema telefónico) la
probabilidad es alta que en cualquier momento al menos un tubo en el
sistema tuviera que ser reemplazado. Un sustituto que tuviera una vida útil
considerablemente más larga. En 1948 el primer dispositivo de estado sólido
que se conoció como transistor fue desarrollado en los laboratorios Bell.
El transistor operaba a temperatura ambiente así que no se necesitaba
calentar. También el transistor 


# Respuesta en frecuencia de amplificadores

## Introducción

Todos los amplificadores tienen un ancho de banda finito. La frecuencia de
corte inferior en algunos casos se puede extender hasta DC y es un
parámetro bajo el control directo del diseñador. La frecuencia de corte
alta está determinada por las características físicas de los componentes y
la construcción del circuito.  El diseñador puede diseñar para una
frecuencia de corte superior arbitraria abajo de este límite. La frecuencia
de corte es por definición la frecuencia de potencia mitad y es la
frecuencia donde la ganancia de potencia es la mitad de la que se encuentra
en la mitad de la banda --entre las frecuencias de corte superior e
inferior donde los efectos de la frecuencia se pueden ignorar.

Los amplificadores sólo necesitan tener suficiente ancho de banda para que
pasen las señales deseadas. Un exceso de ancho de banda puede ser una
fuente de problemas debido a que cualquier señal indeseada fuera de banda
se amplificarán en lugar de suprimirse. Como un ejemplo, un mito común en
los amplificadores de audio es que se necesita un ancho de banda de cientos
o aún miles de kilohertz para una reproducción de calidad. La realidad es
que es deseable para un amplificador de audio tener una frecuencia de corte
superior neta que limite con la sensibilidad de oído humano
(aproximadamente 20 kHz) o la frecuencia de corte superior de los parlantes
-- la que sea menor. Las etapas individuales necesitarán una respuesta en
frecuencia mayor ya que la respuesta neta de todo el amplificador ...  Otro
mito en los amplificadores de audio es que la respuesta a las frecuencias
bajas se debería extender hasta DC. La realidad es que la frecuencia neta
de corte inferior debería ser ligeramente menor que la de los parlantesse
debería extender hasta DC. La realidad es que la frecuencia neta de corte
inferior debería ser ligeramente menor que la de los parlantes. Respuestas
abajo de la que  los parlantes  pueden reproducir causa una distorsión ya
que los parlantes se forza a ir más allá de los límites de la linealidad .
Un sistema de audio bien diseñado debe estar cuidadosamente limitado en
banda para una óptima calidad de sonido.

## Frecuencia de corte inferior




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

Hay cuatro tipos de amplificador_

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

$$ \frac{R_i}{R_s + R_i} = \frac{1}{R_s/Ri + 1} $$

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
más grande que $R_L$. La ganancia de potencia se maximiza si $ R_o = R_L$,
ya que esta situación minimiza el denominador. Considere los siguientes
ejemplos:

* $A = 32, \, R_i / R_L  = 2 R_o / R_L = 1 \rightarrow P_g = 512$. Un amplificadro típico
* $A = 10, \, R_i /R_L = 0.3 R_o / R_L = 5  \rightarrow P_g = 0.83$. Un amplificador poco
  útil ya que $P_i < P_o$.
* $A = 0.8, \, R_i / R_L = 1000,\,R_o/R_L=1 \rightarrow P_g = 160$ Otro
  amplificador típico. (ganancia de voltaje $<1$)

## Prueba real  ##

Hay una prueba real que debemos considerar. ¿Cuál es la razón de potencia
entregada a la carga con un amplificador a la potencia que debería haber
sido entregada a la carga ...
¿Es posible alcanzar menor potencia a la carga con un amplificador (que
tenga una ganancia de potencia mayor que 1) por simplemente conectar la
fuente a la carga sin usar un amplificador 




# Diseño general de BJT [2]


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
5.  Calcular el valor necesario de RE1 para alcanzar una ganacia específica
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
amplificador no es el mejor para una situación dada --alguno de los otros
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

1.  Escoger un valor adecuado de RC basado en la resistencia de carga
2.  Calcular un valor para VBB basado en las necesidades de estabilidad de
    temperatura
3.  Determinar el valor de VCQ (muy complicado -- ver otras notas)
4.  Completar el diseño de la polarización
5.  Calcular el valor de RE1 para alcanzar una ganancia AC específica.

## Diseño base común

Es muy similar al diseño de amplificadores emisor común

1.  Escoger un valor adecuado de RC basado en la resistencia de carga
2.  Calcular un valor para VBB basado en las necesidades de estabilidad de
    temperatura
3.  Determinar el valor de VCQ (muy complicado -- ver otras notas)
4.  Completar el diseño de la polarización
5.  Calcular el valor de RE1 para alcanzar o una impedancia de entrada
    específica o una ganancia AC específica.

## Diseño colector común

El diseñador no tiene control sobre la ganancia de un diseño colector
común. La ganancia será siempre menor a uno. Las ganancias típicas varían
de 0.99 a 0.7. El diseñador tiene algún control sobe la impedancia de
salida añadiendo un resistor RE1, en serie con la salida. Este resistor
incrementa la impedancia de salida y también incrementa la impedancia de
entrada. Sin embargo, en todos los casos, la ganancia neta decrece como
resultado de la división de voltaje adicional --pero alguna adaptación de
impedancia puede ser más importante que la ganancia.


1.  Escoger un valor adecuado de RC basado en la resistencia de carga
3.  Determinar el valor de VCQ para máxima excursión
2.  Calcular un valor para VBB
4.  Completar el diseño de la polarización
5.  Calcular el valor de RE1 para alcanzar una impedancia de salida
    específica.



# Amplificadores multietapa [1]


Existe un límite de cuánta ganancia se puede alcanzar de un amplificador de
una sola etapa. Los amplificadores de una sola etapa también tienen límites
en las impedancias de entrada y de salida. Los amplificadores multietapa
son usados para alcanzar altas ganancias y suministran mejor control de
impedancias de entrada  y salida. Dos grandes ventajas que tienen los
amplificadores multietapa sobre los de una sola etapa son la flexibilidad
en la impedancia de entrada y salida y una ganancia mucho más grande..

Los amplificadores multietapa se pueden dividir en lazo abierto y
realimentación negativa. Los amplificadores de lazo abierto son fáciles de
entender y diseñar pero son sensibles a las variaciones ambientales . Los
amplificadores de
realimentación negativa son un poco más difíciles de entender pero tienen
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
----------            ------------------------------------
Bajo                   menos que unos cientos de Ohoms
medio                  unos pocos miles de Ohms 
Alto                   unos pocos miles de Ohms
Muy alto               unos decenas de miles de Ohms
Extremadamente alto    unos cientos de miles de Ohms
-----------------------------------------------------------

Table: Cuantificación de valores de Resitencias de entrada y salida

Descriptor               Ganancia de voltaje
--------------------     -------------------
Bajo                     
medio                   < 50        
Alto                    50 a 500    
Muy alto                500 a 5000 
Extremadamente alto     > 5000      
------------------------------------------

Table: Cuantificación de las ganancias de voltaje

## Acoplamiento AC versus acoplamiento DC

El método más simple para construir un amplificador multietapa es colocar
en cascada varias etapas con su respectivo acople AC. El acoplamiento AC
bloquea los caminos DC y hace el diseño y análisis de polarización más
simple. Un ejemplo típico se muestra en la figura \ref{fig:ac}

![Amplificador multietapa con acoplamiento capacitivo\label{fig:ac}](imagenes/multietapa-ac-lt.png){rwidth=5cm rheight=5cm}

El uso de acoplamiento de AC requiere una gran cantidad de condensadores y
resistores que podrían ser eliminados con un diseño innovador. La clave
para esto es el de organizar para el punto Q de voltaje en la salida de una
etapa sea el mismo que el puto Q de voltaje en la entrada de la siguiente
etapa.  Entonces los condensadores de acoplamiento AC y los resistores
asociados a la polarización no son necesarios. Los resistores de polarización y así reducir la ganancia del
amplificador.  Un amplificador diseñado sin eso se puede alcanzar una alta
ganancia con muchas menos partes. El siguiente circuito muestra el primer
ejemplo que las partes innecesarias quitadas. Observe la simplicidad de la
figura \ref{{fig:dc}

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
alcanzar hasta varias decenas de miles si $Ri_{E1B}$  y $R_{E2B}$ son cero.
Estos resistores a menudo no son cero para reducir la ganancia a niveles
deseados.

![Amplificador de alta impedancia de
entrada\label{fig:alta}](imagenes/multietapa-alta-impedancia-in.png)

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
voltaje de salida DC generalmente se fija a VCC/2 por la razón del resistor
de realimentación y el resistor de base a tierra. La ganancia inversor se
fija por la razón del resistor de realimentaciń al resistor de entrada.

![Amplificador inversor con realimentación de alta
ganancia\label{fig:alta}](imagenes/multietapa-realimentado-4.png)

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

![Amplificador de alta impedancia de entrada y baja impedancia de
salida\label{fig:analiza}](imagenes/amp-analizar.png)

El circuito de ejemplo explora varias cuestiones de cómo manejar el
acoplamiento directo. La clave del análisis es "divide y reinarás".

Para el análisis comenzaremos en la entrada del amplificador y trabajar
hacia la salida. Los objetivos del análisis son determinar las
características de caja negra

* Resistencia de entrada: Rin
* Resistencia de salida: Rout
* Ganacia de voltaje: Av
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
$$ I_{E1} = (1.364 - 15 + 0.65) / (18k + 32.73k / 151 ) = -0.713 mA $$

Las polaridades en esta ecuación pueden no parecerle correctas a algunos
estudiantes. Pero observe que los 15 voltios de la fuente de poder es
el VEE para esta etapa ya que  es acá donde el emisor se conecta. Debido a
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

$$R_{BB2} = 18000 || \frac{32.73}{151} = 214 \Omega $$

Observe que este valor es despreciable comparado con $R_{E2}$ (3.6K) y es una
característica de un amplificador bien diseñado. Así, el efecto de la
corriente de base $Q_2$ en la condición de polarización para la primera etapa
discutida antes es insignificante. Tuvimos que asumir esto en primera
instancia. Ahora esto está probado. Si este no fuera el caso entonces
nuestros cálculos en la primera etapa no serían correctos y tendríamos que
aplicar otras ecuaciones matemáticas y probablemente  iteraciones para
obtener los resultados correctos. El término $R_{BQ2}$ está incluido en el
siguiente cálculo sólo para no confundir al estudiante ---observe que
$214/151$ es insignificante comparado con el resistor de emisor de 3.6K

$$ V_{BB2} =I_{B2} R_{B2} + V_{BE2} + I_{E2} R_{E2} = \frac{I_{E2}}{\beta+1} R_{B2} + V_{BE2} + I_{E2} R_{E2}$$

$$ I_{E2} = \frac{V_{BB2} - V_{BE2}}{R_{B2}/(\beta + 1) + R_{E2}} $$

$$ I_{E2} =
 (2.17 - 0.65) / (3.6K + 214/151) = 422 uA $$

El voltaje de emisor de $Q_2$ es el mismo que el de el voltaje de base de $Q_1$
o
1.52V -- prácticamente independiente de la temperatura. Esto se consigue por
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

$$ r_{bt2} = (\beta + 1) (r_{e2} + R_{E2A} || R_{E2B}) = 151 * (61.6 + 3600 || 47) = 16.3 k $$

La impedancia de entrada de la primera etapa se encuentra de la manera
usual:

$$ r_{bt1} = (\beta +1 ) ( r_{e1} + R_{E1} || r_{bt2} ) = 151 * (36.5 + 18k || 16.3 k) = 1.3 M $$

La impedancia neta del amplificador es entonces la $R_B$ de la primera etapa
en paralelo con $r_{bt1}$.

$$ R_{in} = R_{B1} || r_{bt1} = 32.7k || 1.3M = 31.9k $$

## Calculando la impedancia de salida del amplificador ##

La resistencia de salida del amplificador es simplemente la resistencia de
salida de la etapa colector común de salida que se calcula como

$$ R_{out} = R_{E3} || \left( r_{e3} + \frac{R_{C2}}{(\beta+1)} \right) = 1000 || (3.2 + 24k/151) = 139.5 \Omega $$

## Cálculo de la ganancia de voltaje del amplificador sin carga ##

La ganancia de voltaje del primer amplificador es 

$$ A_{v1} =\frac{R_{E1}}{r_{e1} + R_{E1}} = \frac{18k} {36.5 + 18k} = 0.998 $$

La resistencia de salida de la primera etapa es al menos (tomando la
resistencia de la fuente que no conocemos, que sea muy grande comparada con
la RB de la primera etapa) dada por lo siguiente

$$ R_{o1} = R_{E1} || \frac{R_{in}}{\beta + 1} = 18k || (36.5 + 32.73k/151) = 249.7 \Omega $$

La resistencia de entrada $r_{bt2}$ a la segunda etapa ya se calculó como 16.3k

El factor de división de voltaje entre la primera y segunda etapa es 

$$ V_{d12} = \frac{r_{bt2}}{R_{o1} - r_{bt2}} = 16.3k / (249.7 + 16.3k) = 0.9875 $$

La ganancia de la segunda etapa es

$$ A_{v2} = (150/151) * 24k/(61.6 + 3600 || 47) = 220.8 $$

La resistencia de salida de la segunda etapa es $R_{o2} = 24k$ 

La resistencia de entrada de la tercera etapa es

$$ R_{in3} = (\beta + 1) * ( r_{e3} + R_{E3}) = 151 * (3.2+1000) = 151.5 k $$

El factor de división de voltaje entre las etapas dos y tres es

$$ V_{d23} = \frac{R_{in3}}{R_{o2} + R_{in3}} = 151.5k / (24k + 151.5k) = 0.863 $$

La ganancia de voltaje de la tercera etapa es

$$ A_{v3} = \frac{R_{c3}}{r_{e3}+R_{C3}} = 1000/(3.2 + 1000) = 0.997 $$

El voltaje total del amplificador es

$$ A_{v} = A_{v1}*V_{d12}*A_{v2}*V_{d23}*A_{v3} = 0.998 * 0.985 * 220.8 * 0.863 * 0.997 = 186.7 $$

## Resumen de resultados ##

$$ R_{in} = 31.9k $$

$$ R_o = 139.5 \Omega $$

$$ A_v = 186.7 $$

## Ejercicio ##

El estudiante debe crear un circuito equivalente usando etapas NPN-PNP-NPN
e intercambiar el lugar de la tierra y de Vcc (ayuda: redibuje el circuito
para relacionar con este). Entonces analice este circuito usando el mismo
proceso que se describe acá. El método  y resultados serán idénticos
excepto de las obvias polaridades. Algunos voltajes serán diferentes ya que
el punto de referencia se ha movido con el intercambio de Vcc y tierra. Por
ejemplo Vb2 = 15 - 2.17 = 12.83 V




# Fuentes
*  [1] <http://www.kennethkuhn.com/students/ee351/multistage_amplifiers.pdf>
*  [2] <http://www.kennethkuhn.com/students/ee351/bjt_general_design.pdf>
*  [3] <http://www.kennethkuhn.com/students/ee351/multistage_analysis_example.pdf>
*  [4] <http://www.kennethkuhn.com/students/ee351/amplifiers.pdf>
* [5] <http://www.kennethkuhn.com/students/ee351/distortion_of_signals.pdf>
