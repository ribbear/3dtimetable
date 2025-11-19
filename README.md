***

# Timetable Projekt - Felhasználói Útmutató
A projektet wslben valósítottam meg.
előfeltétel néhány csomag telepítése.
```bash
apt install openscad
apt install pipx
mkdir timetable
cd timetable
```


## Virtuális környezet kialakítása
A virtuális környezeteben telepített python csomagok csak a virtuális környezetben települnek, így nem befolyáolják a host gép python környezetét, és így több python körneyzet is létrehozható.
```bash
python3 -m venv venv
```

## Virtuális környezet aktiválása
A projekt gyökérkönyvtárában futtasd:

```bash
source venv/bin/activate
```

A prompt így változik:

```bash
(venv) root@AlienwareX17NyCs:~/timetable#
```
## A Python csaomgok telepítése a virtuális environmentben
```bash
pipx install pandas
```
## Szerkesszük az órarendet.
Megnyitva a timetable.py fájlt pl vi-al. a fájl aljára menve, megtlaáljuk az órarendet.
```bash
schedule_data = {
    'Időpont': ['', '8:00', '9:00', '10:00', '11:00', '12:15', '13:15', '14:15', '15:15'],
    'Hétfő': ['Hétfő', 'Töri', 'Fizika', 'Matek', 'Angol', 'Tesi', 'Irodalom', 'Matek TG', ''],
    'Kedd': ['Kedd', 'Matek', 'Rajz', 'Nyefi', 'Föci', 'Tesi', 'Kémia', '', ''],
    'Szerda': ['Szerda', 'Matek', 'Töri', 'Kémia', 'Etika', 'Angol', 'Tesi', 'Nyefi', ''],
    'Csütörtök': ['Csütörtök', 'Biosz', 'Föci', 'Info', 'Fizika', 'Tesi', 'Államp. ism.', '', ''],
    'Péntek': ['Péntek', 'Irodalom', 'Tesi', 'Matek', 'Ének', 'Angol', 'Köz. nev.', '', '']
}
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

1. Telepítsd az OpenSCAD szoftvert. (Ha még nem történt meg)
2. Nyisd meg a `.scad` fájlokat az OpenSCAD-el.
```bash
export DISPLAY=$(ip route list default | awk '{print $3}'):0
export LIBGL_ALWAYS_INDIRECT=1
export LIBGL_ALWAYS_SOFTWARE=1
export QT_XCB_GL_INTEGRATION=none
export QT_QUICK_BACKEND=software
export QT_OPENGL=software
openscad --render --export-format 3mf fanni_orarend_kidombor.scad -o fanni_orarend.3mf
```

## Qt platform plugin hiba megoldása

Ha az OpenSCAD futtatásakor a következő hiba jelenik meg:

```
qt.qpa.xcb: could not connect to display
qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
Aborted (core dumped)
```

Ellenőrizd, hogy van-e aktív grafikus megjelenítő (pl. X server), pl használj mobaxtermet, az wslhez is tud csatlakozni.

## File-másolás és jogosultságok beállítása

A generált `.scad` fájlokat másold át a felhasználói könyvtárba, szükség esetén állítsd be a megfelelő jogosultságokat:

```bash
cp fanni_orarend_kidombor.scad /home/Xowner/
chown Xowner:Xowner /home/Xowner/fanni_orarend_kidombor.scad
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
