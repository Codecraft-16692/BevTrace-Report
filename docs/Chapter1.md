# Capítulo I: Introducción

La introducción establece el marco conceptual sobre el cual se desarrollará el proyecto. En esta sección inicial se presenta una visión general que permite comprender los objetivos principales, los antecedentes, la problemática identificada bajo la técnica 5W2H, y las asunciones e hipótesis formuladas siguiendo la metodología Lean UX. Asimismo, se definen los segmentos objetivo diferenciando claramente entre los compradores (Buyers) y los usuarios (Users) finales del sistema.

## 1.1. Startup Profile

### 1.1.1. Descripción de la Startup

En una industria donde la eficiencia logística y el control de mermas dictan la rentabilidad, **BevTrace** nace con el propósito de digitalizar y automatizar la cadena de suministro de empresas embotelladoras y distribuidoras de consumo masivo, específicamente en la distribución de bebidas en envases PET no retornables. 

Nuestra propuesta de valor es un sistema SaaS integral que une la gestión operativa con el Internet de las Cosas (IoT). Buscamos eliminar la dependencia de reportes manuales e inventarios estáticos mediante una arquitectura tecnológica que permite el monitoreo en tiempo real, la gestión centralizada de despachos y la trazabilidad inmutable del producto desde el almacén hasta su destino.

<h4 id="Mision">Misión</h4>

Desarrollar una solución tecnológica SaaS robusta y escalable que permita a las empresas embotelladoras digitalizar sus procesos de distribución y trazabilidad logística. En BevTrace nos enfocamos en mitigar la pérdida de inventario (mermas) y optimizar la asignación de despachos integrando telemetría IoT, proporcionando datos exactos y en tiempo real para la toma de decisiones.

<h4 id="Vision">Visión</h4>

Ser la plataforma logística líder en el sector de consumo masivo a nivel regional, estandarizando la trazabilidad inteligente y la digitalización de almacenes, convirtiendo el control de despachos en un proceso totalmente automatizado, transparente e impulsado por datos.

### 1.1.2. Perfiles de integrantes del equipo (CodeCraft)

<table border="1" width="100%">
  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/Chapter1/Mauricio.jpg" alt="Foto de Mauricio" width="120" />
    </td>
    <td valign="top">
      <strong>Mauricio Sebastian Castillo Yataco</strong> - Ingeniería de Software<br><br>
      [Insertar descripción manual aquí].
    </td>
  </tr>
  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/Chapter1/christofer.jpg" alt="Foto de Christofer" width="120" />
    </td>
    <td valign="top">
      <strong>Christofer William Costa Morales</strong> - Ingeniería de Software<br><br>
      Soy estudiante de la carrera de Ingeniería de Software. Cuento con conocimientos en programación C++, edición de videos en canvas, experiencia con los formatos Start up y conocimiento con los programas de Office, como Excel.
    </td>
  </tr>
  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/Chapter1/Danitza.webp" alt="Foto de Danitza" width="120" />
    </td>
    <td valign="top">
      <strong>Danitza Ivonne Heredia Hoyos</strong> - Ingeniería de Software<br><br>
      [Insertar descripción manual aquí].
    </td>
  </tr>
  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/Chapter1/placeholder_enrique.jpg" alt="Foto de Enrique" width="120" />
    </td>
    <td valign="top">
      <strong>Enrique Augusto Ochoa Prado</strong> - Ingenieria de Software <br><br>
      [Insertar descripción manual aquí].
    </td>
  </tr>
</table>

## 1.2. Solution Profile
### 1.2.1. Antecedentes y problemática


*   **What (¿Qué?):** Pérdida de inventario (mermas), desorganización en la asignación de despachos y nula trazabilidad del estado físico del producto durante las operaciones logísticas.
*   **Why (¿Por qué?):** Porque los procesos dependen de verificaciones manuales y desconectadas. No existe un ecosistema que integre la lectura masiva de productos ni el monitoreo ambiental/físico de la carga en los vehículos.
*   **Who (¿Quién?):** Afecta financieramente a las empresas embotelladoras y distribuidoras. Operativamente impacta a los Jefes/Gerentes de Logística y a los Operarios de Almacén.
*   **When (¿Cuándo?):** Durante los procesos de preparación de pedidos (picking), asignación de rutas, carga de vehículos y transporte hacia los distribuidores finales.
*   **Where (¿Dónde?):** En los centros de distribución, almacenes de las embotelladoras y durante la ruta de los camiones de transporte.
*   **How (¿Cómo?):** Se soluciona implementando una plataforma SaaS que centralice la información y se integre con hardware IoT (sensores de peso, humedad, temperatura y antenas de lectura masiva RFID) para automatizar el registro y monitorear el estado de los envases.
*   **How much (¿Cuánto?):** Las pérdidas por mermas no detectadas a tiempo y las ineficiencias en despachos representan millones en sobrecostos operativos anuales para la industria de bebidas masivas.

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

