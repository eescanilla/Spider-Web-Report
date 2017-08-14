#!/bin/bash
#Gracias a Bing.com por no bloquear las IP, PoC inspirada originalmente en "Goofile.py".
#S.W.R. creada para macOS 10.13.

#Colores tput
uno=$(tput setaf 1)
dos=$(tput setaf 2)
tres=$(tput setaf 3)
cuatro=$(tput setaf 4)
cinco=$(tput setaf 5)
seis=$(tput setaf 6)
siete=$(tput setaf 7)
ocho=$(tput setaf 8)
nueve=$(tput setaf 9)
diez=$(tput setaf 10)
fin=$(tput sgr0)

usersagents ()
{
useragents=$(echo 'Mozilla/5.0 (iPad; CPU OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 \n
Mozilla/5.0 (iPad; CPU OS 9_0 like Mac OS X) AppleWebKit/601.1.17 (KHTML, like Gecko) Version/8.0 Mobile/13A175 Safari/600.1.4 \n
Mozilla/5.0 (iPad; CPU OS 9_3_3 like Mac OS X) AppleWebKit/601.1 (KHTML, like Gecko) CriOS/50.0.2661.95 Mobile/13G34 Safari/601.1.46 \n
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0 \n
Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0 \n
Mozilla/5.0 (Linux; Android 6.0.1; SM-G920V Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 5.1.1; SM-G928X Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36 \n
Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; Microsoft; Lumia 950) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Mobile Safari/537.36 Edge/13.10586 \n
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 6P Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 6.0.1; E6653 Build/32.2.A.0.253) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 7.0; Pixel C Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36 \n
Mozilla/5.0 (Linux; Android 6.0.1; SGP771 Build/32.2.A.0.253; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36 \n
Mozilla/5.0 (Linux; Android 5.1.1; SHIELD Tablet Build/LMY48C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Safari/537.36 \n
Mozilla/5.0 (Linux; Android 5.0.2; LG-V410/V41020c Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/34.0.1847.118 Safari/537.36 \n
Mozilla/5.0 (CrKey armv7l 1.5.16041) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.0 Safari/537.36 \n
Mozilla/5.0 (Linux; U; Android 4.2.2; he-il; NEO-X5-116A Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30 \n
Mozilla/5.0 (Linux; Android 4.2.2; AFTB Build/JDQ39) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.173 Mobile Safari/537.22 \n
AppleTV5,3/9.1.1 \n
Mozilla/5.0 (Nintendo WiiU) AppleWebKit/536.30 (KHTML, like Gecko) NX/3.0.4.2.12 NintendoBrowser/4.3.1.11264.US \n
Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; Xbox; Xbox One) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Mobile Safari/537.36 Edge/13.10586 \n
Mozilla/5.0 (PlayStation 4 3.11) AppleWebKit/537.73 (KHTML, like Gecko) \n
Mozilla/5.0 (X11; U; Linux armv7l like Android; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/5.0 Safari/533.2+ Kindle/3.0+ \n
Mozilla/5.0 (Linux; U; en-US) AppleWebKit/528.5+ (KHTML, like Gecko, Safari/528.5+) Version/4.0 Kindle/3.0 (screen 600x800; rotate)')

random=$(echo $RANDOM % 27 + 1 | bc)
useragent=$(echo -e $useragents | sed -n "${random}p")
}

usersagents

clear && echo "
 $(tput setaf 52)                (                                 )                                 ) 
 $(tput setaf 88)           (    )\ )   (   (     (  (      (   ( /(   (      (              (    ( /( 
 $(tput setaf 124) (   \`  )  )\  (()/(  ))\  )(    )\))(    ))\  )\())  )(    ))\ \`  )    (   )(   )\())
 $(tput setaf 172) )\  /(/( ((_)  ((_))/((_)(()\  ((_)()\  /((_)((_)\  (()\  /((_)/(/(    )\ (()\ (_))/ 
 $(tput setaf 178)((_)((_)_\ (_)  _| |(_))   ((_) _(()((_)(_))  | |(_)  ((_)(_)) ((_)_\  ((_) ((_)| |_  
 $(tput setaf 247)(_-<| '_ \)| |/ _\` |/ -_) | '_| \ V  V // -_) | '_ \ | '_|/ -_)| '_ \)/ _ \| '_||  _| 
 /__/| .__/ |_|\__,_|\___| |_|    \_/\_/ \___| |_.__/ |_|  \___|| .__/ \___/|_|   \__| 
     |_|                                                        |_|                    
 $(tput setaf 94)--------------------------------------------------------------------------------------$(tput sgr0)

$tres ############$siete Ejemplos de uso: apple.com, apple.com/es, apple.com/es/icloud$tres ###########$fin
$tres ##########################$siete Tool by Jonathan Burgos Saldivia$tres ##########################$fin
"

echo -n " Ponga aqui el sitio web objetivo: $cinco" 
read -t 60 web
echo $fin
webs=$(echo "$web" | perl -pe 's/https:\/\/www.//g;s/http:\/\/www.//g;s/\/$//;s/\//-/g' )

if [ -z "$webs" ]; then
	echo -e $uno "\n Se acabó el tiempo.\n$fin"
	exit 2
fi

if [[ "$webs" == *"http"* ]]; then
	echo -e $uno "No usar \"http(s)\" al principio de la url.\n$fin"
	exit 2
fi

rm -rf /Users/$USER/Desktop/Reportes\ S.W.R./.temp 2>/dev/null
mkdir /Users/$USER/Desktop/Reportes\ S.W.R. 2>/dev/null
mkdir /Users/$USER/Desktop/Reportes\ S.W.R./$webs 2>/dev/null
mkdir /Users/$USER/Desktop/Reportes\ S.W.R./.temp 2>/dev/null
mkdir /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos 2>/dev/null
mkdir /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Correos 2>/dev/null
mkdir /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Directorios 2>/dev/null

for page in 1 41 81 121 161 201 241 281 321 361 401 441 481 521 561 601 641 681 721 761 801 841 881 821 861 901 941 981 1021
do
	curl -sA "$useragent" \
	--url "www.bing.com/search?q=site:$webs+filetype:(pdf+OR+ps+OR+dwf+OR+kml+OR+kmz+OR+xls+OR+ppt+OR+doc+OR+rtf+OR+swf+OR+txt+OR+sql)&first=$page&count=40&filter=0" \
	-o /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web.html && \
	cat /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web.html | awk 'NR!~/^(48)$/' | perl -pe 's/\s/\n/g' | grep "href=\"" \
	| grep -v "&amp" | grep "$webs"| uniq | tr -d '"' >> /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web2.html && \
more /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web2.html | perl -pe 's/href=//g' | grep "$webs"|sort| uniq | cut -f1 -d";" \
> /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt"  

curl -sA "$useragent" \
--url "www.bing.com/search?q=site:*$webs+inbody:mail&first=$page&count=40&filter=0" -o /Users/$USER/Desktop/Reportes\ S.W.R./.temp/Correos.html && \
cat /Users/$USER/Desktop/Reportes\ S.W.R./.temp/Correos.html  \
| perl -pe 's/"|{|}|:|;|,|\(|\)/\n/g;s/\s/\n/g;s/<strong>//g;s/</\n/g' \
| grep -E '@.*\.' | grep -v "/" | sort | uniq >> /Users/$USER/Desktop/Reportes\ S.W.R./.temp/Correos.txt
#exportar a resultado final
cat /Users/$USER/Desktop/Reportes\ S.W.R./.temp/Correos.txt  | sort | uniq | perl -pe 's/\.$//g' > /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Correos/"$webs-Correos.txt"

curl -sA "$useragent" \
--url "https://www.bing.com/search?q=site:$webs/&start=1&count=$page&filter=0" -o /Users/$USER/Desktop/Reportes\ S.W.R./.temp/webc.html && \
cat /Users/$USER/Desktop/Reportes\ S.W.R./.temp/webc.html | awk 'NR!~/^(48)$/' | perl -pe 's/\s/\n/g' | grep "href=\"" | grep "$webs"| tr -d '"'| perl -pe 's/href=//g'| grep -v "&amp;" | grep -v "=" | grep -o ".*/" | sort | uniq >> /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web2c.html && \
more /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web2c.html | perl -pe 's/href=//g' | grep "$webs"|sort| uniq | cut -f1 -d";" \
> /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Directorios/"$webs-Crawled".txt

cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Directorios/"$webs-Crawled.txt" | perl -pe 's/https:\/\/www.//g;s/http:\/\/www.//g' | cut -d/ -f1-2 | sed 's/\/*$//g' | sort | uniq > /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled1.txt"

total=$(wc -l /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt"  | awk '{print $1}')
#echo -ne " Buscando desde resultado$cinco $page$tres,$cinco $total$tres Archivos encontrados.\r$fin"
lines=$(wc -l /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Correos/"$webs-Correos.txt" | awk '{print $1}')
craw=$(wc -l /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled1.txt" | awk '{print $1}')

echo -ne " Buscando desde resultado$cinco $page$fin;$cinco $total$fin archivos, $cinco$lines$fin correos y $cinco$craw$fin directorios encontrados.\r"

done
echo -ne " \033[0K\r" && echo -ne " \033[0K\r"

inicio=`expr $total / 2`
for i in $(eval echo "{$inicio..$total}")
do
echo -ne " $cinco$i$fin archivos encontrados en total.\r"
sleep .000001
inicio=$(echo "$total")
done

echo ""

doc=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.doc *$' | uniq | wc -l | awk '{print $1}')
if [ "$doc" != 0 ]
then
echo -ne " $cinco$doc$fin doc encontrados.\n"
fi

docx=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.docx *$' | uniq | wc -l | awk '{print $1}')
if [ "$docx" != 0 ]
then
echo -ne " $cinco$docx$fin docx encontrados.\n"
fi

pdf=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.pdf *$' | uniq | wc -l | awk '{print $1}')
if [ "$pdf" != 0 ]
then
echo -ne " $cinco$pdf$fin pdf encontrados.\n"
fi

ppt=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.ppt *$' | uniq | wc -l | awk '{print $1}')
if [ "$ppt" != 0 ]
then
echo -ne " $cinco$ppt$fin ppt encontrados.\n"
fi

pptx=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.pptx *$' | uniq | wc -l | awk '{print $1}')
if [ "$pptx" != 0 ]
then
echo -ne " $cinco$pptx$fin pptx encontrados.\n"
fi

rtf=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.rtf *$' | uniq | wc -l | awk '{print $1}')
if [ "$rtf" != 0 ]
then
echo -ne " $cinco$rtf$fin rtf encontrados.\n"
fi

sql=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.sql *$' | uniq | wc -l | awk '{print $1}')
if [ "$sql" != 0 ]
then
echo -ne " $cinco$sql$fin sql encontrados.\n"
fi

txt=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.txt *$' | uniq | wc -l | awk '{print $1}')
if [ "$txt" != 0 ]
then
echo -ne " $cinco$txt$fin txt encontrados.\n"
fi

xls=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.xls *$' | uniq | wc -l | awk '{print $1}')
if [ "$xls" != 0 ]
then
echo -ne " $cinco$xls$fin xls encontrados.\n"
fi

xlsx=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -i '.xlsx *$' | uniq | wc -l | awk '{print $1}')
if [ "$xlsx" != 0 ]
then
echo -ne " $cinco$xlsx$fin xlsx encontrados.\n"
fi

otros=$(cat /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Archivos/"$webs-Archivos.txt" | egrep -vi '.pdf *$|.ps *$|.dwf *$|.kml *$|.kmz *$|.xls *$|.xlsx *$|.ppt *$|.pptx *$|.doc *$|.docx *$|.rtf *$|.swf *$|.txt *$|.sql *$' | uniq | wc -l | awk '{print $1}')
if [ "$otros" != 0 ]
then
echo -ne " $cinco$otros$fin otros encontrados.\n"
fi

Correos=$(wc -l /Users/$USER/Desktop/Reportes\ S.W.R./$webs/Correos/"$webs-Correos.txt" | awk '{print $1}')
if [ "$Correos" != 0 ]
then
echo -ne " $cinco$Correos$fin correos encontrados.\n"
fi

if [ "$craw" != 0 ]
then
echo -ne " $cinco$craw$fin directorios encontrados.\n"
fi

echo

#subdirectorios

cat /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled1.txt" | while read line ; do

for page in 1 41 81

do
	
line2=$(echo $line | perl -pe 's/https:\/\/www.//g;s/http:\/\/www.//g'| cut -d/ -f1-3 )

curl -sA "$useragent" \
--url "https://www.bing.com/search?q=site:$line2/&start=1&count=$page&filter=0" -o /Users/$USER/Desktop/Reportes\ S.W.R./.temp/webd.html && \
cat /Users/$USER/Desktop/Reportes\ S.W.R./.temp/webd.html | awk 'NR!~/^(48)$/' | perl -pe 's/\s/\n/g' | grep "href=\"" | grep "$webs" | tr -d '"'| perl -pe 's/href=//g'| grep -v "&amp;" | grep -v "=" | grep -o ".*/" | sort | uniq >> /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web2d.html && \
more /Users/$USER/Desktop/Reportes\ S.W.R./.temp/web2d.html | perl -pe 's/href=//g' | grep "$webs" |sort| uniq | cut -f1 -d";" \
> /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled2.txt"

total1=$(wc -l /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled2.txt" | awk '{print $1}')

echo -ne " Buscando subdirectorios, $cinco$total1$fin en total.\r"

done
done

cat  /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled1.txt" /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled2.txt"  | perl -pe 's/https:\/\/www.//g;s/http:\/\/www.//g;s/\/$//' | sort | uniq > /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Directorios.txt"

rm -rf  /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled.txt" /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled1.txt" /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Crawled2.txt"

total2=$(wc -l /Users/$USER/Desktop/Reportes\ S.W.R./"$webs"/Directorios/"$webs-Directorios.txt" | awk '{print $1}')
echo -ne " \033[0K\r"
echo -n " $cinco$total2$fin subdirectorios encontrados."
echo
echo

###

rm -rf /Users/$USER/Desktop/Reportes\ S.W.R./.temp
