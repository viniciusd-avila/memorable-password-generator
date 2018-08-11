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
		echo $randword; 
	fi
	password=$password$randword;
done
echo $password;
exit
