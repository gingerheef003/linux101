BEGIN { FS="," }
{ printf "%5s(%s)\n", $2,$1 }
