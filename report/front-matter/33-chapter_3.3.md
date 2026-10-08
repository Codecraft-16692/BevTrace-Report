## 3.3. Product Backlog

<p>El Product Backlog se encuentra organizado por valor de negocio siguiendo la secuencia natural de la operación: primero la difusión comercial (Landing Page), a continuación la seguridad del acceso — prerequisito de todo el panel operativo — junto con el panel de control general, luego el flujo logístico en su orden de proceso (ingreso y conciliación de inventario, despacho, trazabilidad en ruta, telemetría, incidencias y reportería de indicadores), posteriormente la gestión comercial de suscripciones y, finalmente, la administración de usuarios y las preferencias de la plataforma. Dentro de cada caso de negocio, las technical stories de la API anteceden a las user stories de negocio que dependen de ellas, y ninguna funcionalidad aparece antes que la que la hace posible (por ejemplo, el endpoint de stock por lote antecede a la consulta del catálogo, y el endpoint de autenticación antecede al acceso al panel operativo). Los story points siguen la escala de Fibonacci (1 / 2 / 3 / 5 / 8).</p>

<table border="1" style="border-collapse:collapse; width:100%; table-layout:fixed;">
<tr>
  <th style="width:8%; word-wrap:break-word; white-space:normal;"># Orden</th>
  <th style="width:12%; word-wrap:break-word; white-space:normal;">User Story Id</th>
  <th style="width:28%; word-wrap:break-word; white-space:normal;">Título</th>
  <th style="width:40%; word-wrap:break-word; white-space:normal;">Descripción</th>
  <th style="width:12%; word-wrap:break-word; white-space:normal;">Story Points <br> (1 / 2 / 3 / 5 / 8)</th>
</tr>
<tr>
  <td>1</td>
  <td>US19</td>
  <td>Conocer la propuesta de valor de BevTrace</td>
  <td>Landing Page con la propuesta de valor y beneficios de BevTrace por segmento.</td>
  <td>3</td>
</tr>
<tr>
  <td>2</td>
  <td>US20</td>
  <td>Suscripción a información comercial</td>
  <td>Formulario de suscripción para recibir información comercial de BevTrace.</td>
  <td>1</td>
</tr>
<tr>
  <td>3</td>
  <td>TS09</td>
  <td>Endpoint de autenticación de usuarios</td>
  <td>Endpoint REST que valida credenciales y retorna el token de sesión.</td>
  <td>2</td>
</tr>
<tr>
  <td>4</td>
  <td>TS10</td>
  <td>Endpoint de registro de usuario</td>
  <td>Endpoint REST que registra nuevos usuarios aplicando la política de contraseñas.</td>
  <td>2</td>
</tr>
<tr>
  <td>5</td>
  <td>US21</td>
  <td>Inicio de sesión con credenciales</td>
  <td>Iniciar sesión con correo y contraseña para acceder al panel del rol asignado.</td>
  <td>3</td>
</tr>
<tr>
  <td>6</td>
  <td>US22</td>
  <td>Registro de nueva cuenta de usuario</td>
  <td>Registrarme con una contraseña segura para obtener una cuenta de acceso.</td>
  <td>3</td>
</tr>
<tr>
  <td>7</td>
  <td>US23</td>
  <td>Persistencia y cierre de sesión</td>
  <td>Mantener la sesión activa entre recargas y cerrarla al finalizar el turno.</td>
  <td>2</td>
</tr>
<tr>
  <td>8</td>
  <td>US24</td>
  <td>Protección de vistas por sesión y rol</td>
  <td>Proteger las vistas operativas requiriendo sesión y rol de administrador.</td>
  <td>3</td>
</tr>
<tr>
  <td>9</td>
  <td>US49</td>
  <td>Panel de control operativo</td>
  <td>Consolidar el estado de los módulos operativos en un panel general.</td>
  <td>3</td>
</tr>
<tr>
  <td>10</td>
  <td>US01</td>
  <td>Registro automático de ingreso de lote</td>
  <td>Registrar el ingreso de un lote escaneando su código para actualizar el inventario.</td>
  <td>5</td>
