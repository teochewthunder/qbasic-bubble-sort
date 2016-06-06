PRINT "T___T's BUBBLE SORT"
INPUT "What is the size of your list"; sortlistsize

DIM sortlist(sortlistsize)
FOR i = 0 TO (sortlistsize - 1) STEP 1
    INPUT "Please enter Number: ", sortlist(i)
NEXT i

DIM col, row

col = 2
row = 2

DIM current_fc, current_bc
current_fc = 15
current_bc = 4

DIM unsorted_fc, unsorted_bc
unsorted_fc = 0
unsorted_bc = 14

DIM sorted, passes, swaps, currentpos, temp, totalswaps
sorted = 0
passes = 0
swaps = 0
totalswaps = 0
currentpos = 0

COLOR 0, 0
CLS

WHILE sorted = 0
    SLEEP 2
    LOCATE row, col

    FOR i = 0 TO (sortlistsize - 1) STEP 1
        IF i = currentpos OR currentpos + 1 = i THEN
            COLOR current_fc, current_bc
        ELSE
            COLOR unsorted_fc, unsorted_bc
        END IF

        PRINT sortlist(i);
        COLOR 0, 0
        PRINT " ";
    NEXT i

    IF sortlist(currentpos) > sortlist(currentpos + 1) THEN
        temp = sortlist(currentpos)
        sortlist(currentpos) = sortlist(currentpos + 1)
        sortlist(currentpos + 1) = temp

        swaps = swaps + 1

        SLEEP 1

        LOCATE row + 1, col
        COLOR 14, 0
        PRINT "Swapping ";
        PRINT temp;
        PRINT " with ";
        PRINT sortlist(currentpos);
        PRINT "...";
    END IF

    LOCATE row, col

    FOR i = 0 TO (sortlistsize - 1) STEP 1
        IF i = currentpos OR currentpos + 1 = i THEN
            COLOR current_fc, current_bc
        ELSE
            COLOR unsorted_fc, unsorted_bc
        END IF

        PRINT sortlist(i);
        COLOR 0, 0
        PRINT " ";
    NEXT i


    LOCATE row + 2, col
    COLOR 14, 0
    PRINT "Passes: ";
    PRINT passes;
    PRINT "Swaps: ";
    PRINT swaps;


    currentpos = currentpos + 1

    IF currentpos = sortlistsize - 1 THEN
        currentpos = 0
        passes = passes + 1

        IF swaps = 0 THEN
            sorted = 1
        ELSE
            totalswaps = totalswaps + swaps
        END IF

        swaps = 0
    END IF
WEND


COLOR 0, 0
CLS
LOCATE row, col

FOR i = 0 TO (sortlistsize - 1) STEP 1
    COLOR unsorted_fc, unsorted_bc
    PRINT sortlist(i);
    COLOR 0, 0
    PRINT " ";
NEXT i

LOCATE row + 2, col
COLOR 14, 0
PRINT "SORTED WITH PASSES: ";
PRINT passes;
LOCATE row + 3, col
PRINT "TOTAL SWAPS: ";
PRINT totalswaps; s
