
// 3D nyomtatható órarend - Dani 3b II.félév
$fn = 50;

// Alap lap
difference() {
    cube([150, 72, 2.0]);
    
    // Rács vonalak (bemélyedés)
    for(i = [1 : 5]) {
        translate([i * 25, 0, 1.8])
        cube([0.4, 72, 0.4]);
    }
    
    for(j = [1 : 8]) {
        translate([0, j * 8, 1.8])
        cube([150, 0.4, 0.4]);
    }
}

difference() {
// Alap lap már kész


translate([12.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("8:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("nyelvtan", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("környezet", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("vizuális kultúra", size = 2.34375, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 68.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("9:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("Angol", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("irodalom", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 60.0, 1.6])
linear_extrude(height = 0.5)
text("angol", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("10:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("angol", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("technika", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 52.0, 1.6])
linear_extrude(height = 0.5)
text("nyelvtan", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("11:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("fogalmazás", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("etika", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("matek", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 44.0, 1.6])
linear_extrude(height = 0.5)
text("irodalom", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("12:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("digitális kultúra", size = 2.2058823529411766, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("ének", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("irodalom", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("tesi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 36.0, 1.6])
linear_extrude(height = 0.5)
text("ének", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("13:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("ebéd/házi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("ének fejlesztés", size = 2.5, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("digitális kultúra tg", size = 1.875, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("digitális kultúra tg", size = 1.875, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 28.0, 1.6])
linear_extrude(height = 0.5)
text("szövegértés", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("14:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("angol tg", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("matek fejlesztés", size = 2.34375, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 20.0, 1.6])
linear_extrude(height = 0.5)
text("mesedélután", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("15:15", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("uzsonna/házi/udvar", size = 2.083333333333333, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([62.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("udvar", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([87.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("házi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([112.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("házi", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([137.5, 12.0, 1.6])
linear_extrude(height = 0.5)
text("udvar", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([12.5, 4.0, 1.6])
linear_extrude(height = 0.5)
text("16:00", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

translate([37.5, 4.0, 1.6])
linear_extrude(height = 0.5)
text("nap vége", size = 3, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");

}