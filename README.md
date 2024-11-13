# Proyecto 2: Despliegue de Aplicación Monolítica en Kubernetes con MicroK8s en AWS

**Info de la materia:** ST0263: Tópicos Especiales en Telemática, 2024-2  
**Estudiantes:** Daniela Arango Gutiérrez (darangog2@eafit.edu.co)  
**Profesor:** Alvaro Enrique Ospina Sanjuan (aeospinas@eafit.edu.co)  

## 1. Descripción General

En este proyecto se despliega una aplicación monolítica en un clúster Kubernetes montado en múltiples máquinas virtuales IaaS de AWS, utilizando MicroK8s. A diferencia del Reto 2, este clúster es autogestionado, configurado en al menos tres (3) máquinas virtuales. La aplicación se ejecuta con alta disponibilidad y se accede mediante un dominio personalizado con HTTPS (`https://proyecto2.retoeafittelematica.online`). Además, cuenta con un balanceador de carga y almacenamiento compartido gestionado a través de un servidor NFS implementado en el propio clúster.

### 1.1. Aspectos Cumplidos

- **Clúster Kubernetes con MicroK8s:** Instalación y configuración de MicroK8s en tres máquinas virtuales en AWS.
- **Alta disponibilidad:** Tanto la capa de aplicación, la base de datos y el sistema de archivos fueron configurados para garantizar alta disponibilidad.
- **Balanceador de carga y acceso:** Configurado mediante Nginx o utilizando opciones como `Service` e `Ingress`.
- **Dominio y HTTPS:** Se implementó un dominio específico para el proyecto con un certificado SSL válido.
- **Escalabilidad:** Permite el aumento dinámico de nodos en el clúster, ya sea de forma automática o manual.
- **Servidor NFS:** Configurado dentro del clúster para el manejo de volúmenes compartidos.

### 1.2. Aspectos No Cumplidos

- **Autoescalado Completo:** La configuración de autoescalado de nodos en el clúster puede requerir ajuste manual debido a restricciones en la infraestructura disponible.

## 2. Diseño de Alto Nivel

El diseño de la arquitectura de este proyecto es el siguiente:

- **Kubernetes con MicroK8s en AWS IaaS:** Clúster Kubernetes autogestionado con tres o más nodos.
- **Nginx o Service/Ingress como balanceador de carga:** Para gestionar el acceso a la aplicación.
- **Base de Datos de Alta Disponibilidad:** Implementada dentro del clúster Kubernetes.
- **Servidor NFS:** Configurado dentro del clúster para proveer almacenamiento persistente y compartido.
- **Certificado SSL y Dominio Personalizado:** Acceso HTTPS a través del dominio `https://proyecto2.dominio.tld`.

## 3. Ambiente de Desarrollo

- **Herramientas principales:** MicroK8s, Nginx, Cert-manager, Kubernetes Manifests (YAML).
- **Librerías y herramientas utilizadas:**
  - MicroK8s v1.21+
  - Docker v20.10.8
  - Nginx v1.20
  - AWS CLI v2
  - Cert-manager para la gestión de SSL
- **Cómo compilar y ejecutar:**
  - Configuración del clúster con MicroK8s en máquinas virtuales de AWS.
  - Despliegue de la aplicación con `kubectl apply -f deployment.yaml`.
  - Configuración de balanceo de carga y SSL mediante Nginx o Ingress.
  
### Detalles Técnicos

1. **Configuración de parámetros:**
   - **Base de datos:** Variables de entorno (`DB_HOST`, `DB_PORT`, `DB_USER`, `DB_PASSWORD`) para la conexión segura y persistente.
   - **Conexión NFS:** Montaje en volúmenes de los contenedores mediante parámetros NFS.
   - **Certificados SSL:** Configurados a través de cert-manager en Kubernetes para HTTPS.

## 4. Ambiente de Ejecución

- **Lenguaje y Herramientas en Producción:**
  - MicroK8s en AWS IaaS
  - Docker
  - Nginx o Service/Ingress para balanceo de carga
  - Cert-manager para SSL
- **IP/Dominio:** [https://proyecto2.dominio.tld](https://proyecto2.retoeafittelematica.online)

### Guía para Usuarios Finales

1. **Acceder a la aplicación** en [https://proyecto2.dominio.tld](https://proyecto2.retoeafittelematica.online).
2. Crear una cuenta de usuario o autenticarse para acceder a los recursos y funcionalidades de la aplicación.

## 5. Otra Información Relevante

- **Recursos:**
  - Guía de instalación de MicroK8s: [https://microk8s.io/](https://microk8s.io/)
  - Video introductorio a Kubernetes y recursos de referencia del Reto 2:
    - [Despliegue de Kubernetes en AWS EKS](https://github.com/st0263eafit/st0263-242/tree/main/eks-wp)
    - [Video introductorio a Kubernetes](https://youtu.be/DCoBcpOA7W4)
