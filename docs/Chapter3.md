# Capítulo III: Requirements Specification

## 3.1. User Stories.

<br>

**Epics**

<table border="1" style="border-collapse:collapse; width:100%; table-layout:fixed;">
<tr>
  <th style="width:15%;">Epic /<br> Story/<br>ID</th>
  <th style="width:15%;">Título</th>
  <th style="width:35%;">Descripción</th>
  <th style="width:25%;">Criterios de Aceptación</th>
  <th style="width:10%;">Relacionado con<br>(Epic ID)</th>
</tr>
<tr>
  <td>EP01</td>
  <td>Gestión de Lotes e Inventario</td>
  <td>
    <b>Como</b> Operario de Almacén o Jefe de Distribución,
    <p><b>deseo</b> registrar, actualizar y conciliar el inventario de lotes de producto de forma automática,</p>
    <p><b>para</b> mantener la exactitud del inventario (ERI) y reducir los errores del conteo manual.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
<tr>
  <td>EP02</td>
  <td>Gestión de Despachos</td>
  <td>
    <b>Como</b> Jefe de Distribución u Operario de Almacén,
    <p><b>deseo</b> programar, autorizar y validar un despacho antes de su salida,</p>
    <p><b>para</b> asegurar que la carga coincida con la orden antes de que el transporte abandone el almacén.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
<tr>
  <td>EP03</td>
  <td>Trazabilidad de Ruta</td>
  <td>
    <b>Como</b> Jefe de Distribución,
    <p><b>deseo</b> dar seguimiento en tiempo real a la ubicación y estado de un lote en tránsito,</p>
    <p><b>para</b> confirmar su entrega sin depender de llamadas telefónicas con el transportista.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
<tr>
  <td>EP04</td>
  <td>Monitoreo IoT y Telemetría</td>
  <td>
    <b>Como</b> Developer,
    <p><b>deseo</b> vincular dispositivos IoT a los lotes de producto y capturar su telemetría (temperatura, ubicación, estado de conexión),</p>
    <p><b>para</b> proveer datos objetivos que alimenten la trazabilidad y la detección de anomalías.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
<tr>
  <td>EP05</td>
  <td>Gestión de Incidencias</td>
  <td>
    <b>Como</b> Operario de Almacén o Jefe de Distribución,
    <p><b>deseo</b> que el sistema detecte y notifique automáticamente anomalías en la distribución,</p>
    <p><b>para</b> reaccionar antes de que el problema se descubra recién en la etapa de entrega.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
<tr>
  <td>EP06</td>
  <td>Reportería e Indicadores Operativos</td>
  <td>
    <b>Como</b> Jefe de Distribución,
    <p><b>deseo</b> consolidar automáticamente los indicadores logísticos (OTIF, Fill Rate, ERI, rotación de inventario),</p>
    <p><b>para</b> presentarlos a la alta dirección sin invertir días en su elaboración manual.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
<tr>
  <td>EP07</td>
  <td>Sitio Web Estático (Landing Page)</td>
  <td>
    <b>Como</b> visitante,
    <p><b>deseo</b> conocer la propuesta de valor de BevTrace y sus beneficios para mi segmento,</p>
    <p><b>para</b> evaluar si es la solución adecuada para mi operación antes de contactar al equipo comercial.</p>
  </td>
  <td>-</td>
  <td>-</td>
</tr>
</table>

<br>

**User Stories**

<table border="1" style="border-collapse:collapse; width:100%; table-layout:fixed;">
<tr>
  <th style="width:15%;">Epic /<br> Story/<br>ID</th>
  <th style="width:15%;">Título</th>
  <th style="width:35%;">Descripción</th>
  <th style="width:25%;">Criterios de Aceptación</th>
  <th style="width:10%;">Relacionado con<br>(Epic ID)</th>
