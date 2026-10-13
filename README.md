# AestheriusMap

Mod de mundo para el servidor de rol **Aestherius** (Skyrim Special Edition / SkyMP).

Añade una **zona de spawn** desde la que los jugadores pueden viajar a las **ciudades principales**, además de otras modificaciones del mundo pensadas para el servidor.

## Requisitos

- Skyrim Special Edition (con Dawnguard, Hearthfire y Dragonborn, que vienen incluidos).
- **[JK's Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/6289)** — obligatorio. `AestheriusMap.esp` lo tiene como master, así que sin él el juego no carga el mod (o se cierra al iniciar).

## Contenido

La carpeta `Data/` tiene la misma estructura que la carpeta `Data` de Skyrim:

| Archivo | Qué es |
|---|---|
| `Data/AestheriusMap.esp` | El plugin con los cambios del mapa |
| `Data/Scripts/TpToPoint_Script.pex` | Script compilado que teletransporta a quien activa el objeto hasta un punto de destino |
| `Data/Source/Scripts/TpToPoint_Script.psc` | Código fuente del script (solo hace falta para editarlo en el Creation Kit) |

## Instalación

1. Instala **JK's Skyrim** desde Nexus.
2. Clona este repositorio:
   ```
   git clone https://github.com/MacWilliXD/Aestherius_ModMap.git
   ```
3. Copia el contenido de `Data/` dentro de la carpeta `Data` de Skyrim, por ejemplo:
   `C:\Program Files (x86)\Steam\steamapps\common\Skyrim Special Edition\Data`
4. Activa `AestheriusMap.esp` en tu gestor de mods (o en `plugins.txt`), **después** de `JKs Skyrim.esp`.

## Actualizar

```
git pull
```

y vuelve a copiar el contenido de `Data/` sobre la carpeta `Data` de Skyrim, reemplazando los archivos.

## Repo dentro de la carpeta del juego (administradores)

El `.gitignore` ignora todo excepto los archivos del mod, así que el repo puede vivir directamente en la carpeta `Skyrim Special Edition`: se edita en el Creation Kit y se sube desde ahí mismo, sin copiar nada, y el resto del juego nunca entra al repo.

Como la carpeta del juego no está vacía, no se puede usar `git clone`. En su lugar, desde la carpeta `Skyrim Special Edition`:

```
git init
git remote add origin https://github.com/MacWilliXD/Aestherius_ModMap.git
git fetch origin
git checkout -f -b main --track origin/main
```

> `checkout -f` reemplaza los archivos del mod que ya hubiera en `Data` por los del repo. Si tienes cambios locales sin subir, respáldalos antes.

Después, para subir cambios:

```
git add -A
git commit -m "Descripción del cambio"
git push
```

Si el mod llega a usar un archivo nuevo (otro script, una malla, etc.), hay que permitirlo en el `.gitignore`; si no, git lo ignora.
