rm -fR snapshots
LOCS=`sed -ne '/<\/loc>/ { s/<[^>]*>\(.*\)<\/loc>/\1/; p }' ./sitemap.xml`
for LOC in $LOCS; do ./.make-snapshot.sh $LOC; done
