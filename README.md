# Braille
Open SCAD file used for generating 3D files of Braille text, usefull for 3D Printing.

# Braille standard
Currently uses 6 dot Braille standard, can be easily added another (like 8 dots) 

# Current dictionaries
- Braille ASCII (https://en.wikipedia.org/wiki/Braille_ASCII), used by default, letters numbers and symbols
- Basic: a-z, space, num, dash, shift (original)

# Usage
```C
tray(row, str2vectordict("YOUR TEXT"));
```
Will create a single row Braille tile containing "YOUR TEXT"


```C
tray(0, str2vectordict("HELLO"));
tray(1, str2vectordict("WORLD"));
```
Will create a 2 rows Braille tile containning "HELLO" in the first row and "WORLD" in the second

Note: default Braille ASCII dictionary uses uppercase letters (by standard)

As usual with OpenScad, Press F5 to generate render preview or F6 to generate the 3D object

# Documentation

Use `tray(row, [Braille Vector array])` function to create Braille tiles from a Braille Vector array

## Convert a string to a Braille Vector array
As creating a Braille Vector array manually from a string is time consuming, the function str2vectordict(string) converts directly a string to a Braille Vector array, so you can do: 
```C
tray(0, str2vectordict("HELLO WORLD"));
```

## Example using original Dictionary.scad
With the original dictionary, the input can have two forms: [char-like vector array] or a string

Example: write "hello world" in column 0: 
```C
tray(0, [h,e,l,l,o,space,w,o,r,l,d]);
```

Note: the previous example, the chars are actually single letter vector names defined in the dictionary (i.e. don't use quotes ' or double quotes " )

The other way, with string 
```C
tray(0, str2vectordict("hello world"));
```

Note: Original dictionary uses lowercase


# Add/use other dictionary
copy and rename file Dictionary_BrailleASCII.scad and edit accordingly to your desired dictionary, eg. Dictionary_NewBraille.scad
Then, in Example.scad change the line:
```C
include <Dictionary_BrailleASCII.scad>; 
```

to 
```C
include <Dictionary_NewBraille.scad>; 
```

And use as usual

# Contribution and Atribution
- Original Braille to OpenScad code from Tim Heilers [github](https://github.com/taheilers/Braille)
- Extended functionalities, string converter and dictionary Axel Sepúlveda 
- String converter recursive function inspired by Nathanaël Jourdane OpenScad string library https://www.thingiverse.com/thing:1237203
- Any contribution is welcome


# License
- Extended functionalities licensed under GPLv3
 
