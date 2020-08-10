include <Dictionary.scad>; 
//Dot Module
module dot(){
    union(){
        translate([0,0,-0.25])
        cylinder($fn=12,0.25,0.3,0.6);
        translate([0,0,0])
        cylinder($fn=12,0.25,0.6,0.3);
    }
}

//Cell Module
module cell(dots){
    for (i = [0:len(dots)-1]){
        if (dots[i]) translate (cells[i]) dot();
    }
}

//Tile Modules
module tile(dots,holes){
    if (holes){
        difference(){
            cube([6,10,1], center=true);
            cell(dots);
        }
    } else {
        union(){   
            cube([6,10,1], center=true);
            cell(dots);
        }
    }
}

//Tray Module
module tray(row,line){
    for (i = [0:len(line)-1]){
        translate([tileCol(i),tileRow(row),0.5])
        union(){
            tile(line[i]);
        }
    }    
}

module slate(row,col){
    for (i = [0:col]){
        translate([tileCol(i),tileRow(row),0.5])
        tile([1,1,1,1,1,1],1);
    }
}

function tileCol(y) = y*6-39;
function tileRow(x) = 20-x*10;