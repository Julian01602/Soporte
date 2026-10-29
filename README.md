# 🛠️ Sistema Automatizado de Soportes - SENA

Aplicación web desarrollada para la gestión, registro y seguimiento automatizado de tickets y soportes técnicos del SENA.

---

## 🚀 Tecnologías Utilizadas

* **Frontend:** [React](https://react.dev/) + [Vite / Create React App]
* **Backend & Base de Datos:** [Supabase](https://supabase.com/) (PostgreSQL, Autenticación y Storage)
* **Estilos:** [CSS Modules / Tailwind CSS / Bootstrap]
* **Control de Versiones:** Git & GitHub

---

## 📋 Características Principales

* 📝 **Registro Automatizado de Soportes:** Formulario dinámico para la creación de solicitudes o tickets.
* ⚡ **Actualizaciones en Tiempo Real:** Seguimiento instantáneo del estado de cada soporte mediante las suscripciones en tiempo real de Supabase.
* 🔐 **Autenticación y Roles:** Control de acceso seguro para usuarios y administradores/soporte.
* 🗃️ **Persistencia de Datos:** Gestión estructurada de registros mediante PostgreSQL en Supabase.

---

## ⚙️ Instalación y Configuración Local

Sigue estos pasos para clonar y ejecutar el proyecto localmente:

### 1. Clonar el repositorio
\`\`\`bash
git clone https://github.com/Julian01602/Soporte.git
cd Soporte
\`\`\`

### 2. Instalar dependencias
\`\`\`bash
npm install
\`\`\`

### 3. Configurar variables de entorno
Crea un archivo `.env.local` en la raíz del proyecto y agrega tus credenciales de Supabase:

\`\`\`env
VITE_SUPABASE_URL=tu_url_de_supabase
VITE_SUPABASE_ANON_KEY=tu_llave_anonima_de_supabase
\`\`\`

### 4. Iniciar el servidor de desarrollo
\`\`\`bash
npm run dev
\`\`\`

---

## 📂 Estructura de la Base de Datos (Supabase)

El proyecto utiliza tablas en PostgreSQL administradas desde Supabase:
* `soportes`: Registro de tickets (id, usuario, título, descripción, estado, fecha_creación).
* `usuarios`: Datos de perfil y roles vinculados a `auth.users`.

---

## ✒️ Autor
* **Julian**[cite: 1] - *Desarrollo e Implementación*
