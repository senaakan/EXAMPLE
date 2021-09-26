

#!/bin/bash
#cd /tmp/
#vim testbash.h
#chmod +x testbash.sh
echo -e "Dosya ismini giriniz:\c"
read dosyaismi
if [ -e $dosyaismi ]
then
	echo "Dosya ismi bulundu"
	sort -nk 4 $dosyaismi | tail -1
else
	echo "Dosya ismi bulunamadı"
fi
#sudo chown tempreader testbash.h