<b>Problem Statement</b>

El estado actual de la gestión logística en empresas embotelladoras se ha enfocado en sistemas transaccionales básicos y registros en papel. Lo que este proceso no logra es proporcionar visibilidad en tiempo real y automatizar el control físico de la mercadería. Nuestro producto (BevTrace) abordará esta brecha ofreciendo un SaaS integral que combina Dashboards de KPI, gestión automatizada de despachos y monitoreo IoT, lo que reducirá las mermas y optimizará el flujo de trabajo operativo.

#### 1.2.2.2. Lean UX Assumptions

Los siguientes supuestos representan las creencias iniciales del equipo respecto al negocio, los resultados esperados, los usuarios, los beneficios y las funcionalidades que conformarán la solución BevTrace.

<b>Business Assumptions</b>

- Creemos que las empresas embotelladoras y distribuidoras de bebidas están dispuestas a adoptar soluciones SaaS para digitalizar y optimizar sus procesos logísticos.
- Creemos que reducir las mermas y mejorar el control de los despachos representa un beneficio económico relevante para las empresas del sector.
- Creemos que un modelo SaaS puede resultar viable para empresas que buscan digitalizar sus operaciones sin asumir el desarrollo y mantenimiento de una solución tecnológica propia.
- Creemos que la integración de tecnologías IoT puede representar un elemento diferenciador frente a soluciones que únicamente permiten administrar inventarios y operaciones de manera tradicional.

<b>Business Outcome Assumptions</b>
- Creemos que BevTrace permitirá reducir las discrepancias entre el inventario registrado y el inventario real.
- Creemos que BevTrace permitirá reducir las pérdidas de productos asociadas a mermas durante el proceso de distribución.
- Creemos que BevTrace permitirá mejorar la eficiencia de la gestión de despachos.
- Creemos que disponer de información actualizada permitirá mejorar la toma de decisiones relacionadas con las operaciones logísticas.

<b>User Assumptions</b>
- Creemos que los responsables de almacén necesitan consultar y actualizar información relacionada con el inventario de productos.
- Creemos que los responsables de logística necesitan registrar, gestionar y supervisar los despachos realizados por la empresa.
- Creemos que los responsables de distribución necesitan conocer el estado y recorrido de los productos durante su traslado.
- Creemos que los responsables de operaciones necesitan consultar información consolidada sobre el desempeño de las operaciones logísticas.

<b>User Outcome and Benefit Assumptions</b>
- Creemos que los responsables de almacén podrán identificar con mayor rapidez las diferencias entre el inventario registrado y el inventario disponible.
- Creemos que los responsables de logística podrán gestionar y supervisar los despachos de manera más eficiente al disponer de información centralizada y actualizada.
- Creemos que los responsables de distribución podrán conocer el estado y recorrido de los productos durante el proceso de traslado.
- Creemos que los responsables de operaciones podrán tomar decisiones más oportunas al disponer de información confiable sobre inventarios, despachos y distribución.

<b>Feature Assumptions</b>

1. <b>Gestión de inventarios</b>
<br>Creemos que un módulo digital para registrar, consultar y actualizar el inventario permitirá a los responsables de almacén mantener un control más preciso de los productos disponibles.</br>
2. <b>Gestión de despachos</b>
<br>Creemos que un módulo centralizado para registrar, asignar y supervisar los despachos permitirá a los responsables de logística mejorar el control de las operaciones de distribución.</br>
3. <b>Trazabilidad de productos</b>
<br>Creemos que una funcionalidad de trazabilidad permitirá a los responsables de distribución consultar el recorrido y estado de los productos desde el almacén hasta su destino.</br>
4. <b>Monitoreo mediante IoT</b>
<br>Creemos que la integración con dispositivos IoT permitirá obtener información de telemetría en tiempo real sobre los productos durante su distribución.</br>
5. <b>Alertas de incidencias</b>
<br>Creemos que un sistema automatizado de alertas permitirá identificar oportunamente eventos o inconsistencias que puedan afectar el inventario o la distribución de los productos.</br>
6. <b>Dashboard de indicadores</b>
<br>Creemos que un dashboard con indicadores logísticos permitirá a los responsables de operaciones visualizar información consolidada sobre inventarios, despachos y trazabilidad para apoyar la toma de decisiones.</br>

