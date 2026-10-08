## 4.2. Information Architecture

La arquitectura de información de BevTrace se diseña para que el Jefe de Distribución supervise la operación logística completa (inventario, despachos, trazabilidad y incidencias) desde una sola vista consolidada, y para que el Operario de Almacén registre el movimiento físico de la mercadería con el menor número de interacciones posible. A continuación se describen los sistemas de organización, etiquetado, búsqueda y navegación de la solución.

### 4.2.1. Organization Systems.

En BevTrace, la información se organiza para dar visibilidad inmediata del estado de la operación y reducir la carga cognitiva del personal en jornada:

> - **Esquema Jerárquico:** La navegación fluye de lo general a lo particular, iniciando en el Dashboard operativo global (resumen de inventario, despachos, trazabilidad, telemetría e incidencias) y profundizando hasta el detalle de una entidad individual: una orden de despacho con sus lotes y vehículo asignados, el expediente de trazabilidad de un lote con sus checkpoints, o el panel de un dispositivo IoT con sus lecturas y desconexiones.
> - **Estructura Híbrida:** Se combina la organización temática según el flujo del proceso logístico (Inventory, Dispatch, Traceability, Telemetry, Incidents y Reports) con un registro cronológico para el historial de entregas, el centro de notificaciones y los pagos de facturación, que se listan del más reciente al más antiguo.
> - **Organización por Estado:** Las vistas operativas organizan la información según el ciclo de vida de cada entidad, de modo que la pantalla responda directamente la pregunta "¿en qué condición está esto ahora?": los despachos transitan por Scheduled, Authorized, In Transit y Delivered; los lotes por Expected, Available y Depleted; los dispositivos por conectado, crítico y desconectado; y las incidencias por abierta, reconocida y resuelta.

### 4.2.2. Labeling Systems.

El sistema de etiquetado utiliza la terminología estándar de la logística de bebidas, mantenida de forma bilingüe (español e inglés) mediante el sistema de internacionalización:

> - **Etiquetas de Navegación:** Términos directos alineados a los bounded contexts, como "Inicio", "Dashboard", "Inventory", "Dispatch", "Traceability", "Telemetry", "Incidents", "Reports" y "Plans", presentes en la barra de navegación con sus traducciones equivalentes en español.
> - **Etiquetas de Datos:** Indicadores bajo nomenclatura estándar de la industria como "OTIF (%)", "Fill Rate (%)", "ERI — Inventory Record Accuracy (%)", "Inventory Rotation" y "Shrinkage Rate (%)", junto a datos operativos como "Batch", "Stock disponible", "Checkpoint" y "Priority".
> - **Etiquetas de Estado:** Sistema semántico de severidad aplicado a toda la plataforma: crítico (Rojo) para dispositivos sin señal por más de 30 minutos o alertas de anomalía, en proceso (Ámbar) para despachos en tránsito e incidencias reconocidas, y estable (Verde) para entregas completadas, inventario conciliado y incidencias resueltas.

### 4.2.3. SEO Tags and Meta Tags

Para garantizar el posicionamiento del Landing Page y la relevancia en búsquedas de embotelladoras y distribuidoras de bebidas:

> - **Indexado y Crawling:** Uso de la etiqueta meta name="robots" content="index, follow" para permitir que los buscadores rastreen el sitio.
> - **Meta Title:** "BevTrace | Trazabilidad e Inventario Inteligente para Embotelladoras" (optimizado para captar el interés de jefes y gerentes de logística).
> - **Meta Description:** "Plataforma SaaS que digitaliza el control de inventario por lotes, los despachos con validación de carga y la trazabilidad en ruta con telemetría IoT. Reduzca mermas, cierre conciliaciones sin errores y presente indicadores OTIF en tiempo real".
> - **Palabras clave:** trazabilidad de lotes Perú, software logístico para embotelladoras, control de inventario PET, despacho con validación de pallets, telemetría IoT de flota, indicadores OTIF, BevTrace, CodeCraft UPC.

### 4.2.4. Searching Systems.

Diseñados para que el usuario ubique una orden, un lote o un dispositivo en pocas interacciones desde las vistas de listado:

> - **Filtros por Estado y Prioridad:** Las colas de despachos, el catálogo de inventario y el historial de entregas permiten segmentar por estado (programado, en tránsito, entregado), prioridad de la orden y disponibilidad del lote, conectando directamente con la vista de detalle de cada registro.
> - **Búsqueda por Código:** El ingreso y la recepción de lotes se resuelven mediante la lectura directa del código del lote, que localiza el registro exacto en un paso y valida su existencia contra el catálogo.
> - **Visualización de Resultados:** Los listados muestran contadores de resumen por estado (p. ej., usuarios por rol, despachos por estado) y manejan el estado de "Cero resultados" con un mensaje de estado vacío que orienta al usuario a registrar o ajustar el filtro aplicado.

### 4.2.5. Navigation Systems.

Garantizan que el usuario siempre mantenga el control sobre su ubicación en el sistema:

> - **Navegación Global (Toolbar):** Barra persistente en la aplicación con acceso a los módulos operativos, el selector de idioma, el centro de notificaciones y el menú de sesión del usuario (nombre, rol y cierre de sesión).
> - **Navegación Local (Layout):** Menú lateral en el panel operativo para transitar entre las vistas de cada bounded context: catálogo e ingresos de inventario, cola de despachos, mapa de rutas, dispositivos, incidencias y reportes.
> - **Navegación de Detalle:** Las vistas de detalle (orden de despacho, expediente de trazabilidad, dispositivo) ofrecen el retorno directo al listado origen, con acciones contextuales según el estado del registro (asignar vehículo, cambiar prioridad, cancelar, resolver).
> - **Navegación Lineal (Flujos de Proceso):** Los formularios críticos — programación de despacho, checkout de suscripción e ingreso de lote — siguen un flujo guiado de pocos pasos con validación en cada uno, sin menús profundos.
> - **Navegación de Salida:** En el Landing Page, accesos a la propuesta de valor por segmento, la suscripción comercial y el inicio de sesión de la plataforma.
