;program for 2 loops using AND GATE/OR GATE/XOR GATE.

Dosseg
.model small 
.stack 100h
.data
.code

main proc
mov cx,6
mov bl,011B
and bl,111B        ;USING AND GATE => 1*1=1, 1*0=0, 0*1=0, 0*0=0
add bl,48

X1:
add bl,1
mov dl,bl
mov ah,2
int 21h
Loop X1

mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h            ;RECENT 6 LINES FOR ENTER KEY

mov cx,6
mov bl,100B                               
xor bl,101B        ;USING XOR GATE => 1⊕0=1, 0⊕1=1, 1⊕1=0, 0⊕0=0          
add bl,48                            

X2:
add bl,1
mov dl,bl
mov ah,2
int 21h
Loop X2

mov ah,4ch         ;FOR EXIT THE PROGRAM
int 21h
main endp 
end main








