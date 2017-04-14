#!/bin/bash
echo "*******************************************************"
echo "**** Sprawdzanie listy domen do usuniecia z dns.pl ****"
echo "*******************************************************"
rm -f deleted_domains.txt
echo "* Usunieto stary plik z dns.pl"
rm -f `ls | grep domenyPart`
echo "** Usunieto stare listingi domen"
wget www.dns.pl/deleted_domains.txt > /dev/null 2>&1  && split -l 398 -d -a 1  deleted_domains.txt domenyPart-
echo "*** Utworzono nowe listingi domen do usuniecia z dns.pl z `head -n1 deleted_domains.txt`"
echo "**** Porcji domen jest: `ls | grep domenyPart | wc -l` "
echo "***** Domen wszystkich jest: `cat deleted_domains.txt | wc -l`, milego sprawdzania!"


