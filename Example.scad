use <Braille.scad>;
include <Dictionary_BrailleASCII.scad>; 
//include <Dictionary.scad>; 

tray(0, str2vectordict("HELLO WORLD"));
tray(1, str2vectordict("TIM HEILERS"));
tray(2, str2vectordict("AXEL SEPULVEDA"));
tray(3, str2vectordict("2020"));

//tray(2,[t,h,i,s,space,i,s,space,a,space,t,e,s,t]);
//slate(3,13);
//echo(str2vec("Hello"));

