.MODEL SMALL
.STACK 100H
.DATA
msg DB "!!!!!!!!!!!!!!!!THE END!!!!!!!!!!!!!!!!!!!!!$"
msg2 DB "Would you like to continue(Y/n)?$"
r DB "Right answer$"
w DB "WRONG answer$"
@1 DB "HTML TEST FOR Develpors$"
@2 DB "ENTER (S) to start test$"
@3 DB "ENTER (Q) to exit $"
@4	DB "SOFTWARE BY:MAKWARE SOFTWARE PVT(L.T.D)$"
@5	DB "MADE BY:MUHAMMAD AHSAN$"
@6	db "MADE IN PAKISTAN$"
countq DB "0$"
countr DB "O$"
a1 DB "1)What does HTML stands for?$"
a2 DB "A.hypertextmarkuplanguage  B.hometoolmarkup language$" 
a3 DB "C.homogenous text makeup language   D.hyper and text movie language$"
b1 DB "2)Choose the correct HTML element for the largest heading:$"
b2 DB "A.<h1>     B.<h6>         C.none        D.<heading>$"
c1 DB "3)What is the correct HTML element for inserting a line break?$" 
c2  DB "A.<bl>  B.<lb>   C.<break>    D.<br>$"
d1	DB "4)What is the correct HTML for adding a background color?$"
d2	DB "A.	<body style=background-color:yellow>			B.<bg=yellow>$"
d3  DB "C.<background>yellow</background>                   D.<body bg=yellow>$"
e1 DB "5)Choose the correct HTML element to define important text$"
e2 DB "A.<strong>	B.<s>	C.<i>	D.<b>$"
f1 DB "6)Choose the correct HTML element to define emphasized text?$"
f2 DB "A.<empheazed>	B.<em>		C.<i>		D.<italic>$"
g1 DB "7)Which character is used to indicate an end tag?$"
g2 DB "A.<\t	B.*		C.<//>		D.</>$"
H1 DB "8)How can you open a link in a new tab/browser window?$"
H2 DB "A.<a href='url' target='_blank'>		B.<a href='url' new>		C.<a href='url' target='_newtab'>	D.<a href=new target=_blank>$"
i1 DB "9)What is the correct HTML for creating a hyperlink?$"
i2 DB "A.<a>http://www.example.com</a>	B.<a name=http:www.w3schools.example.com</a>	C.<a href=http:www.example.com>example</a>	D.<a=www.example.com/>$"
j1 DB "10)Which of these elements are all <table> elements?$"
j2 DB "A.<thead><body><tr>	B.<table><tr><tt>	C.<table><tr><td>		D.<table><tr><tfoot>$"
k1	DB "11)How can you make a numbered list?$"
k2 DB 	"A.<list>	B.<dl>	C.<ol>		D.<ul>$"
l1 DB "12)How can you make a bulleted list?$"
l2 DB "A.<list>	B.<dl>	C.<ol>	D.<ul>$"
m1 DB "13)Inline elements are normally displayed without starting a new line?$"
m2 DB "A.False	B.Not For ALL	C.True	D.Non of above$"
n1 DB "14)What is the correct HTML for making a checkbox?$"
n2 DB "A.<input='check box'> B.<checkbox> C.<check>	D.<input='checked the box'>$"
o1 DB "15)What is the correct HTML for making a text input field?$"
o2 DB "A.<textfield>				B.<input type='Text'>			C.<inputTextField> 		D.<textinput type='text'>$"
p1 DB "16)What is the correct HTML for making a drop-down list?$"
p2 DB "A.<input type='dropdown'>	B.<select>	C.<drop down list>	D.<inputdropdown='list'>$"
@q1 DB "17)What is the correct HTML for making a text area?$"
@q2 DB "A.<input type='text area'>	B.<type='Text Area'>	C.<textarea>			D.<inputtextarea>$"
r1 DB "18)What is the correct HTML for inserting an image?$"
r2 DB "A.<img alt='MyImage'>image.gif</img>	B.<img href='image.gif' alt='MyImage'>			C.<image src='image.gif' alt='MyImage'>				D.<img src='image.gif' alt='MyImage'>$"
s1 DB "19) What is the correct HTML for inserting a background image?$"
s2 DB "A.<body style=bgcolor>		B.<body bgcolor.gif>		C.<body bg='background.gif'>		D.<body style='background-image:url(background.gif)'>$"
t1	DB"20)An <iframe> is used to display a web page within a web page?$"
t2 DB "A.TRUE	B.FALSE	C.There is no such thing as an <iframe>	D.Not for all cases$"
u1 DB "21)HTML comments start with <!-- and end with -->?$"
u2 DB "A.No tag include! mark	B.False	C.True	D.Non of above$"
v1	DB "22)Block elements are normally displayed without starting a new line.?"
v2 DB "A.TRUE	B.No elements are Block level	C.Non of above	D.FALSE$"
w1 DB "23)Which of the following elements includes block level elements?$"
w2 DB "A.<h1>	B.<div>		C.<img>		D.<i>$"
x1 DB "24)Which HTML  element defines a section that is quoted from another source.?$"
x2 DB "A.<blak quote>	B.<block quote>	C.<q>	D.<p>$"
y1 DB "25)Choose the correct HTML tag to make a text bold?$"
y2  DB "A.<bold>	B.<bo>	C.Non of above	D.<b>$"
z1 DB "26)The <i> tag makes text... ?$"
z2 DB "A.Bold	B.inline	C.italic	D.Non of above$"
qa7 DB "27)Which tag is used for smallest heading:$"
qb7 DB "A.<h6>	B.<sheading>	C.<head>	D.<h1>$"
qa8 DB "28)The <title> tag belongs where in your HTML ?$"
qb8 DB "A.head 	B.arm	C.body	D.non of above$"
qa9 DB "29)Choose the correct HTML element for the  password input?$"
qb9 DB "A.<input type='password'>	B.<password>	C.none	D.<passcodeinput>$"
qa0	DB "30)What is the correct HTML element for inserting a horizontal line?$"
qb0 DB "A.<bl>	B.<br>	C.<break>	D.<hr>$"
sta1 DB "RESULT STATUS:$"
sta2 DB "COngratualtions! you're PASSED with good grades$"
sta3 DB "you're passed ,keep it up!$"
sta4 DB "PASSED but Satisfactory result$"
sta5 DB "You are failed better luck next time$"
att DB "total questions:$"
per DB "percentage is:$"