</tr>
<tr>
  <td>US01</td>
  <td>Registro automático de ingreso de lote</td>
  <td>
    <b>Como</b> Operario de Almacén,<br>
    <b>deseo</b> registrar el ingreso de un lote escaneando su código,<br>
    <b>para</b> actualizar el inventario sin digitación manual.
  </td>
  <td>
    <b>Escenario 1: Registro exitoso de lote</b><br>
    <b>Dado</b> que un lote de producto llega al centro de acopio con un código válido,<br>
    <b>Cuando</b> el operario escanea el código del lote,<br>
    <b>Entonces</b> el sistema registra el ingreso y actualiza el inventario disponible.<br><br>
    <b>Escenario 2: Código de lote inválido</b><br>
    <b>Dado</b> que el código escaneado no corresponde a un lote registrado,<br>
    <b>Cuando</b> el operario intenta registrar el ingreso,<br>
    <b>Entonces</b> el sistema rechaza el registro y solicita verificación manual.
  </td>
  <td>EP01</td>
</tr>
<tr>
  <td>US02</td>
  <td>Alerta de discrepancia de inventario</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> recibir una alerta cuando se detecte una discrepancia de inventario,<br>
    <b>para</b> investigarla antes del cierre del turno.
  </td>
  <td>
    <b>Escenario 1: Discrepancia detectada</b><br>
    <b>Dado</b> que el inventario físico conciliado no coincide con el inventario registrado en el sistema,<br>
    <b>Cuando</b> se ejecuta la conciliación diaria,<br>
    <b>Entonces</b> el sistema genera una alerta de discrepancia dirigida al Jefe de Distribución.<br><br>
    <b>Escenario 2: Sin discrepancias</b><br>
    <b>Dado</b> que el inventario físico coincide con el inventario registrado,<br>
    <b>Cuando</b> se ejecuta la conciliación diaria,<br>
    <b>Entonces</b> el sistema marca el inventario como conciliado sin generar alertas.
  </td>
  <td>EP01</td>
</tr>
<tr>
  <td>US03</td>
  <td>Registro de mermas de producto</td>
  <td>
    <b>Como</b> Operario de Almacén,<br>
    <b>deseo</b> registrar el desperdicio o merma de un producto dañado,<br>
    <b>para</b> mantener el inventario actualizado con la cantidad real disponible.
  </td>
  <td>
    <b>Escenario 1: Registro de merma exitoso</b><br>
    <b>Dado</b> que un producto presenta daño visible durante la manipulación,<br>
    <b>Cuando</b> el operario registra la merma indicando el motivo,<br>
    <b>Entonces</b> el sistema descuenta la cantidad del inventario disponible y guarda el motivo registrado.<br><br>
    <b>Escenario 2: Registro sin motivo especificado</b><br>
    <b>Dado</b> que el operario intenta registrar una merma sin indicar el motivo,<br>
    <b>Cuando</b> se envía el registro,<br>
    <b>Entonces</b> el sistema rechaza el registro y solicita completar el motivo de la merma.
  </td>
  <td>EP01</td>
</tr>
<tr>
  <td>US04</td>
  <td>Conciliación de inventario físico</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> confirmar la conciliación del inventario físico frente al inventario registrado en el sistema,<br>
    <b>para</b> cerrar el ciclo de auditoría diaria sin discrepancias pendientes.
  </td>
  <td>
    <b>Escenario 1: Conciliación conforme</b><br>
    <b>Dado</b> que el conteo físico registrado coincide con el inventario del sistema,<br>
    <b>Cuando</b> el Jefe de Distribución confirma la conciliación,<br>
    <b>Entonces</b> el sistema marca el periodo como conciliado y actualiza el indicador ERI.<br><br>
    <b>Escenario 2: Conciliación con diferencias pendientes</b><br>
    <b>Dado</b> que existen discrepancias sin resolver al momento de conciliar,<br>
    <b>Cuando</b> el Jefe de Distribución intenta confirmar la conciliación,<br>
    <b>Entonces</b> el sistema impide el cierre y lista las discrepancias pendientes de resolución.
  </td>
  <td>EP01</td>
