<div align="center">

![LogoUPC](report/assets/logos/UPC-logo.png)
# Universidad Peruana de Ciencias Aplicadas
## Facultad de Ingeniería
## Carrera de Ingeniería de Software

**Curso:** 1ASI0729 Desarrollo de Aplicaciones Open Source  
**NRC:** 16692

---

# Informe del Trabajo Final

**Docente:** Velásquez Núñez, Ángel Augusto 
**Equipo:** Codecraft  
**Proyecto:** BevTrace

### Integrantes

| Código     | Apellidos y Nombres                |
|:-----------|:-----------------------------------|
| u202113229 | Castillo Yataco, Mauricio Sebastian|
| U202411222 | Ochoa Prado, Enrique Augusto       |

**Período:** 2026-20  
**Fecha:** Noviembre 2026

</div>

<div style="page-break-after: always;"></div>

## Registro de Versiones del Informe

| Versión | Fecha      | Autor            | Descripción de modificación |
| :--- |:-----------|:-----------------| :--- |
| AV1 | 09-09-2026 | Castillo Yataco, Mauricio Sebastian | Estructura inicial correspondiente a la primera entrega. |
| TB1 | 08-10-2026 | Ochoa Prado, Enrique Augusto | Segunda entrega: capítulos I-V completos, aplicación web por bounded contexts y despliegue. |
| AV2 | 15-11-2026 | Ochoa Prado, Enrique Augusto | Tercera entrega: secciones 5.1.4, 5.2.3 Sprint 3 con los Web Services desplegados e integrados a la aplicación web, 5.3 Validation Interviews, 5.4 Video About-the-Product, Video About-the-Team, conclusiones y recomendaciones actualizadas, Student Outcome del AV2 y video de exposición. |

<div style="page-break-after: always;"></div>

## Project Report Collaboration Insights

**URL del repositorio del informe:** https://github.com/Codecraft-16692/BevTrace-Report

Evidencias de colaboración y participación del equipo para la entrega AV1:

![alt text](report/assets/Collab_insight_av1.png)

<div style="page-break-after: always;"></div>

## Contenido Student Outcome

**ABET – EAC - Student Outcome 3:** Capacidad de comunicarse efectivamente con un
rango de audiencias.

