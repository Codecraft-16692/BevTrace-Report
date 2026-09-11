# Capítulo IV: Product Design

<p align="justify">El presente capítulo aborda las decisiones de diseño adoptadas para el desarrollo del producto BevTrace, incluyendo su Landing Page. Se detallan los lineamientos visuales, la organización de la información y los criterios de experiencia de usuario que buscan garantizar una interfaz clara, coherente y adecuada al contexto del sector logístico y de distribución de bebidas embotelladas.</p>

## 4.1. Style Guidelines.

### 4.1.1. General Style Guidelines.
<p align="justify">
Las decisiones visuales de BevTrace responden a la naturaleza operativa del producto: una plataforma pensada para que gerentes de logística y distribución supervisen despachos y trazabilidad sin fricción visual ni ambigüedad en la lectura de datos. Por ello, el equipo CodeCraft prioriza un diseño funcional y sobrio por encima de elementos ornamentales, buscando que cada componente de la interfaz refuerce la percepción de control y confiabilidad sobre la cadena de distribución.
</p>

<p align="justify">
A continuación se describen los criterios de estilo adoptados para BevTrace, aplicando principios de Diseño de Experiencia de Usuario (UX) e Interfaz de Usuario (UI) orientados a un público empresarial (B2B) del sector de bebidas embotelladas, cuyo objetivo principal al interactuar con el producto es reducir el tiempo de respuesta ante incidencias logísticas y eliminar el registro manual de información.
</p>

#### Branding

<p align="justify">
La marca BevTrace se apoya en dos ideas centrales: la ruta (el trayecto que recorre el producto desde el almacén hasta el punto de destino) y el registro confiable de esa información. El isotipo del logotipo integra un trazo tipo ruta o checkpoint, evocando el seguimiento en tiempo real de despachos, junto con un wordmark de trazo sólido y sin adornos que refuerza la seriedad del producto ante un público de decisión (gerentes de operaciones, logística y TI). Se descarta cualquier elemento gráfico superfluo que reste claridad al isotipo, tanto en formatos grandes (Landing Page, presentaciones comerciales) como en formatos reducidos (ícono de aplicación, favicon del sistema).
</p>

<p align="justify">
Para preservar la legibilidad del logotipo, se define un área de resguardo mínima equivalente a la altura de la letra inicial del wordmark, dentro de la cual no puede ubicarse ningún otro elemento visual. Asimismo, se establecen dos variantes de uso: una versión a color para fondos claros y una versión invertida (blanca) para fondos oscuros o imágenes de fondo, evitando en ambos casos distorsiones de proporción o rotaciones del isotipo.
</p>

<p align="center">
  <img src="../assets/Chapter4/logo_bevtrace.png" alt="Logotipo de BevTrace" width="280">
</p>

#### Typography

<p align="justify">
BevTrace adopta <strong>Roboto</strong> como tipografía principal para toda la interfaz, al ser la fuente predeterminada de Material Design y, por consiguiente, de Angular Material, framework de componentes utilizado en el desarrollo de la Web Application. Esta decisión asegura consistencia tipográfica entre el Landing Page y la aplicación web, sin necesidad de cargar fuentes adicionales que impacten el rendimiento. Para la visualización de datos técnicos y numéricos (identificadores de lote, coordenadas GPS, códigos de despacho, timestamps de trazabilidad) se emplea <strong>Roboto Mono</strong>, cuyo espaciado monoespaciado facilita la alineación tabular y evita confusión entre caracteres similares (0, O, 1, l) en reportes operativos donde la exactitud del dato es crítica.
</p>

<p align="justify">
La jerarquía tipográfica se establece de la siguiente manera, tomando como referencia la escala tipográfica de Angular Material, a fin de mantener coherencia entre el diseño planteado y su futura implementación:
</p>

- **Encabezado principal (H1)**: 2.5rem (40px) en escritorio, 2rem (32px) en móvil.
- **Subtítulos de sección (H2)**: 2rem (32px) en escritorio, 1.75rem (28px) en móvil.
- **Títulos de componente (H3/H4)**: 1.5rem (24px) a 1.25rem (20px).
- **Cuerpo de texto (p)**: 1rem (16px), con interlineado (line-height) de 1.6 para facilitar la lectura de párrafos extensos.
- **Etiquetas y botones (span/button)**: 0.875rem (14px) a 1rem (16px).

<p align="center">
  <img src="../assets/Chapter4/typography_bevtrace.png" alt="Muestra tipográfica de BevTrace" width="500">
</p>

<p align="justify">
Esta jerarquía tipográfica busca garantizar una lectura clara de la información operativa en todas las resoluciones, priorizando el contraste suficiente entre el texto y el fondo según las pautas WCAG 2.1 AA, en línea con el enfoque de accesibilidad adoptado para el producto.
</p>

#### Colors

<p align="justify">
La paleta de colores de BevTrace refuerza los atributos de confianza, precisión y monitoreo en tiempo real que caracterizan al producto, dirigido a un público B2B del sector logístico. Se organiza en tres categorías: colores de marca, colores neutros y colores funcionales de estado.
</p>

**Paleta principal**

| Color | Uso | Valor |
|---|---|---|
| Azul Petróleo (Primario) | Identidad de marca, elementos clave de navegación | `#0D5C63` |
| Azul Cian (Secundario) | Acentos, elementos interactivos | `#00A8CC` |

**Colores neutros**

| Color | Uso | Valor |
|---|---|---|
| Neutro oscuro | Texto principal, fondos oscuros | `#2B2B2B` |
| Neutro claro | Fondos de sección, tarjetas | `#F5F5F5` |

**Colores funcionales**

| Color | Uso | Valor |
|---|---|---|
| Verde (Éxito) | Confirmaciones, despachos completados | `#2E7D32` |
| Ámbar (Alerta) | Advertencias, retrasos en tránsito | `#F9A825` |
| Rojo (Error) | Errores, incidencias críticas de trazabilidad | `#C62828` |

<p align="center">
  <img src="../assets/Chapter4/colors_bevtrace.png" alt="Paleta de colores de BevTrace" width="650">
</p>

<p align="justify">
Esta distribución cromática busca transmitir a los clientes de BevTrace una imagen de control operativo y confiabilidad, reservando los colores funcionales exclusivamente para estados del sistema, a fin de evitar ambigüedad en la comunicación visual de alertas críticas de la cadena de distribución.
</p>
### 4.1.2. Web Style Guidelines.

## 4.2. Information Architecture.

### 4.2.1. Organization Systems.

### 4.2.2. Labeling Systems.

### 4.2.3. SEO Tags and Meta Tags

### 4.2.4. Searching Systems.

### 4.2.5. Navigation Systems.

## 4.3. Landing Page UI Design.

### 4.3.1. Landing Page Wireframe.

### 4.3.2. Landing Page Mock-up.

## 4.4. Web Applications UX/UI Design.

### 4.4.1. Web Applications Wireframes.

### 4.4.2. Web Applications Wireflow Diagrams.

### 4.4.2. Web Applications Mock-ups.

### 4.4.3. Web Applications User Flow Diagrams.

## 4.5. Web Applications Prototyping.

## 4.6. Domain-Driven Software Architecture.

### 4.6.1. Design-Level Event Storming.

### 4.6.2. Software Architecture Context Diagram.

### 4.6.3. Software Architecture Container Diagrams.

### 4.6.4. Software Architecture Components Diagrams.

## 4.7. Software Object-Oriented Design.

### 4.7.1. Class Diagrams.

## 4.8. Database Design.

### 4.8.1. Database Diagrams.
