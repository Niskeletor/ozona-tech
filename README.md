# ozona-tech
##Hitos Alcanzados:
Preparación del Entorno:

- Instalación de Minikube y kubectl en una VM Debian en Proxmox.
Verificación del funcionamiento del clúster de Minikube utilizando Docker como driver.
Estado: ✅ Completado.
Despliegue de n8n con Persistencia:

- Creación y aplicación de manifiestos YAML para desplegar n8n con un PersistentVolumeClaim (PVC) para persistencia.
Verificación inicial del despliegue de n8n, confirmando que responde a curl desde el host Debian.
Estado: ✅ Completado.
Configuración de Ingress:

- Implementación de un Ingress Controller (nginx-ingress) en el clúster de Minikube.
Preparativos para configurar Let's Encrypt usando Cert-Manager (pendiente completar).
Estado: 🚧 En progreso (Ingress instalado, pendientes detalles de Cert-Manager y exposición).
Diagnóstico de Conectividad de Red:

- Identificación del problema de conectividad debido a que Minikube está en una subred diferente a la del ordenador.
Exploración de soluciones para resolver la conectividad entre las subredes.
Estado: 🚧 En progreso (revisar NAT, rutas, o reconfiguración de red).