</tr>
<tr>
  <td>US05</td>
  <td>Programación de un despacho</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> programar un despacho indicando los lotes y el destino,<br>
    <b>para</b> planificar la salida de mercadería con anticipación.
  </td>
  <td>
    <b>Escenario 1: Programación exitosa</b><br>
    <b>Dado</b> que los lotes seleccionados están disponibles en inventario,<br>
    <b>Cuando</b> el Jefe de Distribución programa el despacho con un destino y fecha,<br>
    <b>Entonces</b> el sistema crea el despacho en estado programado.<br><br>
    <b>Escenario 2: Lote no disponible</b><br>
    <b>Dado</b> que uno de los lotes seleccionados no cuenta con stock suficiente,<br>
    <b>Cuando</b> se intenta programar el despacho,<br>
    <b>Entonces</b> el sistema rechaza la programación e indica el lote con stock insuficiente.
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td>US06</td>
  <td>Asignación de vehículo a despacho</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> asignar un vehículo de transporte a un despacho programado,<br>
    <b>para</b> autorizar la salida de la mercadería.
  </td>
  <td>
    <b>Escenario 1: Asignación exitosa</b><br>
    <b>Dado</b> que existe un despacho programado y un vehículo disponible,<br>
    <b>Cuando</b> el Jefe de Distribución asigna el vehículo al despacho,<br>
    <b>Entonces</b> el sistema autoriza el despacho y notifica al equipo de almacén.<br><br>
    <b>Escenario 2: Vehículo no disponible</b><br>
    <b>Dado</b> que el vehículo seleccionado ya está asignado a otro despacho,<br>
    <b>Cuando</b> el Jefe de Distribución intenta asignarlo,<br>
    <b>Entonces</b> el sistema rechaza la asignación e indica que el vehículo no está disponible.
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td>US07</td>
  <td>Validación masiva de pallets antes del despacho</td>
  <td>
    <b>Como</b> Operario de Almacén,<br>
    <b>deseo</b> validar mediante lectura masiva que los pallets cargados coincidan con la orden de despacho,<br>
    <b>para</b> evitar errores antes de la salida del transporte.
  </td>
  <td>
    <b>Escenario 1: Carga coincide con la orden</b><br>
    <b>Dado</b> que los pallets cargados fueron leídos mediante el lector masivo,<br>
    <b>Cuando</b> el sistema compara la lectura contra la orden de despacho,<br>
    <b>Entonces</b> el sistema autoriza la salida del transporte.<br><br>
    <b>Escenario 2: Discrepancia entre carga y orden</b><br>
    <b>Dado</b> que la lectura masiva detecta un pallet no incluido en la orden,<br>
    <b>Cuando</b> el sistema realiza la comparación,<br>
    <b>Entonces</b> el sistema bloquea la salida y notifica la discrepancia al operario.
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td>US08</td>
  <td>Registro de salida de un despacho</td>
  <td>
    <b>Como</b> Operario de Almacén,<br>
    <b>deseo</b> registrar la salida del transporte una vez autorizado el despacho,<br>
    <b>para</b> dejar constancia del inicio del trayecto.
  </td>
  <td>
    <b>Escenario 1: Registro de salida exitoso</b><br>
    <b>Dado</b> que el despacho fue autorizado y la carga validada,<br>
    <b>Cuando</b> el operario registra la salida del transporte,<br>
    <b>Entonces</b> el sistema marca el despacho como en tránsito y registra la hora de salida.<br><br>
    <b>Escenario 2: Intento de salida sin autorización</b><br>
    <b>Dado</b> que el despacho no cuenta con autorización previa,<br>
    <b>Cuando</b> el operario intenta registrar la salida,<br>
    <b>Entonces</b> el sistema impide el registro e indica que el despacho no está autorizado.
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td>US09</td>
  <td>Seguimiento en tiempo real de un lote en tránsito</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> visualizar la ubicación en tiempo real de un lote en tránsito,<br>
    <b>para</b> dar seguimiento a la entrega sin depender de llamadas telefónicas.
  </td>
  <td>
    <b>Escenario 1: Lote con señal activa</b><br>
    <b>Dado</b> que un lote en tránsito cuenta con un dispositivo IoT conectado,<br>
    <b>Cuando</b> el Jefe de Distribución consulta el estado del lote,<br>
    <b>Entonces</b> el sistema muestra la ubicación y el estado actualizados.<br><br>
    <b>Escenario 2: Pérdida de conectividad del dispositivo</b><br>
    <b>Dado</b> que el dispositivo IoT del lote pierde conectividad,<br>
    <b>Cuando</b> el sistema detecta la pérdida de señal,<br>
    <b>Entonces</b> el sistema marca la última ubicación conocida y notifica la pérdida de conectividad.
  </td>
  <td>EP03</td>