</tr>
<tr>
  <td>11</td>
  <td>TS01</td>
  <td>Endpoint de consulta de nivel de stock por lote</td>
  <td>Endpoint REST que retorna el nivel de stock actual de un lote.</td>
  <td>2</td>
</tr>
<tr>
  <td>12</td>
  <td>US31</td>
  <td>Consulta del catálogo de inventario</td>
  <td>Consultar el catálogo de productos y zonas con el stock disponible.</td>
  <td>3</td>
</tr>
<tr>
  <td>13</td>
  <td>US32</td>
  <td>Recepción física de un lote</td>
  <td>Confirmar la recepción física de un lote escaneando su código.</td>
  <td>2</td>
</tr>
<tr>
  <td>14</td>
  <td>US03</td>
  <td>Registro de mermas de producto</td>
  <td>Registrar el desperdicio o merma de un producto dañado.</td>
  <td>2</td>
</tr>
<tr>
  <td>15</td>
  <td>US02</td>
  <td>Alerta de discrepancia de inventario</td>
  <td>Alertar al Jefe de Distribución cuando se detecte una discrepancia de inventario.</td>
  <td>3</td>
</tr>
<tr>
  <td>16</td>
  <td>US33</td>
  <td>Resolución de una discrepancia de inventario</td>
  <td>Resolver una discrepancia de inventario registrando el ajuste aplicado.</td>
  <td>3</td>
</tr>
<tr>
  <td>17</td>
  <td>US04</td>
  <td>Conciliación de inventario físico</td>
  <td>Confirmar la conciliación del inventario físico frente al inventario registrado.</td>
  <td>3</td>
</tr>
<tr>
  <td>18</td>
  <td>US05</td>
  <td>Programación de un despacho</td>
  <td>Programar un despacho indicando los lotes y el destino.</td>
  <td>3</td>
</tr>
<tr>
  <td>19</td>
  <td>US34</td>
  <td>Consulta de la cola de despachos</td>
  <td>Consultar la cola de despachos con el detalle de cada orden.</td>
  <td>3</td>
</tr>
<tr>
  <td>20</td>
  <td>US35</td>
  <td>Cambio de prioridad de un despacho</td>
  <td>Cambiar la prioridad de un despacho programado para atender salidas urgentes.</td>
  <td>2</td>
</tr>
<tr>
  <td>21</td>
  <td>TS02</td>
  <td>Endpoint de consulta de estado de despacho</td>
  <td>Endpoint REST para consultar el estado actual de un despacho.</td>
  <td>2</td>
</tr>
<tr>
  <td>22</td>
  <td>US06</td>
  <td>Asignación de vehículo a despacho</td>
  <td>Asignar un vehículo de transporte a un despacho programado y autorizar su salida.</td>
  <td>3</td>
</tr>
<tr>
  <td>23</td>
  <td>US07</td>
  <td>Validación masiva de pallets antes del despacho</td>
  <td>Validar mediante lectura masiva que los pallets cargados coincidan con la orden de despacho.</td>
  <td>5</td>
</tr>
<tr>
  <td>24</td>
  <td>US36</td>
  <td>Cancelación de una orden de despacho</td>
  <td>Cancelar una orden de despacho liberando el stock reservado.</td>
  <td>2</td>
</tr>
<tr>
  <td>25</td>
  <td>US08</td>
  <td>Registro de salida de un despacho</td>
  <td>Registrar la salida del transporte una vez autorizado el despacho.</td>
  <td>2</td>
</tr>
<tr>
  <td>26</td>
  <td>TS03</td>
  <td>Webhook de notificación de despacho completado</td>
  <td>Webhook que notifica a sistemas externos cuando un despacho se completa.</td>
  <td>3</td>
</tr>
<tr>
  <td>27</td>
  <td>US37</td>
  <td>Confirmación de entrega del despacho</td>
  <td>Completar el despacho al confirmarse la entrega del lote en destino.</td>
  <td>3</td>
</tr>
<tr>
  <td>28</td>
  <td>US09</td>
  <td>Seguimiento en tiempo real de un lote en tránsito</td>
  <td>Visualizar la ubicación en tiempo real de un lote en tránsito.</td>
  <td>8</td>
