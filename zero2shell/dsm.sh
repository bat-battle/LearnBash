#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function showhelp
{
    echo -e "Usage:"\
        "\n\t -s section"\
        "\n\t -f function"\
        "\n\t -n lines to display\n"
}

[ $# -le 0 ] && showhelp && exit 0
echo $@ | egrep "\-h\b" > /dev/null && showhelp && exit 0 
echo $@ | egrep "\-\-help\b" > /dev/null && showhelp && exit 0

cmd=" -d "
declare next=""
declare file=""
declare func=""
declare -i lines=0

for i in $@; do

    case $next in
    "-s")
        cmd+="-j $i "
        next=""
        ;;
    "-f")
        func+="$i "
        next=""
        ;;
    "-n")
        lines=$i
        next=""
        ;;
    "")
        next=$i
        ;;
    *)
        echo $next | egrep "^-" > /dev/null &&\
            echo -e "Unknown $next ??\n" && showhelp && exit 0 ||\
        file+="$next "
        next=$i
        ;;
    esac
done

i=""
case $next in
"-s" | "-f" | "-n")
    while [ -z "$i" ]; do
        read -p "> " i
    done
    ;;
"-s")
    cmd+="-j $i"
    ;;
"-f")
    func+="$i "
    ;;
"-n")
    lines=$i
    ;;
"")
    ;;
*)
    file+="$next "
    ;;
esac

while [ -z "$file" ]; do
    read -p "File> " file
done
[ "$lines" -ge 3 ] && lines+=1
[ "$lines" -ne 0 ] && lines+=3

clear
for f in $file; do
    objdump $cmd$f | sed -n '2p' | sed 's/ //g'
    if [ -n "$func" ]; then
        for i in $func; do
            if objdump $cmd$f | egrep "<$i>:" > /dev/null; then
                echo > /dev/null
            else
                echo -e "no function: $i" && continue 1
            fi

            if [ "$lines" -ne 0 ]; then
                objdump $cmd$f | tac | sed "/<$i>:/q" | tac |\
                    head -n $lines | sed 's/\t/ /g' |\
                    egrep "[,:]" --color
            else
                objdump $cmd$f | tac | sed "/<$i>:/q" | tac |\
                    sed '/^$/q' | sed 's/\t/ /g' |\
                    egrep "[,:]" --color
            fi
        done
    else
        if [ "$lines" -ne 0 ]; then
            objdump $cmd$f | head -n $lines |\
                sed 's/\t/ /g' | egrep "[,:]" --color
        else
            objdump $cmd$f | sed 's/\t/ /g' | egrep "[,:]" --color
        fi
    fi
    echo
done
