# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management.

En esta sección se describen y explican las desiciones, convenciones y herramientas utilizadas por el equipo CodeCraft para la gestion, implementación y despliegue de BevTrace.

El proyecto desarrollo tres artefactos cómo solución a la problematica: Landing Page, FrontEnd Web Application y BackEnd Web Services.

### 5.1.1. Software Development Environment Configuration.

En este segmento se presentara las herramientas utilizadas en el ciclo de vida del proyecto BevTrace.


|        Actividad     |     Herramienta/Guía   |    Proposito  |  Tipo de acceso/Ruta (links)   | 
|:---: |:---: |:--: |:--: | 
|Gestión de proyecto|Trello|Organizar y dar seguimiento a las tareas asignadas|[Trello][1]|
|Gestión de requerimientos|Gherkin Conventions|Definir criterios de aceptación y validación para los user stories|[Guía Gherkin][2]|
|Producto UI/UX|Figma|Diseño de interfaces (wireframes y mockups) y prototipos|[Figma][3]|
|Landing Page|Visual Studio Code|Edición y desarrollo del código de las pantallas|[VS Code][4]|
|Control de versiones|Git|Gestión de versiones del código de la Landing Page, FrontEnd y BackEnd|[Git][5]|
|Despliegue|GitHub Pages|Publicación de la aplicación web|[GitHub Pages][6]|
|Event Storming|Miro|Colaboración y modelado de los procesos involucrados en los Bounded Context|[Miro][7]|
|Diagramas|PlantUML|Generación de diagramas UML requeridos de la aplicación|[PlantUML][8]|


### 5.1.2. Source Code Management.

Para el manejo del codigo fuente de BevTrace se organiza en repositorios independientes que facilita la gestión, revisión y el despliegue de los diferentes artefactos del proyecto.

|     Artefacto     |     URL del Repositorio  |   
|:---: |:---: | 
| Proyect Report  | [Report][9] |
| Landing Page  | [LandingPage][10] |
| FrontEnd Web Application  | [FrontEnd][11] |
| BackEnd Web Services  | [Backend][12] |

##### GitFlow WorFlow

Se implemento GitFlow cómo flujo de trabajo para organizar el desarrollo de los artefactos por funcionalidades, mantener una separación del codigo para evitar errores y mantener ramas de desarrollos especificas para cada módulo o bounded context

###### Ramas principales

1.  main: Rama pincipal para versiones estables y desplegables de los artefactos
2.  develop: Rama de integración utilizada para consolidar las funcionalidades o cambios previos a la versión final del producto

###### Ramas de soporte

