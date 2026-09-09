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
      <img src="../assets/Chapter1/placeholder_danitza.jpg" alt="Foto de Danitza" width="120" />
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

El modelo de distribución de bebidas de consumo masivo, particularmente en envases PET no retornables, enfrenta serios desafíos logísticos. A pesar de los altos volúmenes de producción, los almacenes y distribuidoras operan frecuentemente con sistemas heredados o procesos manuales. El verdadero problema de la startup radica en la falta de visibilidad en tiempo real de la mercadería, lo que imposibilita un control estricto sobre las mermas y retrasa la gestión de despachos.

Aplicando la técnica de análisis de problemas **5W+2H**, desglosamos la problemática de la siguiente manera:

*   **What (¿Qué?):** Pérdida de inventario (mermas), desorganización en la asignación de despachos y nula trazabilidad del estado físico del producto durante las operaciones logísticas.
*   **Why (¿Por qué?):** Porque los procesos dependen de verificaciones manuales y desconectadas. No existe un ecosistema que integre la lectura masiva de productos ni el monitoreo ambiental/físico de la carga en los vehículos.
*   **Who (¿Quién?):** Afecta financieramente a las empresas embotelladoras y distribuidoras. Operativamente impacta a los Jefes/Gerentes de Logística y a los Operarios de Almacén.
*   **When (¿Cuándo?):** Durante los procesos de preparación de pedidos (picking), asignación de rutas, carga de vehículos y transporte hacia los distribuidores finales.
*   **Where (¿Dónde?):** En los centros de distribución, almacenes de las embotelladoras y durante la ruta de los camiones de transporte.
*   **How (¿Cómo?):** Se soluciona implementando una plataforma SaaS que centralice la información y se integre con hardware IoT (sensores de peso, humedad, temperatura y antenas de lectura masiva RFID) para automatizar el registro y monitorear el estado de los envases.
*   **How much (¿Cuánto?):** Las pérdidas por mermas no detectadas a tiempo y las ineficiencias en despachos representan millones en sobrecostos operativos anuales para la industria de bebidas masivas.

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

El estado actual de la gestión logística en empresas embotelladoras se ha enfocado en sistemas transaccionales básicos y registros en papel. Lo que este proceso no logra es proporcionar visibilidad en tiempo real y automatizar el control físico de la mercadería. Nuestro producto (BevTrace) abordará esta brecha ofreciendo un SaaS integral que combina Dashboards de KPI, gestión automatizada de despachos y monitoreo IoT, lo que reducirá las mermas y optimizará el flujo de trabajo operativo.

#### 1.2.2.2. Lean UX Assumptions

**Business Assumptions:**
*   Las empresas embotelladoras están dispuestas a invertir en un modelo SaaS si demuestra una reducción directa en el porcentaje de mermas y productos dañados.
*   La integración de sensores IoT (peso, humedad) es factible y los clientes perciben el valor de la telemetría para asegurar la calidad de los envases PET.

**User Assumptions (Basado en User vs. Buyer Persona):**
*   **Buyer Persona (Gerente de Logística):** Necesita consolidar datos rápidamente. Asumimos que valorará por encima de todo un *Dashboard de KPI en tiempo real* para la toma de decisiones estratégicas.
*   **User Persona (Operario de Almacén):** Busca reducir su carga de trabajo manual. Asumimos que adoptará la plataforma si la funcionalidad de *Lectura Masiva* reduce drásticamente el tiempo de inventariado y carga.

#### 1.2.2.3. Lean UX Hypothesis Statements

*   **Hipótesis 1:** Creemos que una reducción del 25% en las mermas no justificadas se logrará si los *Gerentes de Logística* logran detectar anomalías físicas en tránsito con la *integración IoT (sensores de peso/humedad)*.
*   **Hipótesis 2:** Creemos que un aumento del 30% en la velocidad de despacho se logrará si los *Operarios de Almacén* logran registrar pallets enteros simultáneamente con el *módulo de lectura masiva y asignación automatizada*.
*   **Hipótesis 3:** Creemos que la retención de clientes corporativos aumentará en un 40% si los *Jefes de Logística* logran una visibilidad gerencial inmediata con el *Dashboard de KPI en tiempo real*.

#### 1.2.2.4. Lean UX Canvas

*(Espacio reservado para la inserción de la imagen del Lean UX Canvas del equipo)*
<img src="../assets/Chapter1/Lean_UX_Canvas_BevTrace.png" alt="Lean UX Canvas" width="auto" height="550"/>

## 1.3. Segmentos objetivo

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