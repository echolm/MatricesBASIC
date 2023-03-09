# MatricesBASIC
Marices in BASIC (Math Matrix) subs written in BASIC computer language

This is a work in progress.

Matrices.bas is a set of subs in BASIC to allow other programmers to use for matrices manipulation how they seem fit. It's currently written in Bywater BASIC.

I chose to use the arrays like a sheet of paper. That is allocate space to work on. This allows for the data to be the defacto matrix much like one would write a matrix on a piece of paper. The reason for this is that there are many limitations to the BASIC language. So to this techinque will allow for operations like transpose and to copy a matrix from one array to another. We can have matrices of different shapes while the arrays are all one standard shape just as long as the matrices do not exceed the limits of the arrays. So the array needs to be defined large enough to accomodate all the different matrices used.

Of course, this might seem like waisted space and bad programming practices. Yet the operations seem to require such resource use and with today's computers we have the resouces to use.

Matrix and Arrays

This program has 4 arrays: A, B, C, and P. You can add more if you wish, but please keep them all the same size and dimensions. The array size is governed by arrRows and arrCols variables. You can set these as you wish but please keep these large enough for your calculations. You write or input or load your matrices in arra A and B. Array C is the result array after a calculation. Array P is the print array from where matrices get printed to the screen. 

The arrays not only hold the Matrices but also the dimensions of the matrices. Cell 0,0 holds the columns (x) and cell 0,1 holds rows (y). The matrices always start in cell 1,1. Unfortunately, it's the nature of arrays that the first cell reference is equivelent to the columns in a matrix and the second is equivelent to the rows. In math, a Matrix cell reference has the row first and the columns second. So, a Matrix cell [1,2] is A(2,1) in the array. So, the reference is backwards in the code. 

Please feel free to use and explore at your own risk.
