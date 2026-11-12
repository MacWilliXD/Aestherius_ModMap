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

## Mundos y zonas del mod

| Worldspace | Qué es |
|---|---|
| `001WorldSpawn` | Mundo de spawn del servidor (ver arriba) |
| `002CustomsInteriors` | Interiores personalizados |
| `BattleZoneTest` | Mundo para pruebas de batalla |
| `000WorldPresets` | Mundo de presets |
| `Tamriel` (Skyrim) | Cambios en ciudades y caminos |

### Marcadores de `BattleZoneTest`

Todos en la celda `0, 0`:

| Marcador | Posición (X, Y, Z) |
|---|---|
| `Team1Marker` | `2006.7853, 4235.2397, 223.6429` |
| `Team2Marker` | `5613.1392, 3554.0488, 266.3232` |
| `CenterMarker` | `3758.9626, 3850.4097, 240.9001` |

## Arreglos de `AestheriusMapModded.esp`

Plugin aparte con los arreglos del mapa que dependen de otros mods:

| Lugar | Mod | Arreglo |
|---|---|---|
| Falkreath | Cities of the North - Falkreath | Árbol flotante: se bajaron el árbol y sus decoraciones en la celda `-8, -22` de `Tamriel`, sin tocar el terreno. En la misma zona se bajó otro pino y se recolocó un agua del mod |
| Ventalia, The Pit (zona de combate) | Capital Windhelm Expansion | Puertas entre Ventalia y The Pit (se cambió el destino de dos de ellas), y ajuste de una reja de la zona (se sustituyó una de sus piezas). En la arena se bajaron tres rejas, se ajustaron sus puertas y se añadieron tablones y un marcador de colisión. En la sala de espera (`00QuestPitWaitingRoom`) se recolocaron puertas, braseros, fuegos, luces y escombros, y se añadieron dos puertas. Dos fuegos de la sala (`FXfireWithEmbersLogs01`) están borrados |
| Ventalia, Palacio de los Reyes | Capital Windhelm Expansion | En el palacio (`WindhelmPalaceoftheKings`, `WindhelmPalaceUpstairs02`) y en las celdas de la misión de sigilo del mod (`0WHPalaceStealthQuest`, `0WHPalaceStealthQuest2`) se ajustaron puertas metálicas, arcos, una pared con ventana y una escalera, y se añadieron tablones y piezas de pared. Se retocó el navmesh de `0WHPalaceStealthQuest` |
| Ventalia, exterior | Capital Windhelm Expansion, JK's Skyrim | Objetos de JK's Skyrim y del juego base bajados en cuatro celdas de `WindhelmWorld` (`31, 9`, `32, 9`, `32, 8` y la del exterior de The Pit, `33, 10`). El terreno de esas celdas se había retocado (el 8 de noviembre) y se quitó el 11: ahora es el de los demás mods, y los objetos siguen a la altura del terreno retocado |
| Ivarstead y túmulo de Shroud Hearth | JK's Skyrim | Objetos de JK's Skyrim bajados al terreno en las celdas `18, -16`, `18, -15` y `19, -16` de `Tamriel` (estaban hasta 4000 unidades en el aire). `Thuldor's Ivarstead - JK's Skyrim Removed.esp` desactiva la mayoría de ellos; en este plugin están activos |
| Morthal | JK's Skyrim | Un objeto de JK's Skyrim bajado al terreno en la celda `-10, 16` de `Tamriel` |
| Colegio de Hibernalia | Obscure's College of Winterhold | El Arcanaeum y los aposentos del archimago vuelven a la iluminación y los ajustes de celda de vanilla, que cambia `OCW_CellSettings.esp`, y se movió una vitrina de los aposentos |

## Requisitos

### `AestheriusMap.esp`

- Skyrim Special Edition (con Dawnguard, Hearthfire y Dragonborn, que vienen incluidos).
- No depende de otros mods.

### `AestheriusMapModded.esp`

Necesita estos masters, y deben cargar antes que él y en este orden:

| Archivo | Qué es |
|---|---|
| `Skyrim.esm` | Juego base |
| `Update.esm` | Juego base |
| `Dawnguard.esm` | DLC |
| `COTN - Falkreath.esp` | Cities of the North - Falkreath |
| `JKs Skyrim.esp` | JK's Skyrim |
| `WindhelmSSE.esp` | Capital Windhelm Expansion |

Son solo los que usa: los demás se quitaron con **Clean Masters** de SSEEdit, porque el servidor de SkyMP no carga `.esl` ni algunos de esos mods. El Creation Kit vuelve a añadir como master todo lo que tengas cargado al guardar, así que después de editarlo en el CK hay que repetir la limpieza.

El arreglo del Colegio de Hibernalia deshace lo que cambia `OCW_CellSettings.esp`, así que este plugin tiene que cargar después de él aunque ya no sea su master.

## Contenido

La carpeta `Data/` tiene la misma estructura que la carpeta `Data` de Skyrim:

| Archivo | Qué es |
|---|---|
| `Data/AestheriusMap.esp` | El plugin con los cambios del mapa |
| `Data/AestheriusMapModded.esp` | El plugin con los arreglos del mapa que dependen de otros mods |
| `Data/Scripts/TpToPoint_Script.pex` | Script compilado que teletransporta a quien activa el objeto hasta un punto de destino |
| `Data/Source/Scripts/TpToPoint_Script.psc` | Código fuente del script (solo hace falta para editarlo en el Creation Kit) |

## Instalación

1. Clona este repositorio:
   ```
   git clone https://github.com/MacWilliXD/Aestherius_ModMap.git
   ```
2. Copia el contenido de `Data/` dentro de la carpeta `Data` de Skyrim, por ejemplo:
   `C:\Program Files (x86)\Steam\steamapps\common\Skyrim Special Edition\Data`
3. Activa `AestheriusMap.esp` en tu gestor de mods (o en `plugins.txt`). Si usas los mods de los que depende `AestheriusMapModded.esp`, actívalo también, después de sus masters.

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
