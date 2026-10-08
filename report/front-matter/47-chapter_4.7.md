# 4.7 Software Object-Oriented Design

### 4.7.1 Class Diagram

El siguiente diagrama de clases general representa la vista global del modelo de dominio de BevTrace, integrando los 7 contextos delimitados (Bounded Contexts) del dominio en un solo esquema: IAM & Subscriptions, Inventory Management, Dispatch Management, Product Traceability, IoT Telemetry, Incident & Alert Management y Operations Analytics. Se modela la herencia de los actores principales (`Administrator`, `LogisticsManager` y `WarehouseOperator`) desde una clase base genérica `User`, cuyo rol determina las funcionalidades a las que puede acceder en la plataforma. Asimismo, expone cómo interactúan las entidades transversales del sistema; por ejemplo, cómo una orden de despacho se conecta con la trazabilidad en ruta, o cómo un vehículo físico se vincula con un dispositivo de telemetría. Este diseño de alto nivel promueve una separación clara de responsabilidades y facilita la implementación de una arquitectura basada en el enfoque de Domain-Driven Design (DDD), la misma que se replica en el frontend mediante las capas `domain`, `application`, `infrastructure` y `presentation` de cada contexto.

<img src="../assets/Chapter4/db1.png" alt="class" width="100%"/>

#### Bounded Context: Inventory Management

El diagrama de clases presentado pertenece al contexto delimitado de **Inventory Management**, el cual representa el núcleo de las funcionalidades relacionadas con el control del almacén de bebidas. Este contexto tiene como **Aggregate Root principal a `ProductInventory`**, el cual orquesta las relaciones con otras entidades y garantiza la consistencia del stock físico. El inventario se compone de múltiples lotes (`ProductBatch`), los cuales a su vez categorizan productos específicos (`BeverageProduct`) y se ubican en zonas físicas del almacén (`WarehouseZone`). Adicionalmente, la entidad `WasteRecord` encapsula los datos relacionados con las mermas operativas, permitiendo calcular su impacto financiero. El contexto también incorpora la conciliación entre el stock físico y el registrado, detectando discrepancias que deben ser revisadas por el Warehouse Operator.

<img src="../assets/Chapter4/db2.png" alt="class inventory" width="100%"/>

#### Bounded Context: Dispatch Management

Este diagrama representa el contexto de **Dispatch Management**, el cual centraliza la programación y orquestación de salidas. En este contexto, el **Aggregate Root es `DispatchOrder`**, el cual contiene la lógica para autorizar y planificar la distribución. El diseño separa claramente las responsabilidades: la orden agrupa la carga física (`CargoAssignment`), traza la ruta planificada (`RoutePlan` y `DeliveryDestination`), y se asigna a un vehículo específico (`TransportVehicle`), el cual es conducido por un chofer autorizado (`Driver`). Esta estructura modular permite validar capacidades y disponibilidades antes de iniciar cualquier despacho, preservando la integridad del modelo logístico: la carga asignada no puede exceder la capacidad del vehículo ni el stock disponible, y la salida solo se autoriza cuando las paletas han sido validadas mediante su escaneo.

<img src="../assets/Chapter4/db3.png" alt="class dispatch" width="100%"/>

#### Bounded Context: Product Traceability

El contexto **Product Traceability** encapsula todo lo relacionado con el seguimiento en tiempo real y el ciclo de vida de la distribución en ruta. Aquí, el **Aggregate Root es `TraceabilityLog`**, que actúa como la bitácora principal del viaje. Este registro está compuesto por múltiples puntos de control (`RouteCheckpoint`) y mantiene un historial inmutable de cambios de estado (`StatusTransition`), lo que permite identificar los puntos de control omitidos. Finalmente, concluye su ciclo de vida relacionándose con la entidad `DeliveryRecord`, la cual sella la entrega, ya sea exitosa o rechazada, validando la firma del cliente mediante `SignatureValidator`.

<img src="../assets/Chapter4/db4.png" alt="class Traceability" width="100%"/>

#### Bounded Context: IoT Telemetry

El diagrama de clases presentado pertenece al contexto delimitado de **IoT Telemetry**, el cual representa la obtención y procesamiento de los datos de rastreo. El **Aggregate Root es `TelemetryDevice`**, que simula el hardware instalado en los vehículos. Este dispositivo recibe flujos constantes de ubicación (`LocationStream`) y mantiene un registro de conectividad (`ConnectionStatus`), considerando crítica una unidad que supera los 30 minutos sin señal. Para evitar acoplamientos fuertes con el resto del sistema, los datos procesados disparan un `TelemetryEvent`, permitiendo notificar al sistema sobre actualizaciones de ubicación de forma asíncrona.

<img src="../assets/Chapter4/db5.png" alt="class iot" width="100%"/>

#### Bounded Context: Incident & Alert Management

Este diagrama representa el contexto de **Incident & Alert Management**, el cual gestiona el control de excepciones y anomalías operativas. El **Aggregate Root es `IncidentRecord`**, que encapsula los detalles de un problema detectado en ruta (ej. desvíos, excesos de tiempo, variaciones fuera de umbral). Este contexto opera a través de un motor de reglas (`AlertRule`) que, al cumplirse, genera el incidente y dispara notificaciones externas automáticas (`AutomatedAlert`). Además, permite a los usuarios registrar soluciones formales a través de la entidad `CorrectiveAction`. Un incidente cerrado puede reabrirse dentro de las 24 horas posteriores a su cierre.

<img src="../assets/Chapter4/db6.png" alt="class alert" width="100%"/>

#### Bounded Context: Operations Analytics

El contexto **Operations Analytics** encapsula la evaluación del rendimiento gerencial y el cálculo de métricas de la cadena de suministro. El **Aggregate Root es `LogisticsReport`**, que consolida la información de un periodo específico. El reporte está compuesto por indicadores clave de rendimiento (`LogisticsKPI`), entre ellos OTIF, Fill Rate, ERI y rotación de inventario, y por evaluaciones financieras de pérdida (`ShrinkageMetric`). Para automatizar la inteligencia de negocios, la entidad `ReportScheduler` permite configurar la generación y distribución periódica de estos documentos gerenciales, que también pueden exportarse en formato CSV.

<img src="../assets/Chapter4/db7.png" alt="class operations" width="100%"/>

#### Bounded Context: IAM & Subscriptions

El contexto **IAM & Subscriptions** gestiona la identidad, el acceso y la contratación de la plataforma. Su **Aggregate Root es `User`**, que representa a toda persona registrada y se especializa en `Administrator`, `LogisticsManager` y `WarehouseOperator`; el rol asignado determina qué contextos puede consumir cada usuario. El registro valida que el correo contenga "@" y que la contraseña tenga más de 8 caracteres, al menos una mayúscula y al menos un número. Junto a la identidad, el contexto administra los planes de suscripción (`SubscriptionPlan`), la suscripción vigente de cada cliente (`Subscription`), los pagos con tarjeta validados mediante el algoritmo de Luhn (`Payment`), la facturación asociada y las solicitudes de contacto enviadas por los visitantes desde la landing page (`ContactRequest`).

<img src="../assets/Chapter4/db8.png" alt="class iam subscriptions" width="100%"/>
