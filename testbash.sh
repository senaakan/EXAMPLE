

#!/bin/bash
#cd /tmp/
#vim testbash.h
#chmod +x testbash.sh
echo -e "Dosya ismini giriniz:\c"
read dosyaismi
if [ -e $dosyaismi ]
then
	echo "Dosya ismi bulundu"
	while  read x1 x2 x3 x4

        do
                echo  ${x2}      ${x1}      ${x3}      ${x4}
        done < $dosyaismi
	sort -nk 4 $dosyaismi | tail -1
else
	echo "Dosya ismi bulunamadı"
fi
#sudo chown tempreader testbash.h
