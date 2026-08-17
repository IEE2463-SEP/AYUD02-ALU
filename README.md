# AYUD02 · ALU

> IP-Cores y operaciones: una RAM, una máquina de estados y una ALU trabajando juntas en un *Block Design* de Vivado, sobre la tarjeta ZyboZ7.

Ayudante a cargo: **Ernesto Ferrante** — ernesto.ferrante@uc.cl

Esta ayudantía se divide en dos partes bien distintas:

| | Qué es | Cuándo se hace |
| :--- | :--- | :--- |
| **Actividades previas** | El diagrama de bloques (RAM + SM + ALU) y las operaciones de multiplicación y división. | **Antes**, en su casa. |
| **Ejercicio propuesto** | Operaciones complejas: nuevos valores en la RAM y una tabla de 16 operaciones en la ALU. | **Durante** la ayudantía. |

---

## 🎥 Antes de la ayudantía

Debes llegar a la sesión con las **actividades previas ya desarrolladas y funcionando en la tarjeta**: el *Block Design* con la RAM, la máquina de estados y la ALU, y sobre ese mismo diseño las operaciones de **multiplicación y división** incorporadas a la ALU. Todo el detalle está en el [enunciado](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/AYUD02-ALU.pdf).

La primera actividad (sin multiplicación y división) está resuelta paso a paso en este video, grabado el año **2023 por la ex ayudante del curso Catalina Sierra**:

[![Video de la ayudantía 02](https://img.youtube.com/vi/h553pa4J9vg/hqdefault.jpg)](https://youtu.be/h553pa4J9vg)

**Apoyarse en el video es opcional.** Puede seguirlo completo, usarlo sólo para destrabar un punto puntual, o resolver las actividades por su cuenta: eso lo decide usted. Lo que no es opcional es llegar con el diseño andando, porque el tiempo de la ayudantía se destinará por completo al ejercicio propuesto.

---

## 📂 Material

| Archivo | Descripción |
| :--- | :--- |
| [AYUD02-ALU.pdf](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/AYUD02-ALU.pdf) | Enunciado de la ayudantía: actividades previas, ejercicio propuesto y tabla de operaciones de la ALU. |
| [ALU.vhd](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/ALU.vhd) | Código VHDL de la ALU utilizada en la ayudantía. |
| [SM.vhd](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/SM.vhd) | Código VHDL del bloque SM (máquina de estados). |
| [RAM.vhd](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/RAM.vhd) | Código VHDL del bloque RAM, modificado respecto de la ayudantía 01. |
| [Zybo-Z7-Master.xdc](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/Zybo-Z7-Master.xdc) | Constraints de la tarjeta (mapeo de pines). |
| [AYU02-ALU.zip](https://github.com/IEE2463-SEP/AYUD02-ALU/blob/HEAD/AYU02-ALU.zip) | Proyecto de Vivado desarrollado en la ayudantía. |

---

## 🧪 Durante la ayudantía

El **ejercicio propuesto** es el trabajo de la sesión, y fue propuesto y desarrollado por el ayudante de este semestre, **Ernesto Ferrante**. Consiste en modificar la RAM y la ALU para operar con nuevas operaciones arbitrarias:

- En la **RAM**, reemplazar los valores almacenados por valores entre 0 y 15 distribuidos de forma arbitraria.
- En la **ALU**, implementar las 16 operaciones de la tabla de códigos del enunciado, que combinan sumas, restas, promedios, valor absoluto, NOT, AND y productos.

### 📤 Entrega y bonificación

El desarrollo del ejercicio propuesto se sube a **Canvas el mismo día de la ayudantía, hasta las 14:50**. Entregarlo dentro de plazo otorga **una décima (+0,1)** en la nota del **Proyecto 1**.

---

<sub>IEE2463 · Sistemas Electrónicos Programables</sub>