.CODE
MAIN PROC
@mainhome:
MOV AX,@DATA
MOV DS,AX

call clear_screen

call chline
call chline

call star
call chline
CALL tab
call tab

MOV AH,9
MOV DX,OFFSET @1
INT 21H
call chline
call star

call chline
call chline
call tab
call tab

MOV AH,9
MOV DX,OFFSET @2
INT 21H


call chline
call chline
call tab
call tab
MOV AH,9
MOV DX,OFFSET @3
INT 21H


call chline
call chline

call star
call chline
call chline
call chline
call chline 
call tab
call tab 

MOV AH,9
MOV DX,OFFSET @4
INT 21H
call chline
call tab
call tab
MOV AH,9
MOV DX,OFFSET @5
INT 21H
call chline
call tab
call tab 
MOV AH,9
MOV DX,OFFSET @6
INT 21H
MOV AH,1
INT 21h

MOV bl,al
CMP bl,'s'
JE @start
CMP bl,'S'
JE @start
CMP bl,'q'
JE @exit
CMP bl,'Q'
JE @exit
@start:
call clear_screen
;question#1

call chline

add countq,1
MOV AH,9
MOV DX,OFFSET a1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET a2
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET a3
INT 21H

call chline

MOV AH,1
INT 21h
MOV bl,al
CMP bl,'A'
JE @r1
CMP bl,'a'
JE @r1
CMP bl,'Q'
JE @exit
jmp @w1

@r1:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q2 
@w1:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q2

q2:

call chline
ADD countq,1

;question#2

MOV AH,9
MOV DX,OFFSET b1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET b2
INT 21H

