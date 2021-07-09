#!/bin/bash
COND1="if"
COND2="case"
COND3="fi"
COND4="esac"
COND5="else"
BUC1="for"
BUC2="while"
BUC3="until"
BUC4="do"
BUC5="done"
OPAR1="\+"
OPAR2="\-"
OPAR3="\/\*"
OPAR4="\/"
OPAR5="\%"
OPAR6="\*\*"
OPAR7="\+\="
OPAR8="\-\="
OPAR9="\*\="
OPAR10="\/\="
OPAR11="\%\="
OPBOOL1="\<\<"
OPBOOL2="\>\>"
OPBOOL3="\<\<\="
OPBOOL4="\>\>\="
OPBOOL5="\&"
OPBOOL6="\|"
OPBOOL7="\^"
OPBOOL8="\!"
OPLOG1="\=\="
OPLOG2="\&\&"
OPLOG3="\|\|"
OPNUM1="\-eq"
OPNUM2="\-ge"
OPNUM3="\-gt"
OPNUM4="\-le"
OPNUM5="\-lt"
OPNUM6="\-ne"
i=0

echo ""
echo "Validando las condiciones..."
echo ""

#VALIDA CONDICIONES
if grep -q -E -w "$COND1|$COND2|$COND3|$COND4|$COND5" miscript.sh;
then
i=$((i+1))
echo "1. Tu script tiene condicionales. OK"
else
echo "1. Parece que faltan condicionales. X"
fi

#VALIDA LAS VARIABLES
if grep -q -E -w "VAR1|VAR2" miscript.sh;
then
i=$((i+1))
echo "2. Tu sciprt tiene variables. OK"
else
echo "2. Parece que faltan variables. X"
fi

#VALIDA LA ENTRADA DE TEXTO
if grep -q -E -w "read" miscript.sh 
then
i=$((i+1))
echo "3. Tu script cuenta con una entrada de texto. OK"
else
echo "3. Parece que falta la entrada de texto. X"
fi

#VALIDA OPERADORES
if grep -q -E -w "$OPAR1|$OPAR2|$OPAR3|$OPAR4|$OPAR5|$OPAR6|$OPAR7|$OPAR8|$OPAR9|$OPAR10|$OPAR11|$OPBOOL1|$OPBOOL2|$OPBOOL3|$OPBOOL4|$OPBOOL5|$OPBOOL6|$OPBOOL7|$OPBOOL8|$OPLOG1|$OPLOG2|$OPLOG3|$OPNUM1|$OPNUM2|$OPNUM3|$OPNUM4|$OPNUM5|$OPNUM6" miscript.sh;
then
i=$((i+1))
echo "4. Tu script cuenta con operadores. OK"
else
echo "4. Parece que faltan operadores. X"
fi

#VALIDA BUCLES
if grep -q -E -w "$BUC1|$BUC2|$BUC3|$BUC4|$BUC5" miscript.sh;
then  
i=$((i+1))
echo "5. Tu script tiene bucles. OK"
else
echo "5. Parece que faltan bucles. X"
fi

if [ $i == 5 ] 
then
echo ""
echo "Excelente, tu script cumple con todas las condiciones, tu flag es \"May the force be with you\"."
else
echo ""
echo "Aún no cumple con todas las condiciones"
fi
