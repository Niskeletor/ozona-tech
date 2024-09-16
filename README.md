# Ozona-Tech

## Hitos Alcanzados:

### Preparación del Entorno:
- **Instalación de Minikube y kubectl en una VM Debian en Proxmox.**
  - Configuración de Minikube para utilizar Docker como driver en un entorno on-premise.
  - Implementación y ajuste de la red utilizando Nginx como proxy inverso para redirigir el tráfico entre las subredes.
  - **Estado:** ✅ Completado.

### Despliegue de n8n con Persistencia:
- **Creación y aplicación de manifiestos YAML para desplegar n8n con un PersistentVolumeClaim (PVC) para persistencia.**
  - Configuración del despliegue de n8n con almacenamiento persistente para asegurar la retención de datos.
  - **Estado:** ✅ Completado.

### Configuración de Ingress:
- **Implementación de un Ingress Controller (nginx-ingress) en el clúster de Minikube.**
  - Configuración y ajuste de reglas de Ingress para redirigir el tráfico a los servicios correspondientes en el clúster.
  - **Estado:** ✅ Completado.

### Configuración de Certificados SSL:
- **Configuración de Cert-Manager y emisión de certificados SSL para n8n.**
  - Implementación de Cloudflare Tunnels para gestionar conexiones HTTPS de manera segura, facilitando el acceso externo a los servicios.
  - Certificados obtenidos mediante Let's Encrypt y gestionados con Cert-Manager.
  - **Estado:** ✅ Completado.

### Diagnóstico de Conectividad de Red:
- **Identificación del problema de conectividad debido a que Minikube está en una subred diferente a la del ordenador.**
  - Implementación de reglas de NAT y ajustes de red para resolver la conectividad entre subredes, facilitando el acceso a los servicios del clúster.
  - **Estado:** ✅ Completado.

### Implementación del Monitoreo con Prometheus y Grafana:
- **Despliegue de Prometheus para la recolección de métricas y Grafana para la visualización.**
  - Configuración de Prometheus para recolectar métricas de Kubernetes, incluyendo los nodos, pods, y componentes internos del clúster.
  - Integración de Grafana para visualizar las métricas de Prometheus con dashboards preconfigurados, incluyendo métricas de sistema y servicios del clúster.
  - **Estado:** ✅ Completado.

### Exposición de Servicios con NodePort:
- **Exposición de Grafana y Prometheus a través de servicios NodePort.**
  - Configuración de servicios para permitir acceso externo y visualización de métricas.
  - **Estado:** ✅ Completado.

## Hitos Pendientes:

### Automatización con Terraform y LocalStack (Sin Completar):
- **Utilización de Terraform para definir la infraestructura como código.**
  - Exploración de Terraform para gestionar el despliegue de Kubernetes y servicios asociados en un entorno local o en la nube.
  - Posibilidad de integrar Terraform con LocalStack para emular servicios de AWS sin incurrir en costos adicionales.
  - **Estado:** 🚧 En progreso.

### Pruebas de Integración y Validación:
- **Asegurar el funcionamiento correcto del sistema incluyendo alta disponibilidad y persistencia.**
  - Realización de pruebas de carga y estrés en n8n para verificar la estabilidad y respuesta bajo presión.
  - Validación de la integración de los servicios de monitorización y ajustes de alertas en Grafana.
  - **Estado:** 🚧 En progreso.

---

# Resumen de Pruebas, Errores y Soluciones Implementadas

## Errores y Complicaciones Encontradas:

### 1. Problemas de Conectividad de Red:
- **Complicación:** La configuración de Minikube en una subred diferente a la del ordenador principal provocó problemas de conectividad.
- **Solución:** Implementamos reglas de NAT y configuraciones específicas en Nginx como proxy inverso para gestionar el tráfico entre subredes, asegurando el acceso a los servicios desplegados.

