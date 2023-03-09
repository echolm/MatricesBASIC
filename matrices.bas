rem Matrices
rem by EC Holm
rem written for bwBASIC

rem define matrices

arrRows = 25
arrCols = 25

rows = 2
cols = 2
dim A(arrCols,arrRows)
A(0,0) = cols: rem meta rows
A(0,1) = rows: rem meta cols
rows = 2
cols = 2
dim B(arrCols,arrRows)
B(0,0) = cols
B(0,1) = rows

dim C(arrRows,arrCols): rem answer array
dim P(arrRows,arrCols): rem to print array

kNum = 3: rem a number used in calculations

anstr$ = ""

rem print matrices

sub printMX()
	anstr$ = ""
	for y = 1 to P(0,1)
		for x = 1 to P(0,0)
			anstr$ = anstr$ + " " + str$(P(x,y))
		next x
		print anstr$
		anstr$ = ""
	next y
end sub

rem copy matrices routines

sub copyMXap()
	for y = 1 to A(0,1)
		for x = 1 to A(0,0)
			P(x,y) = A(x,y)
		next x
	next y
	P(0,0) = A(0,0)
	P(0,1) = A(0,1)
end sub

sub copyMXbp()
	for y = 1 to B(0,1)
		for x = 1 to B(0,0)
			P(x,y) = B(x,y)
		next x
	next y
	P(0,0) = B(0,0)
	P(0,1) = B(0,1)
end sub

sub copyMXcp()
	for y = 1 to C(0,1)
		for x = 1 to C(0,0)
			P(x,y) = C(x,y)
		next x
	next y
	P(0,0) = C(0,0)
	P(0,1) = C(0,1)
end sub

sub copyMXab()
	for y = 1 to A(0,1)
		for x = 1 to A(0,0)
			B(x,y) = A(x,y)
		next x
	next y
	B(0,0) = A(0,0)
	B(0,1) = A(0,1)
end sub

sub copyMXac()
	for y = 1 to A(0,1)
		for x = 1 to A(0,0)
			C(x,y) = A(x,y)
		next x
	next y
	C(0,0) = A(0,0)
	C(0,1) = A(0,1)
end sub

sub copyMXba()
	for y = 1 to B(0,1)
		for x = 1 to B(0,0)
			A(x,y) = B(x,y)
		next x
	next y
	A(0,0) = B(0,0)
	A(0,1) = B(0,1)
end sub

sub copyMXbc()
	for y = 1 to B(0,1)
		for x = 1 to B(0,0)
			C(x,y) = B(x,y)
		next x
	next y
	C(0,0) = B(0,0)
	C(0,1) = B(0,1)
end sub

sub copyMXca()
	for y = 1 to C(0,1)
		for x = 1 to C(0,0)
			A(x,y) = C(x,y)
		next x
	next y
	A(0,0) = C(0,0)
	A(0,1) = C(0,1)
end sub

sub copyMXcb()
	for y = 1 to C(0,1)
		for x = 1 to C(0,0)
			B(x,y) = C(x,y)
		next x
	next y
	B(0,0) = C(0,0)
	B(0,1) = C(0,1)
end sub

rem clear matrices routines

sub clearMXa()
	for y = 0 to 24
		for x = 0 to 24
			A(x,y) = 0
		next x
	next y
end sub

sub clearMXb()
	for y = 0 to 24
		for x = 0 to 24
			B(x,y) = 0
		next x
	next y
end sub

sub clearMXc()
	for y = 0 to 24
		for x = 0 to 24
			C(x,y) = 0
		next x
	next y
end sub

sub clearMXp()
	for y = 0 to 24
		for x = 0 to 24
			P(x,y) = 0
		next x
	next y
end sub

rem add 2 matrices

sub addMX()
	rem A + B = C
	if A(0,0) = B(0,0) and A(0,1) = B(0,1) then
		for y = 1 to A(0,1)
			for x = 1 to A(0,0)
				C(x,y) = A(x,y) + B(x,y)
			next x
		next y
		C(0,0) = A(0,0)
		C(0,1) = A(0,1)
	else
		print "Cannot add the matrices. They are of different sizes."
	end if
end sub

rem subtract 2 matrices

sub subtractMX()
	rem A - B = C
	if A(0,0) = B(0,0) and A(0,1) = B(0,1) then
		for y = 1 to A(0,1)
			for x = 1 to A(0,0)
				C(x,y) = A(x,y) - B(x,y)
			next x
		next y
		C(0,0) = A(0,0)
		C(0,1) = A(0,1)
	else
		print "Cannot subtract the matrices. They are of different sizes."
	end if
end sub

rem add a constant to a matrices

sub addNumMX()
	rem A + kNum = C
	for y = 1 to A(0,1)
		for x = 1 to A(0,0)
			C(x,y) = A(x,y) + kNum
		next x
	next y
	C(0,0) = A(0,0)
	C(0,1) = A(0,1)
end sub

rem subtract a constant to a matrices

sub subtractNumMX()
	rem A - kNum = C
	for y = 1 to A(0,1)
		for x = 1 to A(0,0)
			C(x,y) = A(x,y) - kNum
		next x
	next y
	C(0,0) = A(0,0)
	C(0,1) = A(0,1)
end sub

rem multiply 2 matrices

sub multiplyMX()
	rem A * B = C
	rem variables
	anum = 0: rem a number variable used for calculation puposes
	ax = 1
	ay = 1
	bx = 1
	by = 1
	cx = 1
	cy = 1
	if A(0,1) = B(0,0) then
		rem row by colum
		for ay = 1 to A(0,1)
			for bx = 1 to B(0,0)
				for j = 1 to A(0,0)
					anum = anum + A(j,ay) * B(bx,j)
				next j
				C(cx,cy) = anum
				if cx + 1 > B(0,0) then
					cx = 1
					if cy + 1 > A(0,1) then
						cy = 1
					else
						cy = cy + 1
					end if
				else
					cx = cx + 1
				end if
				anum = 0
			next bx
		next ay
		C(0,0) = B(0,0)
		C(0,1) = A(0,1)
	else
		print "Cannot multiply. The columns of A matrix do not match the rows of B matrix."
	end if
end sub

rem multipy a constant to a matrices

rem transpose

rem inverse

rem main

A(1,1)=1
A(1,2)=2
A(2,1)=3
A(2,2)=4

B(1,1)=10
B(1,2)=20
B(2,1)=30
B(2,2)=40

print "Matrix A"
call copyMXap()
call printMX()

call clearMXp()

print "Matrix B"
call copyMXbp()
call printMX()

call clearMXp()

print "Adding A and B Matrices"
call addMX()
call copyMXcp()
call printMX()

call clearMXp()

print "Subtracting A and B Matrices"
call clearMXc()
call subtractMX()
call copyMXcp()
call printMX()

call clearMXp()

print "Adding " + str$(kNum) + " to A Matrix"
call clearMXc()
call addNumMX()
call copyMXcp()
call printMX()

call clearMXp()

print "Subtracting " + str$(kNum) + " to A Matrix"
call clearMXc()
call subtractNumMX()
call copyMXcp()
call printMX()

call clearMXp()

print "multiplying A Matrix to B Matrix"
call clearMXc()
call multiplyMX()
call copyMXcp()
call printMX()