call chline

MOV AH,1
INT 21h
MOV bl,al
CMP bl,'A'
JE @r2
CMP bl,'a'
JE @r2
CMP bl,'Q'
JE @exit
jmp @w2
@r2:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q3 
@w2:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q3


q3:
call chline
ADD countq,1
;question#3

MOV AH,9
MOV DX,OFFSET c1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET c2
INT 21H

call chline

MOV AH,1
INT 21h
MOV bl,al
CMP bl,'D'
JE @r3
CMP bl,'d'
JE @r3
CMP bl,'Q'
JE @exit
jmp @w3
@r3:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q4 
@w3:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q4


q4:
call chline
ADD countq,1
;question#4

MOV AH,9
MOV DX,OFFSET d1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET d2
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET d3
INT 21H

call chline

MOV AH,1
INT 21h
MOV bl,al
CMP bl,'a'
JE @r4
CMP bl,'A'
JE @r4
CMP bl,'Q'
JE @exit
jmp @w4
@r4:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q5 
@w4:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q5
q5:
call clear_screen
ADD countq,1
call chline

;question#5

MOV AH,9
MOV DX,OFFSET e1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET e2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'a'
JE @r5
CMP bl,'A'
JE @r5
CMP bl,'Q'
JE @exit
jmp @w5
@r5:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q6 
@w5:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q6
q6:

call chline
ADD countq,1

;question#6

MOV AH,9
MOV DX,OFFSET f1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET f2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'b'
JE @r6
CMP bl,'B'
JE @r6
CMP bl,'Q'
JE @exit
jmp @w6
@r6:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q7 
@w6:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q7
q7:
call chline
ADD countq,1

;question#7

MOV AH,9
MOV DX,OFFSET g1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET g2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'D'
JE @r7
CMP bl,'d'
JE @r7
CMP bl,'Q'
JE @exit
jmp @w7
@r7:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q8 
@w7:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q8
q8:
call chline
ADD countq,1

;question#8

MOV AH,9
MOV DX,OFFSET H1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET H2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'D'
JE @r8
CMP bl,'d'
JE @r8
CMP bl,'Q'
JE @exit
jmp @w8
@r8:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q9 
@w8:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q9
q9:

call chline
ADD countq,1


;question#9

MOV AH,9
MOV DX,OFFSET i1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET i2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'C'
JE @r9
CMP bl,'c'
JE @r9
CMP bl,'Q'
JE @exit
jmp @w9
@r9:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q10
@w9:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q10
q10:

call chline
ADD countq,1

;question#10

MOV AH,9
MOV DX,OFFSET j1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET j2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'C'
JE @r10
CMP bl,'c'
JE @r10
CMP bl,'Q'
JE @exit
jmp @w10
@r10:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q11
@w10:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q11
q11:
call clear_screen
ADD countq,1

;question#11

MOV AH,9
MOV DX,OFFSET k1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET k2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'C'
JE @r11
CMP bl,'c'
JE @r11
CMP bl,'Q'
JE @exit
jmp @w11
@r11:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q12
@w11:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q12
q12:
call chline
ADD countq,1

;question#12

MOV AH,9
MOV DX,OFFSET l1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET l2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'d'
JE @r12
CMP bl,'D'
JE @r12
CMP bl,'Q'
JE @exit
jmp @w12
@r12:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q13
@w12:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q13
q13:
ADD countq,1
call chline
;question#13

MOV AH,9
MOV DX,OFFSET m1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET m2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'C'
JE @r13
CMP bl,'c'
JE @r13
CMP bl,'Q'
JE @exit
jmp @w13
@r13:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q14
@w13:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q14
q14:

ADD countq,1
call chline
;question#14

MOV AH,9
MOV DX,OFFSET n1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET n2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'A'
JE @r14
CMP bl,'a'
JE @r14
CMP bl,'Q'
JE @exit
jmp @w14
@r14:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q15
@w14:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q15
q15:
ADD countq,1
call chline
;question#15