</tr>
<tr>
  <td>US10</td>
  <td>Registro de checkpoint en ruta</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> que el sistema registre automáticamente cuando un lote alcanza un checkpoint de ruta,<br>
    <b>para</b> conocer su avance sin depender de reportes manuales.
  </td>
  <td>
    <b>Escenario 1: Checkpoint alcanzado</b><br>
    <b>Dado</b> que un lote en tránsito ingresa al radio de un checkpoint definido,<br>
    <b>Cuando</b> el sistema detecta la posición del dispositivo IoT,<br>
    <b>Entonces</b> el sistema registra el checkpoint alcanzado con fecha y hora.<br><br>
    <b>Escenario 2: Checkpoint omitido</b><br>
    <b>Dado</b> que un lote pasa de un checkpoint a otro sin registrar el intermedio,<br>
    <b>Cuando</b> el sistema detecta el salto en la secuencia,<br>
    <b>Entonces</b> el sistema marca el checkpoint como omitido y genera una observación en la trazabilidad.
  </td>
  <td>EP03</td>
</tr>
<tr>
  <td>US11</td>
  <td>Finalización de la trazabilidad de un lote</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> que la trazabilidad del lote se finalice automáticamente al confirmarse la entrega,<br>
    <b>para</b> contar con el expediente completo del lote sin gestión manual adicional.
  </td>
  <td>
    <b>Escenario 1: Entrega confirmada en destino</b><br>
    <b>Dado</b> que el lote alcanza el checkpoint final de destino,<br>
    <b>Cuando</b> el sistema registra la llegada,<br>
    <b>Entonces</b> el sistema finaliza la trazabilidad del lote y consolida el expediente.<br><br>
    <b>Escenario 2: Entrega rechazada</b><br>
    <b>Dado</b> que el cliente rechaza la entrega en destino,<br>
    <b>Cuando</b> el operario registra el rechazo,<br>
    <b>Entonces</b> el sistema mantiene el lote en estado abierto y registra el motivo del rechazo.
  </td>
  <td>EP03</td>
</tr>
<tr>
  <td>US12</td>
  <td>Visualización de estado de conectividad de dispositivos</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> visualizar qué dispositivos IoT están conectados o han perdido señal,<br>
    <b>para</b> actuar antes de perder visibilidad de un lote en tránsito.
  </td>
  <td>
    <b>Escenario 1: Dispositivos con estado visible</b><br>
    <b>Dado</b> que existen dispositivos IoT vinculados a lotes activos,<br>
    <b>Cuando</b> el Jefe de Distribución consulta el panel de conectividad,<br>
    <b>Entonces</b> el sistema muestra el estado (conectado / desconectado) de cada dispositivo.<br><br>
    <b>Escenario 2: Dispositivo sin reportar señal por un periodo prolongado</b><br>
    <b>Dado</b> que un dispositivo no reporta señal por más de 30 minutos,<br>
    <b>Cuando</b> el sistema evalúa el estado de conectividad,<br>
    <b>Entonces</b> el sistema resalta el dispositivo como crítico dentro del panel.
  </td>
  <td>EP04</td>