</tr>
<tr>
  <td>29</td>
  <td>TS04</td>
  <td>Endpoint de historial de trazabilidad de un lote</td>
  <td>Endpoint REST que retorna el historial completo de checkpoints de un lote.</td>
  <td>3</td>
</tr>
<tr>
  <td>30</td>
  <td>US10</td>
  <td>Registro de checkpoint en ruta</td>
  <td>Registrar automáticamente cuando un lote alcanza un checkpoint de ruta.</td>
  <td>5</td>
</tr>
<tr>
  <td>31</td>
  <td>US11</td>
  <td>Finalización de la trazabilidad de un lote</td>
  <td>Finalizar automáticamente la trazabilidad del lote al confirmarse la entrega en destino.</td>
  <td>3</td>
</tr>
<tr>
  <td>32</td>
  <td>US38</td>
  <td>Visualización del mapa de ruta</td>
  <td>Visualizar la ruta de un lote en el mapa con sus checkpoints.</td>
  <td>3</td>
</tr>
<tr>
  <td>33</td>
  <td>US39</td>
  <td>Consulta del historial de entregas</td>
  <td>Consultar el historial de entregas y el expediente de cada lote.</td>
  <td>3</td>
</tr>
<tr>
  <td>34</td>
  <td>TS05</td>
  <td>Endpoint de aprovisionamiento de dispositivo IoT</td>
  <td>Endpoint REST para aprovisionar un nuevo dispositivo IoT en el sistema.</td>
  <td>3</td>
</tr>
<tr>
  <td>35</td>
  <td>TS06</td>
  <td>Servicio de ingesta de telemetría de sensores</td>
  <td>Endpoint de ingesta de alta frecuencia para datos de sensores IoT.</td>
  <td>8</td>
</tr>
<tr>
  <td>36</td>
  <td>US40</td>
  <td>Aprovisionamiento de un dispositivo IoT</td>
  <td>Aprovisionar un dispositivo IoT con código y modelo únicos.</td>
  <td>3</td>
</tr>
<tr>
  <td>37</td>
  <td>US41</td>
  <td>Consulta de lecturas y desconexiones</td>
  <td>Consultar las lecturas de ubicación y desconexiones de un dispositivo.</td>
  <td>3</td>
</tr>
<tr>
  <td>38</td>
  <td>US12</td>
  <td>Visualización de estado de conectividad de dispositivos</td>
  <td>Visualizar qué dispositivos IoT están conectados o han perdido señal.</td>
  <td>3</td>
</tr>
<tr>
  <td>39</td>
  <td>US13</td>
  <td>Notificación de reconexión de dispositivo</td>
  <td>Notificar cuando un dispositivo recupera la conectividad.</td>
  <td>2</td>
</tr>
<tr>
  <td>40</td>
  <td>US14</td>
  <td>Detección de anomalía en la distribución</td>
  <td>Generar una alerta automática cuando se detecte una anomalía en la carga o en ruta.</td>
  <td>5</td>
</tr>
<tr>
  <td>41</td>
  <td>TS07</td>
  <td>Endpoint de consulta de incidencias abiertas</td>
  <td>Endpoint REST que permite consultar las incidencias abiertas.</td>
  <td>2</td>
</tr>
<tr>
  <td>42</td>
  <td>US42</td>
  <td>Reconocimiento de una incidencia</td>
  <td>Reconocer una incidencia generada por una alerta para asignar responsable.</td>
  <td>2</td>
</tr>
<tr>
  <td>43</td>
  <td>US43</td>
  <td>Resolución de una incidencia</td>
  <td>Resolver una incidencia con acción correctiva registrada.</td>
  <td>2</td>
</tr>
<tr>
  <td>44</td>
  <td>US16</td>
  <td>Registro de acción correctiva</td>
  <td>Registrar la acción correctiva tomada ante una incidencia.</td>
  <td>2</td>
</tr>
<tr>
  <td>45</td>
  <td>US15</td>
  <td>Notificación de resolución de incidencia</td>
  <td>Notificar al Jefe de Distribución cuando se resuelva una incidencia reportada en ruta.</td>
  <td>2</td>
