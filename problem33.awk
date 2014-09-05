#! /usr/bin/awk -f
BEGIN {FS=";"; print "begin"}
{
	temp = split($1, customer, ",");
	for(i=1;i<temp;i++){
		for(j=2;j<temp;j++){
			str1 = customer[i] " " customer[j];
			str2 = customer[j] " " customer[i];
			if ( str1 in pairs || str2 in pairs ){
				if ( str1 in pairs && customer[i] != customer[j] ){
					#print "already here";

					pairs[customer[i] " " customer[j]] = pairs[customer[i] " " customer[j]] +1;
				}
				if ( str2 in pairs && customer[i] != customer[j] ){

					pairs[customer[j] " " customer[i]] = pairs[customer[j] " " customer[i]] +1;
				}


			}
			else if(customer[i] != customer[j]){
				pairs[customer[i] " " customer[j]]=1;
				#print customer[i] " " customer[j];
				#print "added a new pair";

			}
		}
	}
	
}
END {
	for (pair in pairs) {
		print pair;
		count = count + pairs[pair];
		count2++;
	}
	print count;
	print count2;
}