<table>
  <tr>
    <th>Criterio Específico</th>
    <th>Nombre del Integrante</th>
    <th>Acciones Realizadas</th>
    <th>Conclusión</th>
  </tr>
  <tr>
    <td rowspan="3">Comunica oralmente con efectividad a diferentes rangos de audiencia</td>
    <td>Castillo Yataco, Mauricio Sebastian</td>
    <td><b>AV1:</b> Desarrollo del Capitulo 1 y 2 y Diagramas de clase y base de datos<br><br><b>TB1:</b> Lideré el diseño UX/UI de BevTrace y la implementación del bounded context de Inventory Management (registro de lotes, mermas y conciliación de inventario), además de la elaboración de wireframes y mockups.<br><br><b>AV2:</b> Elaboré el video About-the-Product de BevTrace, presentando con un tono promocional el problema del segmento, el modelo de negocio por suscripción y las principales funciones de la plataforma para clientes potenciales. En mi testimonio del video About-the-Team expliqué el concepto de BevTrace, mis aportes en la Frontend Web Application y en los Web Services, y lo aprendido durante su desarrollo. Grabé las lecciones 3, 4 y 5 del curso de Fundamentos de Java, explicando estructuras de control, métodos e introducción a la programación orientada a objetos a estudiantes de secundaria.</td>
    <td rowspan="3"><b>AV1:</b> El equipo evidenció una comunicación oral efectiva al sustentar los capítulos que cada integrante desarrolló, logrando explicar con claridad tanto los fundamentos del negocio (Startup Profile, análisis de requisitos) como las decisiones técnicas derivadas de ellos (diagramas de clases, base de datos, diseño de producto). La distribución de capítulos entre los integrantes permitió que cada uno dominara su segmento y lo comunicara de forma coherente ante la audiencia, evidenciando comprensión real del contenido más allá de una simple lectura del informe.<br><br><b>TB1:</b> Durante la exposición del TB1, cada integrante explicó de forma oral el bounded context a su cargo (inventario, despachos, trazabilidad, telemetría, incidencias, analítica, IAM y suscripción), sus decisiones de diseño y la arquitectura por contextos del frontend Angular, comunicando con claridad el flujo de atención completo de BevTrace ante la audiencia.<br><br><b>AV2:</b> En el AV2 el equipo comunicó de forma oral sus resultados a audiencias distintas: a clientes potenciales mediante el video About-the-Product, a la comunidad académica mediante los testimonios del video About-the-Team, y a estudiantes de secundaria sin experiencia en programación mediante las lecciones en video del curso de Fundamentos de Java, adaptando el lenguaje y los ejemplos a cada audiencia.</td>
  </tr>
  <tr>
    <td>Danitza Ivonne Heredia Hoyos</td>
    <td><b>AV1:</b> Desarrollo del Capitulo 1 y revisión de preguntas de las entrevistas y capitulo 4<br><br><b>TB1:</b> Lideré el Event Storming a nivel de diseño y la implementación del bounded context de Incident & Alert Management, y participé en la recolección de requerimientos mediante entrevistas.</td>
  </tr>
  <tr>
    <td>Enrique Augusto Ochoa Prado </td>
    <td><b>AV1:</b> Desarrollo del capitulo 4<br><br><b>TB1:</b> Lideré la implementación del frontend Angular por bounded contexts, la elaboración de los wireflows y user flows por objetivo de usuario y la coordinación del equipo.<br><br><b>AV2:</b> Coordiné con Mauricio el despliegue de los Web Services en Railway y la conexión de la aplicación web con la API real, incluyendo las variables de entorno y los orígenes permitidos para el frontend. Comuniqué al equipo el ajuste de permisos por rol en la salida de despachos y en el registro de mermas detectado durante las pruebas en producción. Grabé las lecciones 1, 2 y 6 del curso de Fundamentos de Java, explicando conceptos de programación, errores comunes y buenas prácticas con ejemplos simples para estudiantes de secundaria sin experiencia previa.</td>
  </tr>
  <tr>
    <td rowspan="3">Comunica por escrito con efectividad a diferentes rangos de audiencia</td>
    <td>Castillo Yataco, Mauricio Sebastian</td>
    <td><b>AV1:</b> Desarrollo del Capitulo 1 y 2 y Diagramas de clase y base de datos<br><br><b>TB1:</b> Lideré el diseño UX/UI de BevTrace y la implementación del bounded context de Inventory Management (registro de lotes, mermas y conciliación de inventario), además de la elaboración de wireframes y mockups.<br><br><b>AV2:</b> Documenté los Web Services en el repositorio con el README, la arquitectura, la especificación de la API, el context map y los diagramas de clases y de base de datos de los contextos a mi cargo. Redacté en el informe la sección 5.3 Validation Interviews, con el diseño de las entrevistas, su registro y la evaluación según heurísticas de BevTrace Web, y actualicé los diagramas de contenedores y componentes del Capítulo IV. Redacté los textos bilingües de la nueva Landing Page junto con sus páginas de términos y condiciones y de política de privacidad, y el README del curso de Java con el resumen y la secuencia de lecciones. Revisé e integré mediante Pull Requests las ramas feature de cada bounded context de los Web Services y los releases de la Web Application, y registré con Conventional Commits la integración del frontend Angular con los Web Services.</td>
    <td rowspan="3"><b>AV1:</b> El equipo demostró capacidad de comunicación escrita efectiva mediante la redacción estructurada y consistente de los cinco capítulos del informe. La revisión cruzada de capítulos y preguntas de entrevista contribuyó a mantener coherencia terminológica y de formato en todo el documento, mientras que el uso de recursos complementarios (diagramas de clases, base de datos y prototipos en Figma) reforzó la claridad y comprensión del contenido escrito para distintos tipos de lector.<br><br><b>TB1:</b> En el TB1 la comunicación escrita se mantuvo mediante la documentación por bounded contexts (wireflows, user flows y reportes de evidencia), la redacción de issues y pull requests bajo Conventional Commits, y la actualización del informe, manteniendo consistencia terminológica y de formato en todo el documento.<br><br><b>AV2:</b> En el AV2 la comunicación escrita se dirigió a desarrolladores, mediante la documentación de los Web Services con OpenAPI, los diagramas y los README de los repositorios; a la audiencia académica, mediante las secciones del Sprint 3, la validación con usuarios y los videos del informe; y a clientes potenciales, mediante los textos bilingües de la Landing Page y sus páginas legales, manteniendo Conventional Commits y Pull Requests como registro escrito del trabajo del equipo.</td>
  </tr>
  <tr>
    <td>Danitza Ivonne Heredia Hoyos</td>
    <td><b>AV1:</b> Desarrollo del Capitulo 1 y revisión de preguntas de las entrevistas y capitulo 4<br><br><b>TB1:</b> Lideré el Event Storming a nivel de diseño y la implementación del bounded context de Incident & Alert Management, y participé en la recolección de requerimientos mediante entrevistas.</td>
  </tr>
  <tr>
    <td>Enrique Augusto Ochoa Prado </td>
    <td><b>AV1:</b> Desarrollo del capitulo 4 y figma<br><br><b>TB1:</b> Lideré la implementación del frontend Angular por bounded contexts, la elaboración de los wireflows y user flows por objetivo de usuario y la coordinación del equipo.<br><br><b>AV2:</b> Implementé y documenté los bounded contexts de Telemetry y Traceability en los Web Services, con sus diagramas de clases y de base de datos en el repositorio. Documenté en el informe la sección 5.2.3 del Sprint 3 (planificación, backlog y evidencias de desarrollo, ejecución, servicios con Swagger y despliegue en Railway y Vercel) y la configuración de despliegue de la sección 5.1.4. Describí en los Pull Requests del frontend las correcciones de permisos por rol y la integración con la API desplegada. Corregí el informe en base a la revisión de entregas anteriores: datos del curso en la carátula y los anexos, índice completo, bibliografía y títulos alineados a la plantilla. Redacté en el README del curso de Java la secuencia de lecciones con sus videos y prácticas para estudiantes de secundaria.</td>
  </tr>