</tr>
<tr>
  <td>US13</td>
  <td>Notificación de reconexión de dispositivo</td>
  <td>
    <b>Como</b> Operario de Almacén,<br>
    <b>deseo</b> que el sistema notifique cuando un dispositivo recupera la conectividad,<br>
    <b>para</b> confirmar que el monitoreo del lote continúa con normalidad.
  </td>
  <td>
    <b>Escenario 1: Reconexión exitosa</b><br>
    <b>Dado</b> que un dispositivo IoT que había perdido señal vuelve a transmitir datos,<br>
    <b>Cuando</b> el sistema detecta la reconexión,<br>
    <b>Entonces</b> el sistema notifica al operario y reanuda el monitoreo del lote.<br><br>
    <b>Escenario 2: Reconexión con datos incompletos</b><br>
    <b>Dado</b> que el dispositivo se reconecta pero reporta datos incompletos,<br>
    <b>Cuando</b> el sistema valida la telemetría recibida,<br>
    <b>Entonces</b> el sistema marca el periodo de desconexión como información no disponible.
  </td>
  <td>EP04</td>
</tr>
<tr>
  <td>US14</td>
  <td>Detección de anomalía en la distribución</td>
  <td>
    <b>Como</b> Operario de Almacén,<br>
    <b>deseo</b> que el sistema genere una alerta automática cuando detecte una anomalía en la carga o en ruta,<br>
    <b>para</b> reportarla de inmediato sin depender de una revisión visual.
  </td>
  <td>
    <b>Escenario 1: Anomalía detectada</b><br>
    <b>Dado</b> que la telemetría de un lote excede los parámetros de rango permitido,<br>
    <b>Cuando</b> el sistema evalúa los datos del sensor,<br>
    <b>Entonces</b> el sistema genera una alerta automática y notifica al responsable.<br><br>
    <b>Escenario 2: Parámetros dentro de rango</b><br>
    <b>Dado</b> que la telemetría del lote se mantiene dentro de los parámetros permitidos,<br>
    <b>Cuando</b> el sistema evalúa los datos del sensor,<br>
    <b>Entonces</b> el sistema no genera ninguna alerta.
  </td>
  <td>EP05</td>
</tr>
<tr>
  <td>US15</td>
  <td>Notificación de resolución de incidencia</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> recibir una notificación cuando se resuelva una incidencia reportada en ruta,<br>
    <b>para</b> mantener actualizado el estado del despacho.
  </td>
  <td>
    <b>Escenario 1: Incidencia resuelta</b><br>
    <b>Dado</b> que una incidencia en ruta fue marcada como resuelta por el responsable asignado,<br>
    <b>Cuando</b> el sistema actualiza el estado de la incidencia,<br>
    <b>Entonces</b> el sistema notifica al Jefe de Distribución la resolución del caso.<br><br>
    <b>Escenario 2: Incidencia reabierta</b><br>
    <b>Dado</b> que una incidencia marcada como resuelta reaparece dentro de las siguientes 24 horas,<br>
    <b>Cuando</b> el sistema detecta la recurrencia,<br>
    <b>Entonces</b> el sistema reabre la incidencia y notifica al equipo responsable.
  </td>
  <td>EP05</td>
</tr>
<tr>
  <td>US16</td>
  <td>Registro de acción correctiva</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> registrar la acción correctiva tomada ante una incidencia,<br>
    <b>para</b> dejar evidencia de cómo se resolvió el problema.
  </td>
  <td>
    <b>Escenario 1: Registro exitoso de acción correctiva</b><br>
    <b>Dado</b> que una incidencia se encuentra en estado reconocido,<br>
    <b>Cuando</b> el Jefe de Distribución registra la acción correctiva aplicada,<br>
    <b>Entonces</b> el sistema asocia la acción a la incidencia y actualiza su estado.<br><br>
    <b>Escenario 2: Incidencia sin reconocer</b><br>
    <b>Dado</b> que la incidencia aún no ha sido reconocida por ningún responsable,<br>
    <b>Cuando</b> se intenta registrar una acción correctiva,<br>
    <b>Entonces</b> el sistema exige primero el reconocimiento de la incidencia.
  </td>
  <td>EP05</td>
