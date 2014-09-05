#! /usr/bin/awk -f
BEGIN {FS=";"; print "begin"}
/Beula/{
	n++;
temp = ($1, customers, ",");

if(costumers[(temp-2)]=="Beula")
{
	str = str + " Beula";
	k++;

}
else{
	str = str " "c ostumers[(temp-2)];
}

}

END {
	print "Beula: " str
	print "Beula paid " k/n " times."
}