#### 1.2.2.3. Lean UX Hypothesis Statements
- <b>Hipótesis 1:</b> Creemos que lograremos reducir las discrepancias de inventario si los responsables de almacén obtienen mayor precisión y visibilidad sobre los productos disponibles mediante un módulo centralizado de gestión de inventarios. Sabremos que esto es cierto cuando al menos el 70% de los responsables de almacén que utilicen la solución reporten una reducción de las diferencias entre el inventario registrado y el inventario real durante el periodo de validación.
- <b>Hipótesis 2:</b> Creemos que lograremos mejorar la eficiencia de los despachos si los responsables de logística obtienen mayor control y visibilidad sobre las operaciones de distribución mediante un módulo centralizado de gestión de despachos. Sabremos que esto es cierto cuando al menos el 70% de los responsables de logística que utilicen la solución reporten una mejora en el seguimiento y gestión de los despachos durante el periodo de validación.
- <b>Hipótesis 3:</b> Creemos que lograremos incrementar la visibilidad de los productos durante el proceso de distribución si los responsables de distribución obtienen acceso al estado y recorrido de los productos mediante una funcionalidad de trazabilidad. Sabremos que esto es cierto cuando al menos el 80% de los responsables de distribución puedan consultar correctamente el estado y recorrido de los productos durante las pruebas de validación.
- <b>Hipótesis 4:</b> Creemos que lograremos detectar oportunamente eventos ocurridos durante la distribución si los responsables de logística y distribución obtienen información operativa en tiempo real mediante la integración de dispositivos IoT. Sabremos que esto es cierto cuando al menos el 80% de los eventos generados durante las pruebas sean detectados y visualizados correctamente por los usuarios responsables.
- <b>Hipótesis 5:</b> Creemos que lograremos reducir las incidencias de inventario y distribución no detectadas oportunamente si los responsables de almacén y logística reciben información sobre eventos relevantes mediante un sistema automatizado de alertas. Sabremos que esto es cierto cuando al menos el 80% de las alertas generadas durante las pruebas sean recibidas y reconocidas correctamente por los usuarios responsables.
- <b>Hipótesis 6:</b> Creemos que lograremos mejorar la toma de decisiones logísticas si los responsables de operaciones obtienen una visión consolidada de los indicadores de inventario, despachos y trazabilidad mediante un dashboard de indicadores. Sabremos que esto es cierto cuando al menos el 80% de los responsables de operaciones puedan identificar correctamente los principales indicadores y utilizarlos para analizar situaciones relacionadas con inventarios y despachos durante las pruebas de validación.

#### 1.2.2.4. Lean UX Canvas
![C1-Canvas](/assets/Chapter1/LeanUXCanvas-BevTrace.png)

### 1.3. Segmentos objetivo

Basados en la distinción entre *Buyer Persona* (quien toma la decisión de compra) y *User Persona* (quien interactúa diariamente con la herramienta), se definen los siguientes segmentos:

<h3 id="segment1">Segmento Objetivo 1: Buyer Persona - Jefes y Gerentes de Logística</h3>

Este segmento es el encargado de adquirir la plataforma SaaS. Su motivación principal es el retorno de inversión (ROI) a través de la optimización de procesos.

*   **Demografía:** Profesionales entre 35 y 55 años, Ingenieros Industriales o Administradores con especialización en Supply Chain Management.
*   **Necesidades:** Visibilidad total de la operación, control estricto de mermas y KPIs actualizados al segundo para reportar a la alta gerencia.
*   **Relación con el sistema:** Interactúan principalmente con el Dashboard de KPI, configuraciones de reglas de negocio y reportes de trazabilidad IoT.

<h3 id="segment2">Segmento Objetivo 2: User Persona - Operarios y Supervisores de Almacén</h3>

Este segmento es el usuario final y operativo del sistema. El éxito de la implementación depende de que la plataforma les resulte intuitiva y eficiente.

*   **Demografía:** Hombres y mujeres entre 20 y 45 años, con educación técnica o secundaria completa.
*   **Necesidades:** Herramientas rápidas que no entorpezcan su labor física, interfaces claras para leer órdenes de trabajo y evitar el conteo manual repetitivo.
*   **Relación con el sistema:** Interactúan con el módulo de Gestión y Asignación de Despachos, operando los escáneres/antenas de lectura masiva y validando la carga física contra el sistema antes del despliegue de las unidades de transporte.