MOV AH,9
MOV DX,OFFSET o1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET o2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'b'
JE @r15
CMP bl,'B'
JE @r15
CMP bl,'Q'
JE @exit
jmp @w15
@r15:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q16
@w15:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q16
q16:

ADD countq,1
call chline
;question#16

MOV AH,9
MOV DX,OFFSET p1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET p2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'b'
JE @r16
CMP bl,'B'
JE @r16
CMP bl,'Q'
JE @exit
jmp @w16
@r16:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q17
@w16:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q17
q17:

ADD countq,1
call chline
;question#17

MOV AH,9
MOV DX,OFFSET @q1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET @q2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'c'
JE @6r1
CMP bl,'C'
JE @6r1
CMP bl,'Q'
JE @exit
jmp @6w1
@6r1:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q18
@6w1:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q18
q18:
call clear_screen
ADD countq,1
call chline
;question#18

MOV AH,9
MOV DX,OFFSET r1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET r2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'d'
JE r18
CMP bl,'D'
JE r18
CMP bl,'Q'
JE @exit
jmp w18
r18:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q19
w18:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q19
q19:
ADD countq,1
call chline
;question#19

MOV AH,9
MOV DX,OFFSET s1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET s2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'c'
JE r19
CMP bl,'C'
JE r19
CMP bl,'Q'
JE @exit
jmp w19
r19:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q20
w19:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q20
q20:
ADD countq,1
call chline
;question#20

MOV AH,9
MOV DX,OFFSET t1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET t2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'a'
JE r20
CMP bl,'A'
JE r20
CMP bl,'Q'
JE @exit
jmp w20
r20:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q21
w20:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q21
q21:
ADD countq,1
call chline
;question#21

MOV AH,9
MOV DX,OFFSET u1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET u2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'c'
JE r21
CMP bl,'C'
JE r21
CMP bl,'Q'
JE @exit
jmp w21
r21:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q22
w21:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q22
q22:
ADD countq,1
call chline
;question#22

MOV AH,9
MOV DX,OFFSET v1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET v2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'b'
JE r22
CMP bl,'B'
JE r22
CMP bl,'Q'
JE @exit
jmp w22
r22:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q23
w22:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q23
q23:
call clear_screen
ADD countq,1
call chline
;question#23

MOV AH,9
MOV DX,OFFSET w1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET w2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'b'
JE r23
CMP bl,'B'
JE r23
CMP bl,'Q'
JE @exit
jmp w23
r23:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q24
w23:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q24

q24:
ADD countq,1
call chline
;question#24

MOV AH,9
MOV DX,OFFSET x1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET x2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'b'
JE r24
CMP bl,'B'
JE r24
CMP bl,'Q'
JE @exit
jmp w24
r24:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q25
w24:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q25
q25:
ADD countq,1
call chline
;question#25

MOV AH,9
MOV DX,OFFSET y1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET y2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'d'
JE r25
CMP bl,'D'
JE r25
CMP bl,'Q'
JE @exit
jmp w25
r25:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q26
w25:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q26
q26:
ADD countq,1
call chline
;question#26

MOV AH,9
MOV DX,OFFSET z1
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET z2
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'c'
JE r26
CMP bl,'C'
JE r26
CMP bl,'Q'
JE @exit
jmp w26
r26:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q27
w26:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q27
q27:
ADD countq,1
call chline
call chline
;question#27

MOV AH,9
MOV DX,OFFSET qa7
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET qb7
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'a'
JE r27
CMP bl,'A'
JE r27
CMP bl,'Q'
JE @exit
jmp w27
r27:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q28
w27:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q28
q28:
call clear_screen
ADD countq,1
call chline
call chline
;question#28

MOV AH,9
MOV DX,OFFSET qa8
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET qb8
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'a'
JE r28
CMP bl,'A'
JE r28
CMP bl,'Q'
JE @exit
jmp w28
r28:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q29
w28:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q29
q29:

ADD countq,1
call chline
call chline
;question#29

MOV AH,9
MOV DX,OFFSET qa9
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET qb9
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'a'
JE r29
CMP bl,'A'
JE r29
CMP bl,'Q'
JE @exit
jmp w29
r29:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp q30
w29:

call chline

MOV ah,9
MOV DX,offset w
INT 21h
Jmp q30
q30:

ADD countq,1
call chline
call chline
;question#30

MOV AH,9
MOV DX,OFFSET qa0
INT 21H

call chline

MOV AH,9
MOV DX,OFFSET qb0
INT 21H

call chline


MOV AH,1
INT 21h
MOV bl,al
CMP bl,'d'
JE r30
CMP bl,'D'
JE r30
CMP bl,'Q'
JE @exit
jmp w30
r30:
ADD countr,1

call chline

MOV ah,9
MOV DX,offset r
INT 21h
Jmp @exit
w30:

call chline

MOV ah,9
MOV DX,offset w
INT 21h


@exit:
call clear_screen

SUB countr,31
call chline
CALL chline
call star 
call tab
call tab

MOV AH,9
mov dx,offset msg 
INT 21h

call chline 
call chline
call star
call tab
call tab
MOV AH,9
MOV DX,offset r
INT 21h

MOV AH,2
MOV dl,':'
INT 21h

MOV Ax,0
CMP countr,'9'
JLE @if
JG @else
@if:
MOV AH,9
MOV DX,offset countr
INT 21h
JMP @status
@else:

CMP countr,':'
JE ten
CMP countr,';'
JE Ele
CMP countr,'<'
JE twe
CMP countr,'='
JE thi
CMP countr,'>'
JE @for
CMP countr,'?'
JE fif
CMP countr,'@'
JE six
CMP countr,'A'
JE sev
CMP countr,'B'
JE eig
CMP countr,'C'
JE nin
CMP countr,'D'
JE t20
;21
CMP countr,'E'
JE t21
CMP countr,'F'
JE t22
CMP countr,'G'
JE t23
CMP countr,'H'
JE t24
CMP countr,'I'
JE t25
CMP countr,'J'
JE t26
CMP countr,'K'
JE t27
CMP countr,'L'
JE t28
CMP countr,'M'
JE t29
CMP countr,'N'
JE t30
ten:

MOV al,10
call OUTDEC
JMP @status

Ele:

MOV al,11
CALL OUTDEC
JMP @status
twe:

MOV al,12
CALL OUTDEC
JMP @status
thi:

MOV al,13
CALL OUTDEC
JMP @status

@for:

MOV al,14
call OUTDEC
JMP @status
fif:

MOV al,15
call OUTDEC
JMP @status

six:

MOV al,16
call OUTDEC
JMP @status

sev:

MOV dl,17
call OUTDEC
JMP @status

eig:

MOV dl,18
call OUTDEC
JMP @status

nin:

MOV dl,19
call OUTDEC
JMP @status

t20:
MOV dl,20
call OUTDEC
JMP @status
;t21
t21:

MOV al,21
call OUTDEC
JMP @status

t22:

MOV al,22
CALL OUTDEC
JMP @status
t23:

MOV al,23
CALL OUTDEC
JMP @status
t24:

MOV al,24
CALL OUTDEC
JMP @status

t25:

MOV al,25
call OUTDEC
JMP @status

t26:

MOV al,26
call OUTDEC
JMP @status

t27:

MOV al,27
call OUTDEC
JMP @status

t28:

MOV dl,28
call OUTDEC
JMP @status

t29:

MOV dl,29
call OUTDEC
JMP @status

t30:

MOV dl,30
call OUTDEC
JMP @status

@status:
call chline
call chline
call chline
call tab
call tab 
;total questions
MOV AH,9
MOV DX,offset att
INT 21h

;30 question
MOV AH,0
MOV al,30
call OUTDEC

call chline
call chline
call chline
call tab
call tab

MOV AH,9
MOV DX,offset per
INT 21h
;dividend is countr=*answer

;mov al, countr ; divident
 ;   div num   
;	mov dx,0
;	mov bx,0
;	mov bl,al
;	mov al,bl
;call OUTDEC


;print al (ie ;obt/tot)


