#Declaring the values
declare -i COUNT=0
declare -i SCORE1=0
declare -i SCORE2=0

echo "Number Guessing game"

#Function to calculate absolute difference
absolute() {
    t=$1
    
    if [ $t -lt 0 ]
    then
        t=$(( $t*-1 ))
    fi
    return $t
}

while [ $COUNT -lt 10 ]
do
    R=$(($RANDOM%10+1))
    #echo $R
    read -p "Enter first number " inp1
    read -p "Enter second number " inp2
    echo "The correct guess is $R"
    
    d1=$(( $R - $inp1 ))
    d2=$(( $R - $inp2 ))
    
    absolute $d1
    d1=$?
    #echo $d1
    
    absolute $d2
    d2=$?
    #echo $d2
    
    if [ $d1 -lt $d2 ]
    then
        echo "Player 1 guess is more closer"
        ((SCORE1++))
    elif [ $d2 -lt $d1 ]
    then
        echo "Player 2 guess is more closer"
        ((SCORE2++))
    else
        echo "Score Remains Same"
    fi
    
    echo "Scores are: "
    echo "Player 1: $SCORE1"
    echo "Player 2: $SCORE2"
    
    ((COUNT++))
done

#Declaring the winner
if [ $SCORE1 -gt $SCORE2 ]
then
    echo "Player 1 won the game"
elif [ $SCORE2 -gt $SCORE2 ]
then
    echo "Player 2 won the game"
else
    echo "It is a tie"
fi
