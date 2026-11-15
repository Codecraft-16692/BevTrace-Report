# Conclusiones

## Conclusiones y recomendaciones.

- El proceso de needfinding permitió al equipo comprender la problemática real de la gestión logística en plantas embotelladoras de bebidas: mediante entrevistas a jefes y gerentes de logística y a operarios y supervisores de almacén, el análisis competitivo (SAP EWM, WebFleet y Verial) y la técnica de Event Storming, se evidenció que el registro manual de lotes y mermas, la falta de visibilidad del despacho en ruta y la detección tardía de incidencias generan pérdidas de producto, discrepancias de inventario y demoras en la toma de decisiones.
- La aplicación de Lean UX (problem statements, assumptions, hypotheses y Lean UX Canvas) orientó las decisiones del equipo hacia las necesidades reales de ambos segmentos objetivo; cada User Story del Product Backlog proviene de hipótesis validadas con entrevistas y del Impact Map construido a partir de los business goals, evitando el desarrollo de funcionalidades sin sustento.
- La modelación del dominio mediante Big Picture EventStorming y Design-Level EventStorming permitió identificar los nueve bounded contexts de BevTrace (Shared, IAM, Subscription, Inventory, Dispatch, Traceability, Telemetry, Incident y Analytics), junto con sus commands, events, policies, aggregates y read models, estableciendo un lenguaje ubicuo que se refleja de manera consistente en la arquitectura, los diagramas de clases y el diseño de la base de datos.
- La arquitectura de software orientada al dominio, documentada con diagramas C4 (contexto, contenedores y componentes) elaborados en Structurizr DSL y con diagramas de clases y de base de datos en PlantUML, proporcionó al equipo una visión clara del sistema antes de implementar, lo que simplificó la asignación de responsabilidades por bounded context y la organización del frontend en módulos Angular con las capas domain, application, infrastructure y presentation.
- La implementación del Sprint 2 demostró la capacidad del equipo de traducir los requerimientos en un producto funcional: la Frontend Web Application de BevTrace integra los nueve bounded contexts con soporte bilingüe ES/EN, consume una Mock API desplegada en Railway y se encuentra desplegada en Vercel, permitiendo simular el flujo logístico completo desde el ingreso de lotes hasta el reporte de indicadores.
- La gestión de la configuración de software bajo GitFlow (ramas feature por bounded context, integración mediante Pull Requests hacia develop, Conventional Commits y Semantic Versioning) garantizó la trazabilidad de cada cambio y la atribución correcta del aporte de cada integrante, evidenciada en las métricas de colaboración del repositorio y en la matriz LACX del sprint.
- La distribución de responsabilidades mediante la matriz de liderazgo y colaboración (LACX), con un líder por grupo de bounded contexts y colaboradores en los demás aspectos, permitió desarrollar en paralelo sin bloqueos entre módulos, gracias a que la capa Shared (layout, internacionalización y clases base) se construyó al inicio del sprint y sirvió de fundamento para los demás contextos.

### Recomendaciones.

- Reemplazar la Mock API (json-server) por Web Services RESTful reales por bounded context, implementando la capa de infraestructura definida en el Capítulo IV (endpoints, DTOs y assemblers ya modelados) para que la migración requiera cambios mínimos en el frontend.
- Planificar la validación con usuarios reales de ambos segmentos interactuando con la aplicación desplegada, midiendo los indicadores definidos en el Sprint 2 Goal (registro de lotes, conciliación, despachos, trazabilidad e incidencias) para retroalimentar el backlog del siguiente ciclo.
- Integrar dispositivos IoT reales para el contexto de Telemetry, de modo que la conectividad de vehículos y las lecturas de ubicación provengan de hardware físico en lugar de datos simulados, y así validar las políticas de pérdida y restauración de conectividad modeladas en el dominio.
- Incorporar autenticación contra un proveedor de identidad en el contexto IAM (hoy con credenciales gestionadas por la Mock API) para reforzar la seguridad de la gestión de roles y sesiones antes de un despliegue hacia clientes piloto.
- Automatizar el pipeline de despliegue (CI/CD) del frontend y del backend, incluyendo pruebas automatizadas por bounded context, para reducir el esfuerzo manual de integración y asegurar la calidad en cada release.
- Mantener el registro de control de versiones, el Student Outcome y las métricas de colaboración actualizados en cada entrega, acumulando las conclusiones por avance de forma continua.

<!-- PENDIENTE: actualizar las conclusiones y recomendaciones con los resultados del Sprint 3 y de las entrevistas de validación, en relación con los Problem Statements, Assumptions, Hypothesis Statements y criterios de éxito del proceso Lean UX -->

## Video About-the-Team.

<p align="justify">
El Video About-the-Team presenta al equipo CodeCraft y el trabajo realizado en el desarrollo de BevTrace. El video inicia con una portada del equipo y escenas de operaciones de almacén que contextualizan el problema logístico que aborda el producto. A continuación, cada integrante brinda su testimonio ante cámara.
</p>

<p align="justify">
Mauricio Castillo resume el concepto de BevTrace, describe sus aportes tanto en la Frontend Web Application como en los Web Services, y finaliza explicando lo que aprendió al desarrollar BevTrace y cómo lo ha implementado y lo seguirá implementando. Enrique Ochoa describe su trabajo en los bounded contexts de Telemetry y Traceability, en Angular y en Spring Boot, el despliegue de los Web Services en Railway, la documentación del Sprint 3 en el informe y las lecciones que preparó para el curso de Java; luego explica cómo el proyecto le permitió comunicarse de forma oral y escrita con distintas audiencias, y las competencias que desarrolló en diseño orientado al dominio, servicios RESTful con seguridad JWT, despliegue en la nube y trabajo colaborativo con GitFlow.
</p>

| Sección | Inicio (hh:mm:ss) |
|:---|:---:|
| Introducción | 00:00:07 |
| Testimonio de Castillo Yataco, Mauricio Sebastian | 00:00:30 |
| Testimonio de Ochoa Prado, Enrique Augusto | 00:01:25 |
| Cierre | 00:02:39 |

<div align="center">
  <img src="../assets/about-the-team.png" alt="Video About-the-Team" width="90%">
  <p><em>Figura: Video About-the-Team del equipo CodeCraft</em></p>
</div>

| Plataforma | Enlace | Duración |
|:---|:---|:---:|
| Microsoft Stream | [Ver video en Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202411222_upc_edu_pe/IQCLLyXpAWxoQ7I5Sm77bKbzAamY75xbwK79PrkNYgiEvtw?e=Zfh0AS) | 2:51 |
| YouTube, incrustado en la Landing Page | [Ver video en YouTube](https://youtu.be/MKmzsqJC4GI) | 2:51 |