</tr>
<tr>
  <td>US17</td>
  <td>Reporte consolidado de indicadores logísticos</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> generar un reporte consolidado de indicadores logísticos (OTIF, Fill Rate, ERI, rotación de inventario),<br>
    <b>para</b> presentarlo a la alta dirección sin invertir días en su consolidación manual.
  </td>
  <td>
    <b>Escenario 1: Generación exitosa del reporte</b><br>
    <b>Dado</b> que existe información operativa registrada para el periodo seleccionado,<br>
    <b>Cuando</b> el Jefe de Distribución solicita el reporte consolidado,<br>
    <b>Entonces</b> el sistema genera el reporte con los cuatro indicadores en menos de un minuto.<br><br>
    <b>Escenario 2: Periodo sin información suficiente</b><br>
    <b>Dado</b> que el periodo seleccionado no cuenta con información operativa registrada,<br>
    <b>Cuando</b> se solicita el reporte,<br>
    <b>Entonces</b> el sistema notifica que no hay datos suficientes para consolidar el periodo.
  </td>
  <td>EP06</td>
</tr>
<tr>
  <td>US18</td>
  <td>Cálculo automático de la tasa de mermas</td>
  <td>
    <b>Como</b> Jefe de Distribución,<br>
    <b>deseo</b> que el sistema calcule automáticamente la tasa de mermas del periodo,<br>
    <b>para</b> identificar tendencias sin tener que hacerlo manualmente.
  </td>
  <td>
    <b>Escenario 1: Cálculo con datos disponibles</b><br>
    <b>Dado</b> que existen registros de mermas para el periodo evaluado,<br>
    <b>Cuando</b> el sistema calcula el indicador de shrinkage rate,<br>
    <b>Entonces</b> el sistema muestra el porcentaje de merma del periodo y su variación respecto al periodo anterior.<br><br>
    <b>Escenario 2: Sin registros de mermas</b><br>
    <b>Dado</b> que no se registraron mermas durante el periodo evaluado,<br>
    <b>Cuando</b> el sistema calcula el indicador,<br>
    <b>Entonces</b> el sistema muestra una tasa de merma de 0% para dicho periodo.
  </td>
  <td>EP06</td>
</tr>
<tr>
  <td>US19</td>
  <td>Conocer la propuesta de valor de BevTrace</td>
  <td>
    <b>Como</b> visitante del segmento Jefes y Gerentes de Logística,<br>
    <b>deseo</b> conocer los beneficios de BevTrace para mi operación,<br>
    <b>para</b> evaluar si es la solución adecuada para mi empresa.
  </td>
  <td>
    <b>Escenario 1: Visualización de la propuesta de valor</b><br>
    <b>Dado</b> que un visitante ingresa a la Landing Page de BevTrace,<br>
    <b>Cuando</b> navega a la sección dirigida a su segmento,<br>
    <b>Entonces</b> el sitio muestra los beneficios y casos de uso relevantes para su rol.<br><br>
    <b>Escenario 2: Solicitud de contacto</b><br>
    <b>Dado</b> que el visitante desea más información,<br>
    <b>Cuando</b> completa el formulario de contacto,<br>
    <b>Entonces</b> el sitio confirma el envío y registra la solicitud para el equipo comercial.
  </td>
  <td>EP07</td>
</tr>
<tr>
  <td>US20</td>
  <td>Suscripción a información comercial</td>
  <td>
    <b>Como</b> visitante,<br>
    <b>deseo</b> suscribirme para recibir más información sobre BevTrace,<br>
    <b>para</b> mantenerme al tanto de futuras actualizaciones del producto.
  </td>
  <td>
    <b>Escenario 1: Suscripción exitosa</b><br>
    <b>Dado</b> que el visitante ingresa un correo electrónico válido,<br>
    <b>Cuando</b> confirma la suscripción,<br>
    <b>Entonces</b> el sitio registra el correo y muestra un mensaje de confirmación.<br><br>
    <b>Escenario 2: Correo ya suscrito</b><br>
    <b>Dado</b> que el correo ingresado ya se encuentra suscrito,<br>
    <b>Cuando</b> el visitante intenta suscribirse nuevamente,<br>
    <b>Entonces</b> el sitio indica que el correo ya está registrado, sin duplicar la suscripción.
  </td>
  <td>EP07</td>