</tr>
<tr>
  <td>46</td>
  <td>US44</td>
  <td>Configuración de reglas de alerta</td>
  <td>Crear reglas de alerta con umbrales para la detección de anomalías.</td>
  <td>3</td>
</tr>
<tr>
  <td>47</td>
  <td>US45</td>
  <td>Activación de reglas de alerta</td>
  <td>Activar o desactivar reglas de alerta según la operación.</td>
  <td>2</td>
</tr>
<tr>
  <td>48</td>
  <td>US46</td>
  <td>Centro de notificaciones</td>
  <td>Gestionar las notificaciones del centro con marcado de lectura.</td>
  <td>2</td>
</tr>
<tr>
  <td>49</td>
  <td>US47</td>
  <td>Comparación de indicadores por periodo</td>
  <td>Comparar los indicadores del periodo seleccionado contra el periodo anterior.</td>
  <td>5</td>
</tr>
<tr>
  <td>50</td>
  <td>US18</td>
  <td>Cálculo automático de la tasa de mermas</td>
  <td>Calcular automáticamente la tasa de mermas del periodo.</td>
  <td>3</td>
</tr>
<tr>
  <td>51</td>
  <td>US17</td>
  <td>Reporte consolidado de indicadores logísticos</td>
  <td>Generar un reporte consolidado de OTIF, Fill Rate, ERI y rotación de inventario.</td>
  <td>5</td>
</tr>
<tr>
  <td>52</td>
  <td>TS08</td>
  <td>Endpoint de exportación de indicadores operativos</td>
  <td>Endpoint REST que exporta los indicadores operativos consolidados en JSON/CSV.</td>
  <td>2</td>
</tr>
<tr>
  <td>53</td>
  <td>US26</td>
  <td>Consulta de planes de suscripción</td>
  <td>Consultar los planes de suscripción disponibles con sus características.</td>
  <td>3</td>
</tr>
<tr>
  <td>54</td>
  <td>US27</td>
  <td>Pago simulado y activación de suscripción</td>
  <td>Activar una suscripción mediante un pago simulado con tarjeta.</td>
  <td>5</td>
</tr>
<tr>
  <td>55</td>
  <td>TS11</td>
  <td>Endpoint de creación de suscripción con pago</td>
  <td>Endpoint REST que registra la suscripción y procesa el pago simulado.</td>
  <td>3</td>
</tr>
<tr>
  <td>56</td>
  <td>US28</td>
  <td>Cancelación de suscripción</td>
  <td>Cancelar una suscripción activa cuando la organización ya no la requiera.</td>
  <td>2</td>
</tr>
<tr>
  <td>57</td>
  <td>US29</td>
  <td>Consulta de facturación e historial de pagos</td>
  <td>Consultar el historial de pagos y la facturación de la organización.</td>
  <td>3</td>
</tr>
<tr>
  <td>58</td>
  <td>TS12</td>
  <td>Endpoint de consulta de pagos</td>
  <td>Endpoint REST que retorna el historial de pagos registrados.</td>
  <td>2</td>
</tr>
<tr>
  <td>59</td>
  <td>US30</td>
  <td>Administración de suscripciones</td>
  <td>Supervisar el estado de todas las suscripciones registradas.</td>
  <td>3</td>
</tr>
<tr>
  <td>60</td>
  <td>US48</td>
  <td>Gestión de suscriptores y solicitudes de contacto</td>
  <td>Consultar los suscriptores del newsletter y las solicitudes de contacto.</td>
  <td>2</td>
</tr>
<tr>
  <td>61</td>
  <td>US25</td>
  <td>Administración de usuarios y roles</td>
  <td>Gestionar usuarios, roles y estado de cuentas desde la administración.</td>
  <td>3</td>
</tr>
<tr>
  <td>62</td>
  <td>US50</td>
  <td>Cambio de idioma de la interfaz</td>
  <td>Cambiar el idioma de la interfaz entre español e inglés.</td>
  <td>1</td>
</tr>
</table>


<br>
