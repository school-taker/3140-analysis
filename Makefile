to-tsv:
	xsv fmt -t \\t revenue.csv > rev.tsv

get-total:
	awk -F\t -f show_earners.awk rev.tsv \
		| sort -nr \
		| head -n10