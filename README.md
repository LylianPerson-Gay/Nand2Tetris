# Nand2Tetris
My job for the Nand2Tetris project  
Here is also my notes and helpfull tutorials, enjoy ! 

## Project 01 : Boolean Algebra

' is for Not
\* is for And  
\+ is for Or  

### Boolean Identities

* Identity  
						a + 0 = a  
						a * 1 = a  
* Forgot the name  
						a + 1 = 1  
						a * 0 = 0  
* Idempotence  
						a + a = a  
						a * a = a  
* Complementation  
						a + a' = a  
						a * a' = 0  
* Distributivity  
						a + (b * c) = (a + b) * (a + c)  
						a * (b + c) = (a * b) + (a * c)  
* Associativity  
						a + (b + c) = (a + b) + c = a + b + c  
						a * (b * c) = (a * b) * c = a * b * c  
* De Morgan's Laws  
						(a * b)' = a' + b'  
						(a + b)' = a' * b'  
* Others  
						a'' = a  
						a + (a * b) = a  
						a + (a' * b) = a + b  
						a * (a + b) = a  
						(a + b) * (a + b') = a  

### Truth Table to Boolean expression
* **Product term**  
A **product term** is a conjunction of litterals, where each litterals is either a variable or is negation.  
Product terms is call like this because of the similarity of the operator AND and the multiplication.  

* **Minterm**  
A product term in wich each variable appears once (in Not or complemented form).  A Boolean function can be expressed as a sum of **minterms**.  
For calculs all minterms of a boolean expression we use 2 power number of entries.  