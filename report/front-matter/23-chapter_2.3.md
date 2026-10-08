## 2.3. Needfinding
### 2.3.1. User Personas

Para el segmento de los Jefes y Gerentes de Logistica:


![UserPersona1](<assets/Chapter2/Jose Peréz.png>)


Para el segmento de Operarios y Supervisores de almacén

![UserPersona2](<assets/Chapter2/María Paz.png>)


### 2.3.2. User Task Matrix

El User Task Matrix presenta las tareas que realizan los User Persona para cumplir sus objetivos en su día a día, independientemente de si usan nuestro software o no. Se evalúa la frecuencia y la importancia de cada tarea para identificar dónde aportar valor.

#### 2.3.2.1. Segmento: Jefes y Gerentes de Logística

|Tarea (Task)|Jefe de Distribución (David)<br>Frecuencia|Jefe de Distribución (David)<br>Importancia|
|:----|:----:|:----:|
|Seguimiento de la orden de compra y recepción de materiales en SAP|Often|High|
|Registro de parámetros de carga (peso, altura, unidad de medida) al ingreso|Often|High|
|Verificación de guías de remisión, facturas y certificados de calidad|Often|High|
|Monitoreo del cumplimiento del plan de abastecimiento|Often|High|
|Seguimiento del indicador ERI (exactitud de inventario)|Often|High|
|Coordinación con proveedores ante retrasos o incumplimientos|Occasionally|High|
|Auditorías internas de inventario|Monthly|High|
|Consolidación de reportes de indicadores logísticos (OTIF, Fill Rate, etc.)|Monthly|Medium|

**Análisis del Task Matrix:** Se observa que las tareas *Seguimiento de la orden de compra*, *Registro de parámetros de carga* y *Monitoreo del cumplimiento del plan de abastecimiento* tienen una Importancia **High** y Frecuencia **Often**, lo cual confirma que estas tareas son el **Core** del negocio y deben ser priorizadas mediante automatización e integración con SAP. Además, la tarea *Coordinación con proveedores ante retrasos*, aunque es **Occasionally**, tiene una importancia **High**, validando la necesidad de mecanismos de alerta temprana ante desviaciones del plan. Por su parte, las *Auditorías internas* y la *Consolidación de reportes*, si bien son de frecuencia **Monthly**, concentran una carga operativa considerable (hasta dos días por consolidación), lo que las convierte en candidatas claras para automatización de reportería.

<br>

#### 2.3.2.2. Segmento: Operarios y Supervisores de Almacén

|Tarea (Task)|Operaria de Almacén (María)<br>Frecuencia|Operaria de Almacén (María)<br>Importancia|
|:----|:----:|:----:|
|Recepción y conteo de mercadería|Often|High|
|Registro de información de inventario tras el conteo|Often|High|
|Preparación de pedidos (picking)|Often|High|
|Verificación de la carga antes del despacho|Often|High|
|Validación manual de pallets contra la orden de despacho|Often|High|
|Detección de daños o discrepancias en la mercadería|Occasionally|High|
|Registro manual de salida de unidades de transporte|Often|Medium|
|Conciliación de información entre documentos en papel y sistema|Occasionally|Medium|

**Análisis del Task Matrix:** Las tareas de *Recepción y conteo de mercadería*, *Preparación de pedidos* y *Verificación de la carga* presentan Frecuencia **Often** e Importancia **High**, confirmando que constituyen el **Core operativo** del almacén y deben priorizarse mediante lectura masiva y automatización (ej. códigos de barras). La *Detección de daños o discrepancias*, aunque es **Occasionally**, mantiene una importancia **High**, evidenciando la necesidad de alertas automáticas que hoy no existen y que dependen únicamente de la revisión visual del personal. Asimismo, la *Conciliación entre papel y sistema* refleja un problema estructural: procesos no integrados que generan doble verificación y retrasos, siendo un punto clave a resolver con una plataforma digital unificada.

### 2.3.3. User Journey Mapping


Para el segmento de Jefes y Gerentes de Logistica

![Logistica](<assets/Chapter2/Customer journey - Jefes y Gerentes de Logistica.png>)


Para el segmento de Operarios y Supervidores de Almacen:

![Operarios](<assets/Chapter2/Customer journey - Operarios y Supervisores de Almacen.png>)


### 2.3.4. Empathy Mapping


Para el segmento de Jefes y Gerentes de Logistica

![Logistica](<assets/Chapter2/Empathy map Logistica.png>)

Para el segmento de Operarios y Supervidores de Almacen:

![Almacen](<assets/Chapter2/Empathy map Almacen.png>)
