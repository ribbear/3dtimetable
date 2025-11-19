
// 3D nyomtatható órarend - Dani 3b II.félév
$fn = 50;

// Alap lap
difference() {
    cube([162, 72, 2.0]);
    
    // Rács vonalak (bemélyedés)
    for(i = [1 : 5]) {
        translate([i * 27, 0, 1.8])
        cube([0.4, 72, 0.4]);
    }
    
    for(j = [1 : 8]) {
        translate([0, j * 8, 1.8])
        cube([162, 0.4, 0.4]);
    }
}

difference() {
// Alap lap már kész


translate([40.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("Hétfő", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("Kedd", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([94.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("Szerda", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("Csütörtök", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([148.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("Péntek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("8:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([40.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("környezet", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("angol", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([94.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("ének", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([148.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("rajz", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("9:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([40.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("irodalom", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("magyar", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([94.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("ének", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([148.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("rajz", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("10:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([40.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("etika", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([94.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("technika", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("angol", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([148.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("11:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([40.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("irodalom", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([94.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("magyar", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([148.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("12:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([40.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("napközi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([94.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("napközi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("13:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([67.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("digit kult.", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([121.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("irodalom", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("14:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([13.5, 4.0, 1.6])
linear_extrude(height = 0.5)
text("15:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

}