### 2. Configuración de Certificados SSL:
- **Complicación:** Hubo múltiples problemas con la emisión de certificados mediante Cert-Manager, incluidos errores con los desafíos ACME (HTTP-01) debido a configuraciones de red y reglas de seguridad.
- **Solución:** Utilizamos Cloudflare Tunnels para simplificar la gestión de las conexiones HTTPS y garantizar la emisión exitosa de los certificados SSL con Let's Encrypt.

### 3. Despliegue de n8n con Persistencia:
- **Complicación:** Configurar un PersistentVolumeClaim (PVC) para asegurar que los datos de n8n fueran persistentes, tuve que desaprender como manejar volúmenes.
- **Solución:** Ajustamos los manifiestos YAML para incluir configuraciones de permisos adecuados y tipos de volumen.

### 4. Exposición de Servicios:
- **Complicación:** Acceder a servicios como Grafana y Prometheus fuera del clúster fue un desafío debido a configuraciones incorrectas en los servicios de Kubernetes.
- **Solución:** Cambiamos la configuración de los servicios a NodePort para exponerlos correctamente y permitir el acceso externo, realizando ajustes en los Ingress y asegurando la correcta redirección del tráfico.

### 5. Integración de Prometheus con Grafana:
- **Complicación:** Conectar Prometheus con Grafana y asegurarse de que todos los componentes del clúster fueran monitorizados adecuadamente fue complejo. En n8n, las métricas estaban desactivadas por defecto.
- **Solución:** Activamos las métricas en n8n mediante la configuración de variables de entorno en el Deployment y añadimos Prometheus como fuente de datos en Grafana, seleccionando dashboards adecuados para visualizar las métricas relevantes.

### 6. Exploración de Terraform:
- **Complicación:** Dada la falta de experiencia previa, integrar Terraform en el flujo de trabajo de Kubernetes ha sido un reto, con especial énfasis en creer de base que Terraform sólo servía para Infraestructura de AWS o Azure.
- **Solución:** Iniciamos la exploración y configuración de Terraform, considerando su uso en LocalStack para simular servicios de AWS sin costos, y evaluamos la creación de clústeres y recursos de Kubernetes mediante HCL (HashiCorp Configuration Language).

## Recursos y Aprendizajes:

### Documentación y Recursos Consultados:
- **Kubernetes y Minikube:** Documentación oficial para entender configuraciones básicas y avanzadas, así como ajustes específicos para ambientes locales.
- **Terraform:** Documentación de Terraform para comprender cómo aplicar la infraestructura como código en entornos Kubernetes.
- **Nginx y Cloudflare:** Usada documentación y guías para implementar Nginx como proxy inverso y configurar túneles de Cloudflare para la gestión de tráfico seguro.
- **Cert-Manager y Let's Encrypt:** Uso guías detalladas sobre la configuración de Cert-Manager para la emisión de certificados automatizados.
- **Recursos Adicionales:** Seguimiento tutoriales y vídeos de creadores como:
  - **DaveOps**
  - **Caos Binario**
  - **Cultura DevOps**
  - **Pelado Nerd**
  - **Christian Lempa**
  - **NetworkChuck**

### Uso de ChatGPT:
- **Consultas y Feedback:** Uso de  ChatGPT para resolver dudas específicas, obtener retroalimentación sobre configuraciones y recibir consejos sobre las mejores prácticas en la implementación de soluciones.

## Reflexión:
Durante este proyecto, se invirtió un tiempo considerable en la lectura, experimentación y solución de problemas a medida que surgían. Cada complicación, cada error y cada paso fue visto como una oportunidad de aprendizaje, y las soluciones implementadas demuestran la capacidad de adaptarse y resolver problemas complejos en tiempo real. La exploración de nuevas herramientas como Terraform y la integración de sistemas de monitorización representan un avance significativo en habilidades y conocimientos técnicos, listos para ser aplicados en escenarios profesionales reales.

Kubernetes Grafana y Terraform ha sido un cambio completo de paradigma en cuanto al uso de recursos, la gestión de infraestructura y la integración de software


