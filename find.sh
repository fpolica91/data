
#count the number of lines in the file that contain the string "Sydney Carton" or "Charles Darnay"

grep -e "Sydney Carton" -e "Charles Darnay" two_cities.txt | wc -l
