if [ -z "$1" -o -z "$2" ]
then
	echo "	No arguments!"
	echo "	$0 <scripts folder> <txt output filename>"
	echo "	ex. $0 tasks/ result.md"
else
	files=$1*.sh
	echo -e ## "Automaticaly generated report by krzystooof's $0\n\n">$2
	for eachfile in $files
	do
		echo -e "### $eachfile\n">>$2
		echo -e "	$eachfile\n	Arguments (max 3): "
		read -a arr
		echo -e '\n```'>>$2 
		cat $eachfile>>$2
		echo -e '```'>>$2
		echo 'Arguments: '>>$2
		for each in ${arr[*]}
		do
			echo -n '`'>>$2
			echo -n $each>>$2
			echo -n '` '>>$2
		done
		echo -e "\nOutput:\n">>$2
		echo -e '```'>>$2
		./$eachfile ${arr[0]} ${arr[1]} ${arr[2]}>>$2
		echo -e '```\n'>>$2
done
exit 0
fi
