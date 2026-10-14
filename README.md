# AestheriusMap

Mod de mundo para el servidor de rol **Aestherius** (Skyrim Special Edition / SkyMP).

Añade una **zona de spawn** desde la que los jugadores pueden viajar a las **ciudades principales**, además de otras modificaciones del mundo pensadas para el servidor.

## Zona de spawn

| Dato | Valor |
|---|---|
| Worldspace | `001WorldSpawn` |
| Celda | cuadrante `0, 0` |
| Marcador | `MarkerShowMenu` |
| Posición (X, Y, Z) | `2050.6848, 1202.2542, 396.1061` |

`MarkerShowMenu` es el punto de inicio de los jugadores nuevos: ahí aparecen para la creación de personaje y, desde la zona de spawn, viajan a las ciudades principales.

## Requisitos

- Skyrim Special Edition (con Dawnguard, Hearthfire y Dragonborn, que vienen incluidos).
- No depende de otros mods.

## Contenido

La carpeta `Data/` tiene la misma estructura que la carpeta `Data` de Skyrim:

| Archivo | Qué es |
|---|---|
| `Data/AestheriusMap.esp` | El plugin con los cambios del mapa |
| `Data/Scripts/TpToPoint_Script.pex` | Script compilado que teletransporta a quien activa el objeto hasta un punto de destino |
| `Data/Source/Scripts/TpToPoint_Script.psc` | Código fuente del script (solo hace falta para editarlo en el Creation Kit) |

## Instalación

1. Clona este repositorio:
   ```
   git clone https://github.com/MacWilliXD/Aestherius_ModMap.git
   ```
2. Copia el contenido de `Data/` dentro de la carpeta `Data` de Skyrim, por ejemplo:
   `C:\Program Files (x86)\Steam\steamapps\common\Skyrim Special Edition\Data`
3. Activa `AestheriusMap.esp` en tu gestor de mods (o en `plugins.txt`).

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
