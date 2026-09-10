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
      <strong>Christofer William Costa Morales</strong> - Ingeniería<br><br>
      [Insertar descripción manual aquí].
    </td>
  </tr>
  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/Chapter1/Danitza.webp" alt="Foto de Danitza" width="120" />
    </td>
    <td valign="top">
      <strong>Danitza Ivonne Heredia Hoyos</strong> - Ingeniería<br><br>
      [Insertar descripción manual aquí].
    </td>
  </tr>
  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/Chapter1/placeholder_enrique.jpg" alt="Foto de Enrique" width="120" />
    </td>
    <td valign="top">
      <strong>Enrique Augusto Ochoa Prado</strong> - <br><br>
      [Insertar descripción manual aquí].
    </td>
  </tr>
</table>

## 1.2. Solution Profile
### 1.2.1. Antecedentes y problemática

* <b>Who? (¿Quiénes?) </b> <br> Empresas embotelladoras y distribuidoras de bebidas de consumo masivo, así como responsables de almacén, logística, distribución y operaciones. <br/>
* <b>What? (¿Qué sucede?) </b> <br> Dificultades para controlar inventarios, gestionar despachos y realizar la trazabilidad de productos durante la distribución.<br/>
* <b>Where? (¿Dónde ocurre?) </b> <br> En almacenes, centros de distribución y durante el traslado de productos hacia sus respectivos destinos.<br/>
* <b>When? (¿Cuándo ocurre?) </b>	<br> Durante las actividades de almacenamiento, preparación de pedidos, despacho, transporte y recepción de productos.<br/>
* <b>Why? (¿Por qué es un problema?) </b>	<br> Debido a la dependencia de registros manuales, inventarios estáticos, información fragmentada y ausencia de monitoreo en tiempo real.<br/>
* <b>How? (¿Cómo lo solucionan hoy?) </b>	<br> Mediante hojas de cálculo, reportes manuales y diferentes registros que no se encuentran necesariamente integrados o actualizados.<br/>
* <b>How much? (¿Cuánto cuesta no resolverlo?) </b>	<br> La problemática puede generar pérdidas económicas relacionadas con mermas, errores operativos, diferencias de inventario, retrasos y mayores costos de control.<br/>

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

<b>Problem Statement</b>

El estado actual del dominio de distribución de bebidas se enfoca principalmente en la gestión de inventarios, operaciones de almacén y despachos mediante registros manuales, inventarios estáticos e información fragmentada, especialmente en empresas embotelladoras y distribuidoras de bebidas de consumo masivo.
Los productos y servicios existentes no abordan completamente la necesidad de contar con un enfoque integrado y en tiempo real para la trazabilidad de productos y la gestión de despachos, que permita combinar la información operativa con datos provenientes de dispositivos IoT para mejorar la visibilidad de la distribución y reducir las pérdidas de inventario.

Nuestro producto abordará esta brecha mediante una plataforma SaaS que centralice la gestión de inventarios y despachos, permita el monitoreo de los productos en tiempo real e integre telemetría IoT para facilitar la trazabilidad desde el almacén hasta el destino.

Nuestro enfoque inicial estará dirigido a empresas embotelladoras y distribuidoras de bebidas de consumo masivo que trabajen con productos en envases PET no retornables y requieran un mayor control sobre sus operaciones de distribución.
Sabremos que tenemos éxito cuando observemos una reducción de las discrepancias y pérdidas de inventario, una mejora en el control de los despachos, un mayor uso de información operativa en tiempo real y una mayor visibilidad de los productos durante el proceso de distribución.

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

#### Empresas embotelladoras y distribuidoras de bebidas de consumo masivo

- **Tipo de empresa:** Empresas embotelladoras y distribuidoras dedicadas a la comercialización y distribución de bebidas de consumo masivo en envases PET no retornables.
- **Procesos:** Empresas que gestionan operaciones de almacén, inventarios, despachos y distribución de productos.
- **Necesidad principal:** Mejorar el control de inventarios y despachos, reducir las pérdidas de productos y contar con mayor visibilidad sobre el proceso de distribución.
- **Uso de tecnología:** Empresas interesadas en digitalizar sus procesos logísticos mediante soluciones SaaS e integrar tecnologías IoT para obtener información operativa en tiempo real.
- **Beneficios buscados:** Reducción de discrepancias y mermas de inventario, mayor eficiencia en los despachos, trazabilidad de los productos y acceso a información actualizada para la toma de decisiones.

#### Responsables de almacén, logística, distribución y operaciones

- **Perfil:** Profesionales encargados de supervisar y gestionar las operaciones relacionadas con inventarios, despachos, distribución y control logístico dentro de las empresas objetivo.
- **Necesidad principal:** Contar con información centralizada, actualizada y confiable para controlar los productos, supervisar los despachos y detectar oportunamente incidencias durante la distribución.
- **Uso de tecnología:** Utilizan sistemas digitales para consultar, registrar y supervisar información relacionada con las operaciones logísticas.
- **Beneficios buscados:** Mayor precisión en el control de inventarios, visibilidad del estado y recorrido de los productos, alertas sobre incidencias y acceso a indicadores que faciliten la toma de decisiones.
