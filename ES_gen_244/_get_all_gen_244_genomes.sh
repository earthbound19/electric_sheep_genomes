# Re this page: http://electricsheep.com/archives/generation-244/best.cgi?menu=best&p=17 -- the highest numbered genome in the flock may be 72108 . . . no, there exists a 72109, and 72110 . . . WHAT is the highest?

# count backward from a guest highest known sheep (at this writing) to zero:
for ((id=72110; id>=0; id--))
do
	padded_id=`printf "%05d" $id`
	echo query candidate id is $padded_id . . .
	if [ ! -e electricsheep.244.$padded_id.flam3 ];
	then
		echo "DID NOT FIND local genome file electricsheep.244.$padded_id.flam3--will attempt to retrieve (with jpg render also)."
	# Happily, wget saves nothing if nothing is found (404); so the following will only save valid genes:
	wget http://electricsheep.com/archives/generation-244/$id/electricsheep.244.$padded_id.flam3
		# get error state and if nonzero append irretrievable genome file name to log
		error_level=$?
		if [ $error_level != 0 ];
		then
			echo "electricsheep.244.$padded_id.flam3" >> lost_sheep.txt
		fi
		# Even if there was an error retrieving the genome, try to retrieve an accompanying render image, because there are genomes without an image and maybe visa versa:
	wget http://electricsheep.com/archives/generation-244/$id/electricsheep.244.$padded_id.jpg
	sleep 0.34
	else
		echo "FOUND local genome file electricsheep.244.$padded_id.flam3--will not attempt to retrieve nor overwrite."
	fi
	echo "$padded_id (counting down to 0)" > query_log.txt
done

# dedup lost_sheep.txt (in case of duplicate / canceled runs of this script) :
sort lost_sheep.txt | uniq > wut.txt
mv ./wut.txt ./lost_sheep.txt