printf
```
$ awk '{ printf  "%10s\n", $1 }' employee.txt
```

NF
```
awk '{ print NF }' input.txt
```

White-Space Delimeter
```
echo 'I like programing' | awk '{ print $3 }'
```

Delimeter Change
```
awk '$1=$1' FS=":" OFS="-" phone.txt
```

Use Tab Delimeter
```
awk '{ print $1 }' FS='\t' input.txt
```

Use OFS with Tab Delimeter
```
ls -l | awk -v OFS='\t' 'BEGIN { printf "%s\t%s\n", "Name", "Size" } { print $9,$5 }'
```

CSV
```
awk -F "," '{ print $2 }' customer.csv
```

Combine Other Text
```
awk -F "," 'NR>1 { print "Name:" $2 ", Email:" $3 ", Phone:" $4 }' customer.csv
```

Script
```
awk -f awkcsv.awk customer.csv
```

regex
```
printf "Fool\nCool\nDoll\nbool" | awk '/[FbC]ool/'
echo -e "Linux is fre to use\n It is an open-source software\nI am adequately good in it" | awk '/^Linux/'
echo -e "PHP Script\nJavaScript\nVisual Programming" | awk '/Script$/'
printf "Fool\nCool\nDoll\nbool" | awk '/[^F]ool/'
echo -e "Web Design\nweb development\nFramework" | awk 'tolower($0) ~ /^web/;'
```

rand
```
awk 'BEGIN { printf "Number is = %.2f\n", rand()*10 }'
```

User-defined Function
```
awk -f area.awk
```

if-else
```
awk '{ if ($3 == "") print "Price field is missing" else print "Item price is " $3 }' items.txt

```
if-else-if
```
awk 'BEGIN {
    print "Enter the mark: "
    getLine mark < "-"
    if (mark >= 90) print "A+"
    else if (mark >= 80) print "A"
    else if (mark >= 70) print "B+"
    else print "Fail"
}'
```

Variables
```
awk 'BEGIN { person="Ginger"; print person }'
```
```
awk '/Printer/ { name=$1;brand=$2;price$3; print "Item Name=" name; print "Item Price=" price }' items.txt
```

Associative Array
```
awk 'BEGIN {
    books["Web Design"] = "Learning HTML 5";
    books["Web Programming"] = "PHP and MySQL"
    books["PHP Framework"]="Learning Laravel 5"
    printf "%s\n%s\n%s\n", books["Web Design"], books["Web Programming"], books["PHP Framework"]
}'
```
Numeric Array
```
awk 'BEGIN {
	number[0] = 80;
	number[1] = 55;
	number[2] = 76;

	# print array elements
	printf  "Array values: %d\t%d\t%d\n", number[0],number[1],number[2];
}'
```

While Loop
```
awk 'BEGIN {
    n=1;
    whiel (n<=10) {
        if (n>5) break;
        print n; n++;
    }
}'
```
For Loop
```
awk 'BEGIN {
    sum=0;
    for (n = 1; n <= 10; n++) sum = sum + n;
    print sum;
}'
```
Do-While Loop
```
awk 'BEGIN {
    counter = 10;
    do {
        if (counter % 2 == 0) print counter;
        counter--;
    } while (counter > 5);
}'
```

First and Last Column
```
awk -F '\\s\\s' '{ print $1 }' students.txt
awk -F '\\s\\s' '{ print $(NF) }' students.txt
```

grep
```
grep '1002' employee.txt | awk -F '\t' '{ print $2 " will get $" ($3*5)/100 " bonus" }' 
```

bash
```
bash item_search.bash
```

sed
```
sed -n '/J/p' employee.txt | awk -F '\t' '{ printf "%s(%s)\n", $2, $1 }'
```
