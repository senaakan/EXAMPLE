wget https://academic.udayton.edu/kissock/http/Weather/gsod95-current/allsites.zip
unzip allsites.zip
cd /tmp/
mkdir ANKARA
cp TUANKARA.txt tmp/ANKARA
cat TUANKARA.txt
cd ANKARA/
grep -e '-99' TUANKARA.txt > NODATACOUNT.txt
sed -i s/-99/-999/g TUANKARA.txt
grep -e '2016' TUANKARA.txt > TUANKARA2016.txt
grep '11     11     2012' TUANKARA.txt > 11-11-2012.txt
sort -nk 4 TUANKARA.txt > SORTANKARA.txt
grep -ve '-999' SORTANKARA.txt > SORTYENIANKARA.txt
cat SORTYENIANKARA.txt
head SORTYENIANKARA.txt > TUANKARATOPSOGUK.txt
tail SORTYENIANKARA.txt > TUANKARATOPSICAK.txt
ls
rm SORTANKARA.txt SORTYENIANKARA.txt
cd ~
sudo adduser tempreader
sudo chown tempreader /tmp/ANKARA
cd /tmp
ls -l
sudo chown tempreader /tmp/ANKARA 11-11-2012.txt NODATACOUNT.txt TUANKARA2016.txt TUANKARATOPSICAK.txt TUANKARATOPSOGUK.txt TUANKARA.txt
ls -l
