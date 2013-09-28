U=$1
P=$( echo "$U" | perl -MURI -le 'chomp($url = <>); print URI->new($url)->fragment' )
final_url=$U
P=${P:1}
final_path=./snapshots$P.html
mkdir -p $final_path
rm -R $final_path
phantomjs --disk-cache=no ./.phantomjs-runner.js $final_url > $final_path