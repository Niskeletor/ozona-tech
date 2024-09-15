# Ozona-Tech

## Hitos Alcanzados:

### Preparación del Entorno:
- **Instalación de Minikube y kubectl en una VM Debian en Proxmox.**
  - Verificación del funcionamiento del clúster de Minikube utilizando Docker como driver.
  - **Estado:** ✅ Completado.

### Despliegue de n8n con Persistencia:
- **Creación y aplicación de manifiestos YAML para desplegar n8n con un PersistentVolumeClaim (PVC) para persistencia.**
  - Verificación inicial del despliegue de n8n, confirmando que responde a `curl` desde el host Debian.
  - **Estado:** ✅ Completado.

### Configuración de Ingress:
- **Implementación de un Ingress Controller (nginx-ingress) en el clúster de Minikube.**
  - Preparativos para configurar Let's Encrypt usando Cert-Manager.
  - **Estado:** ✅ Completado.

### Diagnóstico de Conectividad de Red:
- **Identificación del problema de conectividad debido a que Minikube está en una subred diferente a la del ordenador.**
  - Exploración de soluciones para resolver la conectividad entre las subredes.
  - **Estado:** ✅ Completado.

### Configuración de Certificados SSL:
- **Configuración de Cert-Manager y emisión de certificados SSL para n8n.**
  - Uso de Cloudflare Tunnels para gestionar la conexión HTTPS de manera segura.
  - **Estado:** ✅ Completado.

## Hitos Pendientes:

### Implementación del Monitoreo con Prometheus y Grafana:
- **Despliegue de Prometheus para la recolección de métricas y Grafana para la visualización.**
  - Configuración de Prometheus para recolectar métricas de Kubernetes y n8n.
  - Integración de Grafana para visualizar las métricas de Prometheus.
  - **Estado:** 🚧 En progreso.

### Automatización con Terraform (Opcional):
- **Utilización de Terraform para definir la infraestructura como código.**
  - Creación de scripts de Terraform para el clúster, n8n, y servicios de monitorización.
  - Despliegue y gestión de la infraestructura con Terraform.
  - **Estado:** 🚧 En progreso.

### Pruebas de Integración y Validación:
- **Asegurar el funcionamiento correcto del sistema incluyendo alta disponibilidad y persistencia.**
  - Realización de pruebas de carga y estrés en n8n para verificar la estabilidad.
  - Validación de la integración de los servicios de monitorización.
  - **Estado:** 🚧 En progreso.

### Documentación y Presentación del Proyecto:
- **Preparación de la documentación y presentación para la entrega del proyecto.**
  - Documentación de la arquitectura, decisiones técnicas y configuraciones.
  - Preparación de la presentación para mostrar los hitos y el funcionamiento del proyecto.
  - **Estado:** 🚧 En progreso.

## Próximos Pasos:
1. **Finalizar la implementación del monitoreo con Prometheus y Grafana.**
2. **Completar la automatización con Terraform para asegurar replicabilidad y gestión eficiente.**
3. **Ejecutar pruebas de integración y validar el sistema completo.**



