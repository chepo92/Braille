//Braille Tile
// Translating distances (positions) of each dot in a cell for a 6 dot braille system
cells = [[-1.25,2.5,0.5],[-1.25,0,0.5],[-1.25,-2.5,0.5],
    [1.25,2.5,0.5],[1.25,0,0.5],[1.25,-2.5,0.5]];

// Braille ASCII table (https://en.wikipedia.org/wiki/Braille_ASCII)
//ASCII Hex 	ASCII Glyph 	Braille Dots 	Braille Glyph 	Unicode Braille Glyph 	Braille Meaning
//20 	(space) 	000000 	⠀ (braille pattern blank) 	⠀ 	(space)
//21 	! 	        011011 	⠮ (braille pattern dots-2346) 	⠮ 	the
//22 	" 	000100 	⠐ (braille pattern dots-5) 	⠐ 	(contraction)
//23 	# 	010111 	⠼ (braille pattern dots-3456) 	⠼ 	(number prefix)
//24 	$ 	111001 	⠫ (braille pattern dots-1246) 	⠫ 	ed
//25 	% 	110001 	⠩ (braille pattern dots-146) 	⠩ 	sh
//26 	& 	111011 	⠯ (braille pattern dots-12346) 	⠯ 	and
//27 	' 	000010 	⠄ (braille pattern dots-3) 	⠄ 	'
//28 	( 	101111 	⠷ (braille pattern dots-12356) 	⠷ 	of
//29 	) 	011111 	⠾ (braille pattern dots-23456) 	⠾ 	with
//2A 	* 	100001 	⠡ (braille pattern dots-16) 	⠡ 	ch
//2B 	+ 	010011 	⠬ (braille pattern dots-346) 	⠬ 	ing
//2C 	, 	000001 	⠠ (braille pattern dots-6) 	⠠ 	(uppercase prefix)
//2D 	- 	000011 	⠤ (braille pattern dots-36) 	⠤ 	-
//2E 	. 	010001 	⠨ (braille pattern dots-46) 	⠨ 	(italic prefix)
//2F 	/ 	010010 	⠌ (braille pattern dots-34) 	⠌ 	st
//30 	0 	000111 	⠴ (braille pattern dots-356) 	⠴ 	”
//31 	1 	001000 	⠂ (braille pattern dots-2) 	⠂ 	,
//32 	2 	001010 	⠆ (braille pattern dots-23) 	⠆ 	;
//33 	3 	001100 	⠒ (braille pattern dots-25) 	⠒ 	:
//34 	4 	001101 	⠲ (braille pattern dots-256) 	⠲ 	.
//35 	5 	001001 	⠢ (braille pattern dots-26) 	⠢ 	en
//36 	6 	001110 	⠖ (braille pattern dots-235) 	⠖ 	!
//37 	7 	001111 	⠶ (braille pattern dots-2356) 	⠶ 	( or )
//38 	8 	001011 	⠦ (braille pattern dots-236) 	⠦ 	“ or ?
//39 	9 	000110 	⠔ (braille pattern dots-35) 	⠔ 	in
//3A 	: 	100101 	⠱ (braille pattern dots-156) 	⠱ 	wh
//3B 	; 	000101 	⠰ (braille pattern dots-56) 	⠰ 	(letter prefix)
//3C 	< 	101001 	⠣ (braille pattern dots-126) 	⠣ 	gh
//3D 	= 	111111 	⠿ (braille pattern dots-123456) 	⠿ 	for
//3E 	> 	010110 	⠜ (braille pattern dots-345) 	⠜ 	ar
//3F 	? 	110101 	⠹ (braille pattern dots-1456) 	⠹ 	th 
//40 	@ 	010000 	⠈ (braille pattern dots-4) 	⠈ 	(accent prefix)
//41 	A 	100000 	⠁ (braille pattern dots-1) 	⠁ 	a
//42 	B 	101000 	⠃ (braille pattern dots-12) 	⠃ 	b
//43 	C 	110000 	⠉ (braille pattern dots-14) 	⠉ 	c
//44 	D 	110100 	⠙ (braille pattern dots-145) 	⠙ 	d
//45 	E 	100100 	⠑ (braille pattern dots-15) 	⠑ 	e
//46 	F 	111000 	⠋ (braille pattern dots-124) 	⠋ 	f
//47 	G 	111100 	⠛ (braille pattern dots-1245) 	⠛ 	g
//48 	H 	101100 	⠓ (braille pattern dots-125) 	⠓ 	h
//49 	I 	011000 	⠊ (braille pattern dots-24) 	⠊ 	i
//4A 	J 	011100 	⠚ (braille pattern dots-245) 	⠚ 	j
//4B 	K 	100010 	⠅ (braille pattern dots-13) 	⠅ 	k
//4C 	L 	101010 	⠇ (braille pattern dots-123) 	⠇ 	l
//4D 	M 	110010 	⠍ (braille pattern dots-134) 	⠍ 	m
//4E 	N 	110110 	⠝ (braille pattern dots-1345) 	⠝ 	n
//4F 	O 	100110 	⠕ (braille pattern dots-135) 	⠕ 	o
//50 	P 	111010 	⠏ (braille pattern dots-1234) 	⠏ 	p
//51 	Q 	111110 	⠟ (braille pattern dots-12345) 	⠟ 	q
//52 	R 	101110 	⠗ (braille pattern dots-1235) 	⠗ 	r
//53 	S 	011010 	⠎ (braille pattern dots-234) 	⠎ 	s
//54 	T 	011110 	⠞ (braille pattern dots-2345) 	⠞ 	t
//55 	U 	100011 	⠥ (braille pattern dots-136) 	⠥ 	u
//56 	V 	101011 	⠧ (braille pattern dots-1236) 	⠧ 	v
//57 	W 	011101 	⠺ (braille pattern dots-2456) 	⠺ 	w
//58 	X 	110011 	⠭ (braille pattern dots-1346) 	⠭ 	x
//59 	Y 	110111 	⠽ (braille pattern dots-13456) 	⠽ 	y
//5A 	Z 	100111 	⠵ (braille pattern dots-1356) 	⠵ 	z
//5B 	[ 	011001 	⠪ (braille pattern dots-246) 	⠪ 	ow
//5C 	\ 	101101 	⠳ (braille pattern dots-1256) 	⠳ 	ou
//5D 	] 	111101 	⠻ (braille pattern dots-12456) 	⠻ 	er
//5E 	^ 	010100 	⠘ (braille pattern dots-45) 	⠘ 	(currency prefix)
//5F 	_ 	010101 	⠸ (braille pattern dots-456) 	⠸ 	(contraction) 

