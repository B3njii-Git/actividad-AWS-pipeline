Basado en la guía de laboratorio proporcionada, aquí tienes una propuesta de archivo `README.md` estructurada y profesional para tu repositorio:

---

# Pipeline CI/CD y Arquitectura Multinivel en AWS

## Descripción del Proyecto
[cite_start]Este proyecto consiste en la implementación de un ciclo completo de **DevOps** que integra el control de versiones distribuido, la automatización de construcción de imágenes de contenedores y el despliegue de una infraestructura de red segura en la nube de AWS[cite: 1, 2].

[cite_start]El objetivo principal es establecer un flujo de trabajo moderno que garantice la seguridad y la escalabilidad mediante una arquitectura de 3 capas (Web, App y Datos)[cite: 2, 16].

---

## Estrategia de Ramas (GitFlow)
[cite_start]Para el desarrollo de este proyecto se ha utilizado una **Estrategia de Ramas de Características (Feature Branches)**[cite: 7]. Los componentes se desarrollaron de forma aislada para asegurar la integridad de la rama principal:

* [cite_start]**`feature/frontend`**: Contiene el código fuente básico (`index.html`) con la interfaz del servidor[cite: 5].
* [cite_start]**`feature/docker`**: Incluye la configuración del `Dockerfile` basado en `nginx:alpine` para la contenedorización de la aplicación[cite: 6].
* [cite_start]**`feature/docs`**: Rama dedicada a la documentación y creación de este archivo README[cite: 7].

[cite_start]Cada una de estas características fue integrada en la rama `main` mediante el uso de **Pull Requests (PR)** independientes[cite: 8].

---

## Automatización CI/CD (GitHub Actions)
[cite_start]Se implementó un flujo de integración continua para automatizar el empaquetado de la solución[cite: 10]:

* [cite_start]**Workflow**: Localizado en `.github/workflows/main.yml`, este flujo se activa exclusivamente al realizar un **Pull Request hacia la rama `main`**[cite: 12, 13].
* [cite_start]**Proceso**: El pipeline realiza automáticamente el login en Docker Hub, construye la imagen a partir del Dockerfile y la sube al repositorio personal del usuario[cite: 14].
* [cite_start]**Seguridad**: Se utilizaron secretos de GitHub (`USER_DOCKERHUB` y `PASSWORD_DOCKERHUB`) para manejar las credenciales de forma segura[cite: 11].

---

## Arquitectura de Red en AWS (VPC)
[cite_start]La infraestructura se diseñó siguiendo un modelo de **3 capas** para aislar los componentes críticos[cite: 16]:

### 1. Redes y Subredes
* [cite_start]**VPC**: Entorno de red aislado con soporte para DNS[cite: 17].
* [cite_start]**Capa Web**: Subred Pública[cite: 19].
* [cite_start]**Capa App**: Subred Privada[cite: 20].
* [cite_start]**Capa de Datos**: Subred Privada[cite: 20].

### 2. Grupos de Seguridad (Firewall)
| Grupo | Tráfico Permitido | Origen |
| :--- | :--- | :--- |
| **GrupoWeb** | HTTP (80), SSH (22), ICMP (Ping) | [cite_start]Cualquier origen (0.0.0.0/0) [cite: 22] |
| **GrupoApp** | HTTP, SSH, ICMP | [cite_start]Solo desde **GrupoWeb** [cite: 23, 24] |
| **GrupoDatos**| MySQL (3306), ICMP | [cite_start]Solo desde **GrupoApp** [cite: 25] |

---

## Verificación del Despliegue
[cite_start]Para validar la correcta implementación y el aislamiento de las capas, se realizaron las siguientes pruebas[cite: 27]:
1.  [cite_start]**Acceso Externo**: Validación de conexión SSH exitosa a la instancia ubicada en la subred pública (Nivel Web)[cite: 31].
2.  [cite_start]**Conectividad entre Capas**: Prueba de `ping` desde la instancia Web hacia la IP privada de la instancia App para confirmar el salto seguro entre capas[cite: 32, 33].
