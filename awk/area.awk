function area(height, width) {
	return height * width
}

BEGIN {
	print "Enter the value of height:"
	getline h < "-"
	print "Enter the value of width:"
	getline w < "-"
	print "Area = " area(h,w)
}