Braille_ASCII = [
//Braille Vector	Comment	Braille Dots 	ASCII Hex 	ASCII Glyph 	Braille Meaning
[0,0,0,0,0,0],	//	000000 	20 	(space) 	(space)
[0,1,1,0,1,1],	//	011011 	21 	! 	the
[0,0,0,1,0,0],	//	000100 	22 	" 	(contraction)
[0,1,0,1,1,1],	//	010111 	23 	# 	(number prefix)
[1,1,1,0,0,1],	//	111001 	24 	$ 	ed
[1,1,0,0,0,1],	//	110001 	25 	% 	sh
[1,1,1,0,1,1],	//	111011 	26 	& 	and
[0,0,0,0,1,0],	//	000010 	27 	' 	'
[1,0,1,1,1,1],	//	101111 	28 	( 	of
[0,1,1,1,1,1],	//	011111 	29 	) 	with
[1,0,0,0,0,1],	//	100001 	2A 	* 	ch
[0,1,0,0,1,1],	//	010011 	2B 	+ 	ing
[0,0,0,0,0,1],	//	000001 	2C 	, 	(uppercase prefix)
[0,0,0,0,1,1],	//	000011 	2D 	- 	-
[0,1,0,0,0,1],	//	010001 	2E 	. 	(italic prefix)
[0,1,0,0,1,0],	//	010010 	2F 	/ 	st
[0,0,0,1,1,1],	//	000111 	30 	0 	”
[0,0,1,0,0,0],	//	001000 	31 	1 	,
[0,0,1,0,1,0],	//	001010 	32 	2 	;
[0,0,1,1,0,0],	//	001100 	33 	3 	:
[0,0,1,1,0,1],	//	001101 	34 	4 	.
[0,0,1,0,0,1],	//	001001 	35 	5 	en
[0,0,1,1,1,0],	//	001110 	36 	6 	!
[0,0,1,1,1,1],	//	001111 	37 	7 	( or )
[0,0,1,0,1,1],	//	001011 	38 	8 	“ or ?
[0,0,0,1,1,0],	//	000110 	39 	9 	in
[1,0,0,1,0,1],	//	100101 	3A 	: 	wh
[0,0,0,1,0,1],	//	000101 	3B 	; 	(letter prefix)
[1,0,1,0,0,1],	//	101001 	3C 	< 	gh
[1,1,1,1,1,1],	//	111111 	3D 	= 	for
[0,1,0,1,1,0],	//	010110 	3E 	> 	ar
[1,1,0,1,0,1],	//	110101 	3F 	? 	th 
[0,1,0,0,0,0],	//	010000 	40 	@ 	(accent prefix)
[1,0,0,0,0,0],	//	100000 	41 	A 	a
[1,0,1,0,0,0],	//	101000 	42 	B 	b
[1,1,0,0,0,0],	//	110000 	43 	C 	c
[1,1,0,1,0,0],	//	110100 	44 	D 	d
[1,0,0,1,0,0],	//	100100 	45 	E 	e
[1,1,1,0,0,0],	//	111000 	46 	F 	f
[1,1,1,1,0,0],	//	111100 	47 	G 	g
[1,0,1,1,0,0],	//	101100 	48 	H 	h
[0,1,1,0,0,0],	//	011000 	49 	I 	i
[0,1,1,1,0,0],	//	011100 	4A 	J 	j
[1,0,0,0,1,0],	//	100010 	4B 	K 	k
[1,0,1,0,1,0],	//	101010 	4C 	L 	l
[1,1,0,0,1,0],	//	110010 	4D 	M 	m
[1,1,0,1,1,0],	//	110110 	4E 	N 	n
[1,0,0,1,1,0],	//	100110 	4F 	O 	o
[1,1,1,0,1,0],	//	111010 	50 	P 	p
[1,1,1,1,1,0],	//	111110 	51 	Q 	q
[1,0,1,1,1,0],	//	101110 	52 	R 	r
[0,1,1,0,1,0],	//	011010 	53 	S 	s
[0,1,1,1,1,0],	//	011110 	54 	T 	t
[1,0,0,0,1,1],	//	100011 	55 	U 	u
[1,0,1,0,1,1],	//	101011 	56 	V 	v
[0,1,1,1,0,1],	//	011101 	57 	W 	w
[1,1,0,0,1,1],	//	110011 	58 	X 	x
[1,1,0,1,1,1],	//	110111 	59 	Y 	y
[1,0,0,1,1,1],	//	100111 	5A 	Z 	z
[0,1,1,0,0,1],	//	011001 	5B 	[ 	ow
[1,0,1,1,0,1],	//	101101 	5C 	\ 	ou
[1,1,1,1,0,1],	//	111101 	5D 	] 	er
[0,1,0,1,0,0],	//	010100 	5E 	^ 	(currency prefix)
[0,1,0,1,0,1]	//	010101 	5F 	_ 	(contraction)

];


// converts a char to a 6-position Braille Vector
function char2dict(str) =
	ord(str) >= 32 && ord(str) <= 95  ? Braille_ASCII[ord(str)-32] :
	echo("not a Braille ASCII letter");

// converts a string to a Braille Vector array
function str2vectordict(str, v=[], i=0) =
	i == len(str) ? v :
	str2vectordict(str, concat(v, [char2dict(str[i])]), i+1);
