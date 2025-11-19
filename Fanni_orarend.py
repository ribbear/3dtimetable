import pandas as pd

class TimetableSTLGenerator:
    def __init__(self, thickness=2.0, cell_width=27, cell_height=8, text_depth=0.4):
        self.thickness = thickness
        self.cell_width = cell_width
        self.cell_height = cell_height
        self.text_depth = text_depth  # mennyire mély/magas a betű
        
    def generate_openscad_code(self, schedule_data, raised_text=True):
        df = pd.DataFrame(schedule_data)
        rows = len(df)
        cols = len(df.columns)
        
        total_width = cols * self.cell_width
        total_height = rows * self.cell_height
        
        scad_code = f"""
// 3D nyomtatható órarend - Dani 3b II.félév
$fn = 50;

// Alap lap
difference() {{
    cube([{total_width}, {total_height}, {self.thickness}]);
    
    // Rács vonalak (bemélyedés)
    for(i = [1 : {cols-1}]) {{
        translate([i * {self.cell_width}, 0, {self.thickness-0.2}])
        cube([0.4, {total_height}, 0.4]);
    }}
    
    for(j = [1 : {rows-1}]) {{
        translate([0, j * {self.cell_height}, {self.thickness-0.2}])
        cube([{total_width}, 0.4, 0.4]);
    }}
}}

// Szövegek
"""
        
        # Szövegek hozzáadása
        for row_idx, row in df.iterrows():
            for col_idx, col_name in enumerate(df.columns):
                text = str(row[col_name]) if pd.notna(row[col_name]) and row[col_name] != '' else ""
                
                if text:
                    # Pozíció számítása
                    x_pos = col_idx * self.cell_width + self.cell_width/2
                    y_pos = (rows - row_idx - 1) * self.cell_height + self.cell_height/2
                    
                    # Szöveg méret adaptálás
                    text_size = min(3, self.cell_width / len(text) * 1.5) if text else 3
                    
                    if raised_text:
                        # Kidomborodó szöveg
                        z_pos = self.thickness
                        scad_code += f"""
translate([{x_pos}, {y_pos}, {z_pos}])
linear_extrude(height = {self.text_depth})
text("{text}", size = {text_size}, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");
"""
                    else:
                        # Bemélyedő szöveg (kivágás)
                        scad_code += f"""
translate([{x_pos}, {y_pos}, {self.thickness-self.text_depth}])
linear_extrude(height = {self.text_depth + 0.1})
text("{text}", size = {text_size}, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");
"""
        
        if not raised_text:
            # Ha bemélyedő, akkor difference() operátorral
            scad_code = scad_code.replace("// Szövegek", "difference() {\n// Alap lap már kész\n")
            scad_code += "\n}"
        
        return scad_code
    
    def save_scad_file(self, schedule_data, filename="fanni_orarend.scad", raised_text=True):
        scad_code = self.generate_openscad_code(schedule_data, raised_text)
        with open(filename, 'w', encoding='utf-8') as f:
            f.write(scad_code)
        print(f"OpenSCAD fájl mentve: {filename}")
        print("Következő lépések:")
        print("1. Telepítsd az OpenSCAD-ot")
        print("2. Nyisd meg a .scad fájlt")
        print("3. Render (F6)")
        print("4. Export STL (F7)")

# Fanni órarendje
schedule_data = {
    'Időpont': ['', '8:00', '9:00', '10:00', '11:00', '12:15', '13:15', '14:15', '15:15'],
    'Hétfő': ['Hétfő', 'környezet', 'irodalom', 'matek', 'irodalom', 'tesi', '', '', ''],
    'Kedd': ['Kedd', 'angol', 'magyar', 'etika', 'tesi', 'napközi', 'digit kult.', '', ''],
    'Szerda': ['Szerda', 'matek', 'ének', 'technika', 'magyar', 'tesi', '', '', ''],
    'Csütörtök': ['Csütörtök', 'ének', 'matek', 'angol', 'tesi', 'napközi', 'irodalom', '', ''],
    'Péntek': ['Péntek', 'rajz', 'rajz', 'tesi', 'matek', '', '', '', '']
}

# Generálás
generator = TimetableSTLGenerator()

# Kidomborodó betűkkel
generator.save_scad_file(schedule_data, "fanni_orarend_kidombor.scad", raised_text=True)

# Bemélyedő betűkkel  
generator.save_scad_file(schedule_data, "fanni_orarend_bemely.scad", raised_text=False)

