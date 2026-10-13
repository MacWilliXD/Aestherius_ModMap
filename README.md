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