;multiply by 100
;MOV BH,0
;MOV BL,100
;MUL BL

;SUB AL,48

;MOV dX,0
;MOV DX,AX

;mov ah,0
;moV AL,DL
;CALL OUTDEC
MOV Ah,0
CMP countr,'0'
je @p0
CMP countr,'3'
jge @p1
cmp countr,'6'
jge @p2
cmp countr,'9'
jge @p3
CMP countr,'<'
jge @p4
CMP countr,'?'
jge @p5
cmp countr,'B'
jge @p6
cmp countr,'E'
jge @p7
CMP countr,'H'
jge @p8
CMP countr,'K'
jge @p9
cmp countr,'N'
jge @pa

@p0:
mov Al,0
CALL OUTDEC
jmp @end
@p1:
mov al,10
call OUTDEC
jmp @end
@p2:
mov Al,20
CALL OUTDEC
jmp @end
@p3:
mov al,30
call OUTDEC
jmp @end
@p4:
mov Al,40
CALL OUTDEC
jmp @end
@p5:
mov al,50
call OUTDEC
jmp @end
@p6:
mov Al,60
CALL OUTDEC
jmp @end
@p7:
mov al,70
call OUTDEC
jmp @end
@p8:
mov Al,80
CALL OUTDEC
jmp @end
@p9:
mov al,90
call OUTDEC
jmp @end
@pa:
mov al,100
call OUTDEC
jmp @end
@end:

mov ah,2
mov dl,'%'
int 21h
call chline
call chline
call chline
call tab 
call tab

mov ah,9
mov dx,offset sta1
int 21h

CMP countr,'0'
je @failed
CMP countr,'3'
jle @failed
cmp countr,'6'
jle @satisfactory
cmp countr,'9'
jle @satisfactory
CMP countr,'<'
jle @satisfactory
CMP countr,'?'
jle @satisfactory
cmp countr,'B'
jle @passed
cmp countr,'E'
jle @passed
CMP countr,'H'
jle @great
CMP countr,'K'
jle @great
cmp countr,'N'
jge @great
@great:
MOV AH,9
MOV DX,offset sta2
int 21h
jmp @pro
@passed:
MOV AH,9
MOV DX,offset sta3
int 21h
jmp @pro
@satisfactory:
MOV AH,9
MOV DX,offset sta4
int 21h
jmp @pro
@failed:
MOV AH,9
MOV DX,offset sta5
int 21h
jmp @pro

@pro:
call chline
call star
call star
call chline
call tab 
call tab
MOV AH,9
mov dx,offset msg2
INT 21h
MOV AH,1
INT 21h
CMp al,'Y'
JE @mainhome
CMP al,'y'
JE @mainhome
JNE @while
@while:
MOV ah,4ch
INT 21h
MAIN ENDP
chline proc
		MOV AH,2
		MOV DL,13
		INT 21h
		MOV DL,10
		INT 21h
		ret
chline ENDP

clear_screen proc near
        mov ah,0
        mov al,3
        int 10h        
        ret
clear_screen endp
tab PROC 
mov ah,2
mov dl,9
int 21h
RET
tab endp


OUTDEC PROC
  PUSH AX
  PUSH BX
  PUSH CX
  PUSH DX
  
  MOV CX,0
  CMP AX,0
  JGE @ELSE
  PUSH AX
  MOV AH,2
  MOV DL,'-'
  INT 21h
  POP AX
  NEG AX
  @ELSE:
  MOV BX,10
  MOV DX,0
  DIV BX
  PUSH DX
  INC CX
  CMP AX,0
  JNZ @ELSE
  
  MOV AH,2
  
  PRINT_LABEL:
  POP DX
  ADD DX,48
  INT 21h
  LOOP PRINT_LABEL
  
  POP DX
  POP CX
  POP BX
  POP AX
  
  RET
  OUTDEC ENDP
star PROC
MOV AH,2
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
MOV AH,2
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
MOV AH,2
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
MOV AH,2
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'
int 21h
mov dl,'*'


RET
star ENDP
  ;END OF PROJECT
END MAIN