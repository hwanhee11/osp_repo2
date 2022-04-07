#!/bin/bash
echo "project management in github"

num1=$(<num1.txt)
num2=$(<num2.txt)
arr[0]=num1
arr[1]=num2

menu=$1

if [[ "$menu" = "add" ]]; then
    echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
    let result=$num1+$num2; echo "result : $result"; exit 1
elif [[ "$menu" = "sub" ]]; then
    echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
    let result=$num1-$num2; echo "result : $result"; exit 1
elif [[ "$menu" = "div" ]]; then
    echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
    let result=$num1/$num2; echo "result : $result"; exit 1
elif [[ "$menu" = "mul" ]]; then
    echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
    let result=$num1*$num2; echo "result : $result"; exit 1
else
    echo "...none operator parameter..."
fi

PS3='select menu : '
select menu in "add" "sub" "div" "mul"
do
    if [[ "$menu" = "add" ]]; then
        echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
        let result=$num1+$num2; echo "result : $result"; exit 1
    elif [[ "$menu" = "sub" ]]; then
        echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
        let result=$num1-$num2; echo "result : $result"; exit 1
    elif [[ "$menu" = "div" ]]; then
        echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
        let result=$num1/$num2; echo "result : $result"; exit 1
    elif [[ "$menu" = "mul" ]]; then
        echo -e "\nnum1 : $num1"; echo "num2 : $num2"; echo "op : $menu"
        let result=$num1*$num2; echo "result : $result"; exit 1
    fi
done
