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