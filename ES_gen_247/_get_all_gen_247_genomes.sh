# ex. URL: http://v2d7c.sheepserver.net/gen/247/7701/electricsheep.247.07701.flam3 -- NOTE that the first appearance of the number 7701 in the URL is not zero-padded, but the second is.

# TO DO: answer this question:
# To destroy your hard drive space, albeit with worthy downloads--wait what do I do with this URL format? :
# http://www.archive.org/download/electricsheep-flock-247-12500-5/00247=14285=14285=14285.avi

# count backward from the highest known sheep (at this writing) to zero; re: https://unix.stackexchange.com/questions/64861/how-to-display-numbers-in-reverse-order-using-seq1#comment93123_64861
for ((id=17660;id>=0;id--))
do
	padded_id=`printf "%05d" $id`
	# Happily, wget saves nothing if nothing is found (404); so the following will only save valid genes:
	wget http://v3d0.sheepserver.net/gen/247/$id/electricsheep.247.$padded_id.flam3
	wget http://v3d0.sheepserver.net/gen/247/$id/electricsheep.247.$padded_id.jpg
	sleep 0.26
	echo "$padded_id (counting down to 0)" > query_log.txt
done