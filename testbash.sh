

#!/bin/bash
#cd /tmp/
#vim testbash.h
#chmod +x testbash.sh
echo -e "Dosya ismini giriniz:\c"
read dosyaismi
if [ -e $dosyaismi ]
then
	echo "Dosya ismi bulundu"
	sort -nk 4 $dosyaismi > "denemesort.txt"
	input="denemesort.txt"
	sonsatir=""
	while  IFS= read -r line
        do
		echo "$line<
		sonsatir="${line}"
        done < $input
	stringarray=($sonsatir)
	gun=${stringarray[1]}
	ay=${stringarray[0]}
	yil=${stringarray[2]}
	sicaklik=${stringarray[3]}
	echo "gun: $gun ay: $ay yil: $yil sicaklik: $sicaklik"
else
	echo "Dosya ismi bulunamadı"
fi
#sudo chown tempreader testbash.h
