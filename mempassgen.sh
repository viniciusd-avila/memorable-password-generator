#!bin/bash

filename="";
nwords=4;
password="";
verbose=false;

while [ "$1" != "" ]; do
	case $1 in
		-f | --filename )	shift
					filename=$(pwd)/$1
					;;
		-n | --numer-of-words )	shift
					nwords=$1
					;;
		-v | --verbose )	shift
					verbose=true
					;;
	esac
	shift
done

ubound=$(wc -l < $filename);
for i in `seq 1 $nwords`; do
	randword=$(echo $(sed -n $(shuf -i 0-$ubound -n 1)'p' < $filename) | tr -d '\r');
	if $verbose 
	then 
		echo -n $randword " "; 
	fi
	password=$password$randword;
done
echo;
echo $password;

# NIST password entropy estimation
# https://en.wikipedia.org/wiki/Password_strength#NIST_Special_Publication_800-63-2
if $verbose
then
	len=${#password};
	echo $len characters;

	entropy=0;
	if [ $len > 20 ]
	then
		entropy=$(($len - 20));
		len=20;
	fi
	if [ $len > 8 ]
	then
		entropy=$(echo "$entropy + (1.5 * ($len - 8));" | bc);
		len=8;
	fi
	if [ $len > 1 ]
	then
		entropy=$(echo "$entropy + (2 * ($len - 1));" | bc);
		len=1;
	fi
	if [ $len > 0 ]
	then
		entropy=$(echo "$entropy + (4 * ($len));" | bc);
	fi
	echo $(echo "($entropy+0.5)/1" | bc;) bits of entropy;
fi

exit
