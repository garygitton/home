#!/bin/bash

FILE_IN=$1
FILE_OUT=$2

docker run -it --rm -v "$PWD":/opt/mdbdata rillke/mdbtools bash -c "to_mysql.sh /opt/mdbdata/${FILE_IN}" > ${FILE_OUT}

sed -i -e "s/\r//g" ${FILE_OUT}
sed -i '/^--/ d' ${FILE_OUT}
sed -i '/ ();$/ d' ${FILE_OUT}
sed -i '/^ERROR/ d' ${FILE_OUT}
sed -i '/^Error/ d' ${FILE_OUT}
sed -i '/^CRITICAL/ d' ${FILE_OUT}
sed -i '/ALTER TABLE .* ADD INDEX .*;/ d' ${FILE_OUT}
sed -i '/ALTER TABLE .* ADD PRIMARY KEY .*;/ d' ${FILE_OUT}
sed -i '/DROP TABLE IF EXISTS to;/ d' ${FILE_OUT}
sed -i '/DROP TABLE IF EXISTS delete;/ d' ${FILE_OUT}
sed -i '/DROP TABLE IF EXISTS Table;/ d' ${FILE_OUT}
sed -i '/DROP TABLE IF EXISTS des;/ d' ${FILE_OUT}
sed -i '/DROP TABLE IF EXISTS erreurs;/ d' ${FILE_OUT}

