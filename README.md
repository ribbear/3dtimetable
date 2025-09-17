***

# Timetable Projekt - Felhasználói Útmutató

## Virtuális környezet aktiválása

A projekt gyökérkönyvtárában futtasd:

```bash
source venv/bin/activate
```

A prompt így változik:

```
(venv) root@AlienwareX17NyCs:~/timetable#
```

## A Python script futtatása

Indítsd el a heti órarend-generáló scriptet:

```bash
python timetable.py
```

Ha a következő hibaüzenetet kapod:

```
Traceback (most recent call last):
  File "/root/timetable/timetable.py", line 90, in <module>
    'Időpont': [köznapok, '8:00', '9:00', '10:00', '11:00', '12:15', '13:15', '14:15', '15:15'],
                ^^^^^^^^
NameError: name 'köznapok' is not defined
```

akkor frissítsd a repót a távoli GitHub tárolóból:

```bash
git pull
```

és futtasd újra a scriptet.

## OpenSCAD fájlok generálása és használata

A script lefutása után a következő OpenSCAD fájlok keletkeznek:

- `dani_orarend_kidombor.scad`
- `dani_orarend_bemely.scad`

A további lépések:

1. Telepítsd az OpenSCAD szoftvert.
2. Nyisd meg a `.scad` fájlokat az OpenSCAD-ban.
3. Rendereld a modellt az F6 billentyűvel.
4. Exportáld STL formátumban az F7 billentyűvel.

## Qt platform plugin hiba megoldása

Ha az OpenSCAD futtatásakor a következő hiba jelenik meg:

```
qt.qpa.xcb: could not connect to display
qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
Aborted (core dumped)
```

Ellenőrizd, hogy van-e aktív grafikus megjelenítő (pl. X server), vagy futtasd az OpenSCAD-ot grafikus környezetben.

## File-másolás és jogosultságok beállítása

A generált `.scad` fájlokat másold át a felhasználói könyvtárba, szükség esetén állítsd be a megfelelő jogosultságokat:

```bash
cp dani_orarend_kidombor.scad /home/Xowner/
chown Xowner:Xowner /home/ribbear/dani_orarend_kidombor.scad
```

## Kilépés a virtuális környezetből

```bash
deactivate
```

## Parancssoros OpenSCAD export 3MF formátumba

Ha nem vagy grafikus környezetben vagy automatizált export kell, az alábbi paranccsal generálhatsz 3MF fájlt:

```bash
openscad --render --export-format 3mf dani_orarend_kidombor.scad -o dani_orarend.3mf
```

***

Ez az útmutató lefedi a projekt futtatásának és a főbb hibák megoldásának lépéseit a terminál alapú környezethez.

OpenSCAD renderelési visszajelzés (példa)

Rendereléskor az OpenSCAD hasonló statisztikákat ad vissza:
```bash
Geometries in cache: 131
Geometry cache size in bytes: 12520696
CGAL Polyhedrons in cache: 4
CGAL cache size in bytes: 66456304
Total rendering time: 0:09:05.413
   Top level object is a 3D object:
   Simple:        yes
   Vertices:    48792
   Halfedges:  146428
   Edges:       73214
   Halffacets:  49800
   Facets:      24900
   Volumes:         2
```
***
