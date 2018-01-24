#!/bin/bash
echo "*******************************************************"
echo "**** Sprawdzanie listy domen do usuniecia z dns.pl ****"
echo "*******************************************************"
rm -f deleted_domains.txt
echo "* Usunieto stary plik z dns.pl"
rm -f `ls | grep dom_`
echo "** Usunieto stare listingi domen"
wget www.dns.pl/deleted_domains.txt > /dev/null
echo "*** Pobrano domeny"
# wybor domen ze slowem kluczowym
cat deleted_domains.txt | grep seo > dom_seo
cat deleted_domains.txt | grep ubez > dom_ubez
cat deleted_domains.txt | grep klim > dom_klim
cat deleted_domains.txt | grep ojcow > dom_ojcow
cat deleted_domains.txt | grep limanowa > dom_limanowa

echo "Wyfiltrowano domeny" 
cat `ls | grep dom_` > dd-pl.txt
# Wysylka wybranych domen.
 mail -s "Domeny na dziś `date`" "dominik@int.pl" < dd-pl.txt
echo "Wyslano domeny"

# Sekcja specjalna dla wybranych domen:

cat deleted_domains.txt | grep seo.edu.pl 


