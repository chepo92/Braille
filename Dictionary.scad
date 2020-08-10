//Braille Tile
// Translating distances (positions) of each dot in a cell for a 6 dot braille system
cells = [[-1.25,2.5,0.5],[-1.25,0,0.5],[-1.25,-2.5,0.5],
    [1.25,2.5,0.5],[1.25,0,0.5],[1.25,-2.5,0.5]];
// A-J
a = [1,0,0,0,0,0];
b = [1,1,0,0,0,0];
c = [1,0,0,1,0,0];
d = [1,0,0,1,1,0];
e = [1,0,0,0,1,0];
f = [1,1,0,1,0,0];
g = [1,1,0,1,1,0];
h = [1,1,0,0,1,0];
i = [0,1,0,1,0,0];
j = [0,1,0,1,1,0];
// K - T
k = [1,0,1,0,0,0];
l = [1,1,1,0,0,0];
m = [1,0,1,1,0,0];
n = [1,0,1,1,1,0];
o = [1,0,1,0,1,0];
p = [1,1,1,1,0,0];
q = [1,1,1,1,1,0];
r = [1,1,1,0,1,0];
s = [0,1,1,1,0,0];
t = [0,1,1,1,1,0];
// U - ?
u = [1,0,1,0,0,1];
v = [1,1,1,0,0,1];
w = [0,1,0,1,1,1];
x = [1,0,1,1,0,1];
y = [1,0,1,1,1,1];
z = [1,0,1,0,1,1];

//// 
letters = [
a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z
];

shift = [0,0,0,0,0,1];
prime = [0,0,1,0,0,0];
num = [0,0,1,1,1,1];
dash = [0,1,0,0,1,0];
space = [0,0,0,0,0,0];

function char2dict(str) =
	ord(str) >= 97 && ord(str) <= 97+25  ? letters[ord(str)-97] :
    ord(str) == ord(" ") ? space : 
    ord(str) == ord("'") ? prime : 
    ord(str) == ord("#") ? num : 
    ord(str) == ord("-") ? dash : 
    ord(str) == ord("-") ? dash : 
	echo("not a letter");

function str2vectordict(str, v=[], i=0) =
	i == len(str) ? v :
	str2vectordict(str, concat(v, [char2dict(str[i])]), i+1);