</tr>
<tr>
  <td>TS01</td>
  <td>Endpoint de consulta de nivel de stock por lote</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> exponer un endpoint REST que retorne el nivel de stock actual de un lote,<br>
    <b>para</b> integrarlo con sistemas externos como SAP.
  </td>
  <td>
    <b>Escenario 1: Consulta exitosa</b><br>
    <b>Dado</b> un identificador de lote válido,<br>
    <b>Cuando</b> el sistema externo realiza una solicitud GET al endpoint de stock,<br>
    <b>Entonces</b> el API responde con código 200 y el nivel de stock actual en formato JSON.<br><br>
    <b>Escenario 2: Lote inexistente</b><br>
    <b>Dado</b> un identificador de lote que no existe en el sistema,<br>
    <b>Cuando</b> se realiza la solicitud GET,<br>
    <b>Entonces</b> el API responde con código 404 y un mensaje de error correspondiente.
  </td>
  <td>EP01</td>
</tr>
<tr>
  <td>TS02</td>
  <td>Endpoint de consulta de estado de despacho</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> consultar mediante un endpoint REST el estado actual de un despacho,<br>
    <b>para</b> integrarlo con sistemas externos como SAP.
  </td>
  <td>
    <b>Escenario 1: Consulta exitosa</b><br>
    <b>Dado</b> un identificador de despacho válido,<br>
    <b>Cuando</b> el sistema externo realiza una solicitud GET al endpoint de despachos,<br>
    <b>Entonces</b> el API responde con código 200 y el estado actual del despacho en formato JSON.<br><br>
    <b>Escenario 2: Despacho inexistente</b><br>
    <b>Dado</b> un identificador de despacho que no existe en el sistema,<br>
    <b>Cuando</b> el sistema externo realiza la solicitud GET,<br>
    <b>Entonces</b> el API responde con código 404 y un mensaje de error correspondiente.
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td>TS03</td>
  <td>Webhook de notificación de despacho completado</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> que el sistema envíe un webhook cuando un despacho se marque como completado,<br>
    <b>para</b> que sistemas externos actualicen su información sin consultar constantemente el API.
  </td>
  <td>
    <b>Escenario 1: Envío exitoso del webhook</b><br>
    <b>Dado</b> que un despacho cambia su estado a completado,<br>
    <b>Cuando</b> el sistema dispara el evento correspondiente,<br>
    <b>Entonces</b> el API envía una solicitud POST al endpoint suscrito con el detalle del despacho y recibe una respuesta 200.<br><br>
    <b>Escenario 2: Endpoint suscrito no disponible</b><br>
    <b>Dado</b> que el endpoint suscrito no responde a la notificación,<br>
    <b>Cuando</b> el sistema intenta enviar el webhook,<br>
    <b>Entonces</b> el sistema reintenta el envío hasta 3 veces y registra el fallo si no se recibe respuesta.
  </td>
  <td>EP02</td>
</tr>
<tr>
  <td>TS04</td>
  <td>Endpoint de historial de trazabilidad de un lote</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> exponer un endpoint REST que retorne el historial completo de checkpoints de un lote,<br>
    <b>para</b> soportar auditorías de trazabilidad end-to-end.
  </td>
  <td>
    <b>Escenario 1: Historial disponible</b><br>
    <b>Dado</b> un lote con checkpoints registrados,<br>
    <b>Cuando</b> el sistema externo realiza una solicitud GET al endpoint de historial,<br>
    <b>Entonces</b> el API responde con código 200 y la lista ordenada de checkpoints en formato JSON.<br><br>
    <b>Escenario 2: Lote sin checkpoints registrados</b><br>
    <b>Dado</b> un lote que aún no registra checkpoints,<br>
    <b>Cuando</b> se realiza la solicitud GET,<br>
    <b>Entonces</b> el API responde con código 200 y una lista vacía.
  </td>
  <td>EP03</td>
