# Registro de gastos

Aplicacion estatica para GitHub Pages con datos guardados en Supabase.

## Preparar Supabase

1. Crea un proyecto en Supabase.
2. Abre `SQL Editor`.
3. Ejecuta el contenido de `schema.sql`.
4. En `Project Settings > API`, copia:
   - Project URL.
   - anon public key.

## Configurar la app

1. Copia `config.example.js` como `config.js`.
2. Completa `supabaseUrl` y `supabaseAnonKey` en `config.js`.
3. Abre `index.html` o publica el repo con GitHub Pages.

## Publicar en GitHub Pages

1. Sube estos archivos a un repositorio de GitHub.
2. En GitHub, entra a `Settings > Pages`.
3. Publica desde la rama principal y la carpeta raiz.

## Nota de seguridad

La configuracion inicial permite leer, crear y borrar gastos con la clave publica anonima. Esta bien para una app personal no enlazada publicamente, pero no es privada si alguien consigue la URL.

Para endurecerla, el siguiente paso es agregar autenticacion de Supabase y cambiar las policies para que cada usuario vea solo sus gastos.