1.  feature/*:  Rama creada a partir del develop para poder implementar nuevas funcionalidades.

Convención: `feature/<nombre-corto-descriptivo>`
Ejemplo: `feature/chapter 1`

2.  docs/*: Ramas creadas para los cambios relacionados a la documentación del proyecto.

Convención: ` docs/<parte-del-documento>`  
Ejemplo: `docs/sources`

3.  fix/*: Ramas utilizadas para corregir errores criticos en los artefactos.

Convención:  `hotfix/<descripción-corta>`
Ejemplo: `hotfix/fix-item-validation`

##### Semantic Versioning

Se aplica Semantic Versioning 2.0.0, con el formato:

- **MAJOR**: Cambios incompatibles con las versiones anteriores del artefacto.
- **MINOR**: Nuevas funcionalidades compatibles con versiones anteriores del artefacto.
- **PATCH**: Correcciones menores y ajustes sin afectar funcionalidades del artefacto.

Ejemplo de versión: `v1.3.2`

##### Conventional Commits

La organización utilizó la especificación de los Conventional Commits para mantener un orden y claridad en los mensajes de cada commit realizado por los integrantes. En este caso la estructura general de cada commit seria la siguiente: ` tipo(enfoque opcional): <descripción> `

Ejemplos de los commits utilizados

-  **chore: setup initial folder structure and empty markdown files**
-  **docs(chap-5): added headers for Chapter 5**
-  **fix(chap 1-2): fix merging problems for Chapter 1 and 2**


### 5.1.3. Source Code Style Guide & Conventions.

En esta sección se describen las convenciones de estilo y nomenclatura adoptadas para los lenguajes y frameworks utilizados en BevTrace.

|Tecnología o Lenguaje|Guía de estilo|
|:----|:----|
| HTML/CSS|[Google HTML/CSS Style Guide][html-css]|
| JavaScript|[Google JavaScript Style Guide][js]|
| TypeScript|[Google TypeScript Style Guide][ts]|
|Angular |[Angular Style Guide][angular]|
| Java|[Google Java Style Guide][java]|
|Spring Boot |[Spring Boot Documentation][spring]|
|Gherkin |[Gherkin Reference][gherkin]|

##### Nomenclatura general

| Elemento | Convención | Ejemplo |
|:----|:----|:----|
| Clases Java/TypeScript | PascalCase | `BatchCommandServiceImpl`, `EquipmentApiEndpoint` |
| Interfaces TypeScript | PascalCase | `SignInRequest`, `CreateBatchCommand` |
| Métodos y funciones | camelCase | `getBatchById()`, `registerEquipment()` |
| Variables | camelCase | `laboratoryId`, `selectedPlanCode` |
| Constantes | SCREAMING_SNAKE_CASE | `API_BASE_URL`, `DEFAULT_LANGUAGE` |
| Archivos Angular | kebab-case | `billing-summary.ts`, `equipment-detail.html` |
| Clases CSS | kebab-case | `.summary-card`, `.toolbar-actions` |
| Endpoints REST | kebab-case plural | `/api/v1/batches`, `/api/v1/equipments` |


**Convenciones frontend**

- Uso de Angular standalone components.
- Separación por bounded context dentro de `src/app`.
- Organización por capas: domain, application, infrastructure y presentation.
- Uso de stores y signals para gestión de estado.
- Uso de servicios/endpoints para encapsular comunicación HTTP.
- Uso de archivos de traducción para soporte bilingüe ES/EN.
- Uso de nombres en inglés para componentes, entidades, comandos y recursos.

**Convenciones backend**

- Organización por bounded context dentro del paquete `platform`.
- Uso de capas domain, application, infrastructure e interfaces.
- Uso de REST controllers dentro de `interfaces.rest`.
- Uso de resources y assemblers para transformar datos de entrada y salida.
- Uso de command services y query services para separar casos de uso.
- Uso de repositorios como puertos de persistencia del dominio.
- Uso de entidades JPA, assemblers y adapters dentro de infrastructure.
- Uso de endpoints REST con recursos en plural y parámetros de recurso por path.
- Uso de Javadoc para clases públicas relevantes.



### 5.1.4. Software Deployment Configuration.

## 5.2. Landing Page, Services & Applications Implementation.

### 5.2.X. Sprint n

### 5.2.X.1. Sprint Planning n.

### 5.2.X.2. Aspect Leaders and Collaborators.

### 5.2.X.3. Sprint Backlog n.

### 5.2.X.4. Development Evidence for Sprint Review.

### 5.2.X.5. Execution Evidence for Sprint Review.

### 5.2.X.6. Services Documentation Evidence for Sprint Review.

### 5.2.X.7. Software Deployment Evidence for Sprint Review.

### 5.2.X.8. Team Collaboration Insights during Sprint.

## 5.3. Validation Interviews.

### 5.3.1. Diseño de Entrevistas.

### 5.3.2. Registro de Entrevistas.

### 5.3.3. Evaluaciones según heurísticas.

## 5.4. Video About-the-Product.




[1]: https://trello.com "Trello"
[2]: https://cucumber.io/docs/gherkin/ "Guía Gherkin"
[3]: https://figma.com "Figma"
[4]: https://code.visualstudio.com "VS Code"
[5]: https://git-scm.com "Git"
[6]: https://pages.github.com "GitHub Pages"
[7]: https://miro.com "Miro"
[8]: https://plantuml.com "PlantUML"
[9]: https://github.com/Codecraft-16692/Codecraft-Report.git "Report"
[10]: https://github.com/Codecraft-16692/Codecraft-LandingPage.git "LandingPage"
[11]: githttps://github.com/Codecraft-16692/Codecraft-FrontEnd.git  "FrontEnd"
[12]: https://github.com/Codecraft-16692/Codecraft-BackEnd.git "BackEnd"


[html-css]: https://google.github.io/styleguide/htmlcssguide.html "Google HTML/CSS Style Guide"
[js]: https://google.github.io/styleguide/jsguide.html "Google JavaScript Style Guide"
[ts]: https://google.github.io/styleguide/tsguide.html "Google TypeScript Style Guide"
[angular]: https://angular.dev/style-guide "Angular Style Guide"
[java]: https://google.github.io/styleguide/javaguide.html "Google Java Style Guide"
[spring]: https://docs.spring.io/spring-boot/documentation.html "Spring Boot Documentation"
[gherkin]: https://cucumber.io/docs/gherkin/reference/ "Gherkin Reference"