</tr>
<tr>
  <td>TS05</td>
  <td>Endpoint de aprovisionamiento de dispositivo IoT</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> exponer un endpoint REST para aprovisionar un nuevo dispositivo IoT en el sistema,<br>
    <b>para</b> prepararlo antes de vincularlo a un lote.
  </td>
  <td>
    <b>Escenario 1: Aprovisionamiento exitoso</b><br>
    <b>Dado</b> un identificador de dispositivo único no registrado previamente,<br>
    <b>Cuando</b> el sistema externo realiza una solicitud POST al endpoint de aprovisionamiento,<br>
    <b>Entonces</b> el API responde con código 201 y los datos del dispositivo aprovisionado.<br><br>
    <b>Escenario 2: Dispositivo ya aprovisionado</b><br>
    <b>Dado</b> un identificador de dispositivo ya registrado en el sistema,<br>
    <b>Cuando</b> se realiza la solicitud POST con el mismo identificador,<br>
    <b>Entonces</b> el API responde con código 409 indicando conflicto.
  </td>
  <td>EP04</td>
</tr>
<tr>
  <td>TS06</td>
  <td>Servicio de ingesta de telemetría de sensores</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> exponer un endpoint de ingesta de alta frecuencia para los datos de sensores,<br>
    <b>para</b> capturar la telemetría de temperatura y ubicación sin pérdida de datos.
  </td>
  <td>
    <b>Escenario 1: Ingesta exitosa</b><br>
    <b>Dado</b> un dispositivo IoT vinculado y autenticado,<br>
    <b>Cuando</b> el dispositivo envía una solicitud POST con datos de telemetría válidos,<br>
    <b>Entonces</b> el API responde con código 202 y encola el dato para su procesamiento.<br><br>
    <b>Escenario 2: Payload de telemetría inválido</b><br>
    <b>Dado</b> que el payload enviado no cumple con el esquema esperado,<br>
    <b>Cuando</b> el dispositivo envía la solicitud POST,<br>
    <b>Entonces</b> el API responde con código 400 y detalla el campo inválido.
  </td>
  <td>EP04</td>
</tr>
<tr>
  <td>TS07</td>
  <td>Endpoint de consulta de incidencias abiertas</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> exponer un endpoint REST que permita consultar las incidencias abiertas,<br>
    <b>para</b> integrarlas con el sistema de monitoreo central de la planta.
  </td>
  <td>
    <b>Escenario 1: Consulta exitosa</b><br>
    <b>Dado</b> que existen incidencias en estado abierto o reconocido,<br>
    <b>Cuando</b> el sistema externo realiza una solicitud GET al endpoint de incidencias,<br>
    <b>Entonces</b> el API responde con código 200 y la lista de incidencias abiertas en formato JSON.<br><br>
    <b>Escenario 2: Sin incidencias abiertas</b><br>
    <b>Dado</b> que no existen incidencias abiertas al momento de la consulta,<br>
    <b>Cuando</b> se realiza la solicitud GET,<br>
    <b>Entonces</b> el API responde con código 200 y una lista vacía.
  </td>
  <td>EP05</td>
</tr>
<tr>
  <td>TS08</td>
  <td>Endpoint de exportación de indicadores operativos</td>
  <td>
    <b>Como</b> Developer,<br>
    <b>deseo</b> exponer un endpoint REST que permita exportar los indicadores operativos consolidados en formato JSON/CSV,<br>
    <b>para</b> integrarlos con herramientas externas de Business Intelligence.
  </td>
  <td>
    <b>Escenario 1: Exportación exitosa</b><br>
    <b>Dado</b> un periodo con indicadores consolidados disponibles,<br>
    <b>Cuando</b> el sistema externo realiza una solicitud GET indicando el formato deseado,<br>
    <b>Entonces</b> el API responde con código 200 y el archivo de indicadores en el formato solicitado.<br><br>
    <b>Escenario 2: Formato no soportado</b><br>
    <b>Dado</b> que el sistema externo solicita un formato no soportado por el API,<br>
    <b>Cuando</b> se realiza la solicitud GET,<br>
    <b>Entonces</b> el API responde con código 400 e indica los formatos disponibles.
  </td>
  <td>EP06</td>
</tr>
</table>



## 3.2. Impact Mapping.

![alt text](<../assets/Chapter3/Impact maping.png>)

## 3.3. Product Backlog


