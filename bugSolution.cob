01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC X(100). 
01  WS-LENGTH PIC 9(4) VALUE 0. 

PROCEDURE DIVISION.
    MOVE "Hello" TO WS-AREA-1.
    INSPECT WS-AREA-1 TALLYING WS-LENGTH FOR CHARACTERS.
    IF WS-LENGTH > LENGTH OF WS-AREA-2 THEN
        DISPLAY "Error: Data too long for WS-AREA-2" 
        STOP RUN
    END-IF.
    MOVE WS-AREA-1 TO WS-AREA-2.
    DISPLAY WS-AREA-2.
    STOP RUN.