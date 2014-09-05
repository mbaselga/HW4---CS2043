#! /usr/bin/awk -f
BEGIN {FS=";"; print "begin"}

temp = ($1, customers, ",");

for (i in customers) {
	if(i in adj) {
		for (n in customers) {
			if (!n == i && !n in adj[i]) {
				adj[i] = adj[i] "," n;
			}
		}
	} else {
		for (n in customers){
			if (!n == i) {
				adj[i] = n;
			}
		}
	}
}
}

END {
	for (i in ar) {
		spaces = split(ar[i], customers, ",");
		delete temp;
		for (n in customers) {
			if (!(customers[n] in temp)) {
				temp[customers[n]];
			}
		}
		printf("Resteraunt: %s ", i);
		for (c in temp) {
			printf("%s ", c);
		}
		printf("\n");
	}
}