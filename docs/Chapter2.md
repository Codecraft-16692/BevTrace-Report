# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores.

Para desarrollar una solución realmente útil, es fundamental comprender el entorno competitivo y las alternativas que actualmente utilizan las empresas embotelladoras y distribuidoras. Este análisis permite identificar cómo se gestionan hoy los procesos logísticos y qué limitaciones presentan las soluciones existentes.

En esta etapa, se analizan distintos tipos de competidores con el objetivo de entender sus fortalezas y debilidades, y así posicionar a BevTrace como una propuesta que responda de manera más efectiva a las necesidades reales del sector.

### 2.1.1. Análisis competitivo.

### 2.1.2. Estrategias y tácticas frente a competidores.

## 2.2. Entrevistas.

Las entrevistas son clave para la metodología de diseño centrado en el usuario al permitirnos recolectar información cualitativa directamente de los actores que enfrentan la problemática identificada. A través del diálogo estructurado, se busca comprender las necesidades, comportamientos, frustraciones y expectativas de los segmentos objetivos, validando o refutando las hipótesis planteadas previamente.

### 2.2.1. Diseño de entrevistas.

Teniendo en cuenta la importancia en la información que nos pueden proveer los entrevistados, se presentan las preguntas clave para cada segmento objetivo. Para eso se consideran dos tipos de preguntas: las personales, orientadas a conocer el perfil del entrevistado y las específicas, las cuales están enfocadas en los procesos actuales, herramientas utilizadas, desafíos operativos y expectativas frente a una solución tecnológica como BevTrace.

<h4 id="Segmento1">Segmento objetivo: Jefes y Gerentes de Logística</h4>

<h4 id="PreguntaPersonal1">Preguntas Personales</h4>

*   ¿Cuál es su nombre?
*   ¿Cuál es su edad?
*   ¿Cuál es su cargo actual dentro de la distribuidora o embotelladora?
*   ¿Cuál es su formación académica?

<h4 id="PreguntasEspe1">Preguntas específicas:</h4>

*   ¿Cómo registran actualmente el control de inventario y las variables físicas (peso, humedad) durante el almacenamiento y transporte?
*   ¿Cómo gestionan la trazabilidad de los despachos hacia los distribuidores finales?
*   En los últimos cierres de mes, ¿con qué frecuencia han tenido discrepancias por mermas no detectadas a tiempo o registros incompletos?
*   ¿Cuánto tiempo les toma preparar la consolidación de datos y reportes de eficiencia logística?
*   ¿Qué tan dispuestos estarían a reemplazar los registros manuales por una plataforma digital que capture automáticamente datos de sensores IoT en los vehículos?
*   ¿Cuáles son las principales barreras que han enfrentado para digitalizar el control de almacén y despachos?

<h4 id="Segmento2">Segmento objetivo: Operarios y Supervisores de Almacén</h4>

<h4 id="PreguntaPersonal2">Preguntas Personales</h4>

*   ¿Cuál es su nombre?
*   ¿Cuál es su edad?
*   ¿Cuál es su rol dentro del almacén o centro de distribución?
*   ¿Cuál es su nivel de estudios?

<h4 id="PreguntasEspe2">Preguntas específicas:</h4>

*   ¿Qué procesos de preparación de pedidos, picking o carga aún dependen de registros en papel o sistemas no integrados?
*   ¿Cómo gestionan hoy la validación y lectura masiva de pallets de envases PET antes de su salida?
*   ¿Qué desafíos específicos han enfrentado relacionados con el conteo manual y la integridad de los datos de inventario?
*   ¿Cómo se enteran de un daño en la mercadería o discrepancia en la carga? ¿Existe algún mecanismo de alerta temprana?
*   ¿Cuánto tiempo y esfuerzo destinan a registrar manualmente la salida de unidades de transporte?
*   ¿Qué requisitos de facilidad de uso serían indispensables para que adopten una plataforma SaaS en su rutina diaria de almacén?
*   ¿Qué tipo de capacitación o acompañamiento necesitaría su equipo para migrar del conteo manual a un sistema de lectura masiva con IoT?

### 2.2.2. Registro de entrevistas.

### 2.2.3. Análisis de entrevistas.

## 2.3. Needfinding.

### 2.3.1. User Personas.

### 2.3.2. User Task Matrix.

### 2.3.3. User Journey Mapping.

### 2.3.4. Empathy Mapping.

## 2.4. Big Picture Event Storming.

## 2.5. Ubiquitous Language.
## Capítulo II: Requirements Development and Software Solution Design

## 2.1. Competidores
### 2.1.1. Análisis competitivo
### 2.1.2. Estrategias y tácticas frente a competidores
## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

Las entrevistas buscan conocer las necesidades, dificultades y experiencias de los usuarios involucrados en la gestión de inventarios, despachos y distribución de bebidas.

**Segmento #1: Responsables de almacén y logística**

**Objetivo:** Conocer cómo gestionan inventarios y despachos e identificar sus principales dificultades.

**Preguntas principales**

1. ¿Cómo gestionas actualmente el inventario y los despachos de la empresa?
2. ¿Cuáles son los principales problemas que enfrentas al realizar estas actividades?
3. ¿Has tenido diferencias o pérdidas de productos por problemas en el inventario? ¿Cómo las resolviste?
4. ¿Qué información necesitas consultar con mayor frecuencia para realizar tu trabajo?
5. ¿Utilizas algún sistema o herramienta digital para gestionar inventarios o despachos? ¿Cuál y cómo te va con ella?

**Preguntas complementarias**

1. ¿Qué tan importante es para ti contar con información actualizada del inventario y los despachos?
2. ¿Qué dispositivos utilizas con mayor frecuencia durante tu trabajo?
3. ¿Qué características debería tener una herramienta digital para facilitar tus actividades?

**Segmento #2: Responsables de distribución y operaciones**

**Objetivo:** Conocer cómo supervisan la distribución y qué información necesitan para tomar decisiones.

**Preguntas principales**

1. ¿Cómo realizas actualmente el seguimiento de los productos durante su distribución?
2. ¿Cuáles son los principales problemas que enfrentas al supervisar las operaciones?
3. ¿Cómo detectas y gestionas actualmente las incidencias durante el traslado de los productos?
4. ¿Qué información necesitas conocer para supervisar adecuadamente una operación de distribución?
5. ¿Utilizas algún sistema o herramienta digital para supervisar las operaciones? ¿Cuál y cómo te va con ella?

**Preguntas complementarias**

1. ¿Qué tan importante es para ti conocer en tiempo real el estado y recorrido de los productos?
2. ¿Qué dispositivos o canales digitales utilizas con mayor frecuencia en tu trabajo?
3. ¿Qué funcionalidades debería tener una herramienta digital para facilitar la supervisión de las operaciones?

### 2.2.2. Registro de entrevistas
### 2.2.3. Análisis de entrevistas
## 2.3. Needfinding
### 2.3.1. User Personas
### 2.3.2. User Task Matrix
### 2.3.3. User Journey Mapping
### 2.3.4. Empathy Mapping
## 2.4. Big Picture Event Storm
## 2.5. Ubiquitous Language