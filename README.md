# Visualización y Análisis de Movimiento Humano en MATLAB
## Descripción:
Este script en MATLAB carga datos tridimensionales de movimiento humano, identifica puntos anatómicos clave y visualiza la postura a lo largo del tiempo. Además, calcula y representa gráficamente los ángulos articulares de la cadera, rodilla y tobillo. El código utiliza técnicas de representación gráfica y transformaciones geométricas para proporcionar una comprensión detallada de la cinemática del movimiento humano.
## Funcionalidades Principales:
### Carga de Datos:
El código comienza cargando datos tridimensionales de movimiento humano desde un archivo denominado "DATOSVALE.mat". Estos datos representan las posiciones de puntos anatómicos clave a lo largo del tiempo.
### Visualización Tridimensional:
Se definen y visualizan puntos anatómicos clave en un espacio tridimensional, como las articulaciones y extremidades del cuerpo humano.
### Sistemas Locales de Referencia (SLR):
Se establecen sistemas locales de referencia en puntos clave, como el sacro, muslos, pantorrillas y pies, para facilitar el análisis de la orientación y rotación.
### Rotación y Cálculo de Ángulos:
Se realizan cálculos de rotación entre diferentes segmentos del cuerpo (cadera, rodilla, tobillo) para determinar los ángulos articulares correspondientes.
### Representación Gráfica de Ángulos:
Se generan gráficos que muestran la variación de los ángulos articulares a lo largo del tiempo para la cadera, rodilla y tobillo, tanto para el lado derecho como el izquierdo.
### Interpretación Cinemática:
La visualización y los ángulos calculados proporcionan información detallada sobre la cinemática del movimiento humano, permitiendo una comprensión profunda de la postura y la coordinación de las articulaciones.


__Nota:__ Es fundamental asegurarse de que el archivo "DATOSVALE.mat" contenga los datos necesarios y esté ubicado en el mismo directorio que el script para que el código funcione correctamente.
