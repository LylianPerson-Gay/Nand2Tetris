// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


// while (1)
//	int		color = (!KBD) ? 0 : -1;
//	for (int i = 0; i < 8192; i++)
//		int ptrScreen = SCREEN + i;
//		*ptrScreen = color;

(BEGIN)
	// int i = 0
	@i
	M = 0

	// int	color = (!KBD) ? 0 : -1;
	@KBD
	D = M
	@IFNOINPUT
	D; JEQ

	@color
	M = -1
	@LOOP
	0; JMP
(IFNOINPUT)
	@color
	M = 0
	
(LOOP)
	// for (i < 8192)
	@8192
	D = A
	@i
	D = D - M
	@BEGIN
	D; JEQ

	// ptrScreen = SCREEN + i;
	@SCREEN
	D = A
	@i
	D = M + D
	@ptrScreen
	M = D

	// *ptrScreen = color
	@color
	D = M
	@ptrScreen
	A = M
	M = D

	// i++;
	@i
	M = M + 1

	@LOOP
	0; JMP