# ex. URL: http://v2d7c.sheepserver.net/gen/247/7701/electricsheep.247.07701.flam3 -- NOTE that the first appearance of the number 7701 in the URL is not zero-padded, but the second is.

# TO DO
# - answer this question: to destroy your hard drive space, albeit with worthy downloads--wait what do I do with this URL format? :
# http://www.archive.org/download/electricsheep-flock-247-12500-5/00247=14285=14285=14285.avi

# count backward from the highest known sheep (at this writing) to zero; re: https://unix.stackexchange.com/questions/64861/how-to-display-numbers-in-reverse-order-using-seq1#comment93123_64861
# Highest known genome id at this writing in flock is: 17660
for ((id=17660; id>=0; id--))
do
	padded_id=`printf "%05d" $id`
	echo query candidate id is $padded_id . . .
	if [ ! -e electricsheep.247.$padded_id.flam3 ];
	then
		echo "DID NOT FIND local genome file electricsheep.247.$padded_id.flam3--will attempt to retrieve (with jpg render also)."
	# Happily, wget saves nothing if nothing is found (404); so the following will only save valid genes:
	wget http://v3d0.sheepserver.net/gen/247/$id/electricsheep.247.$padded_id.flam3
		# get error state and if nonzero append irretrievable genome file name to log
		error_level=$?
		if [ $error_level != 0 ];
		then
			echo "electricsheep.247.$padded_id.flam3" >> lost_sheep.txt
		fi
		# Even if there was an error retrieving the genome, try to retrieve an accompanying render image, because there are genomes without an image and maybe visa versa:
	wget http://v3d0.sheepserver.net/gen/247/$id/electricsheep.247.$padded_id.jpg
	sleep 0.14
	else
		echo "FOUND local genome file electricsheep.247.$padded_id.flam3--will not attempt to retrieve nor overwrite."
	fi
	echo "$padded_id (counting down to 0)" > query_log.txt
done

# dedup lost_sheep.txt (in case of duplicate / canceled runs of this script) :
sort lost_sheep.txt | uniq > wut.txt
mv ./wut.txt ./lost_sheep.txt