# Because access there is difficult via browser or otherwise, I had a crawler (slowly, over a long period of time) get every page and resource recursively from electricsheep.com/archives/generation-243. I ultimately found 17,660 electric sheep renders for that flock. Also, you get a result querying http://electricsheep.com/archives/generation-243/17660/electricsheep.243.17660.flam3, but not http://electricsheep.com/archives/generation-243/17661/electricsheep.243.17661.flam3 -- it seems that 17,660 is the last sheep in the flock.

for id in $( seq 0 17660 )
do
	padded_id=`printf "%05d" $id`
	# Happily, wget saves nothing if nothing is found (404); so the following will only save valid genes:
	wget http://electricsheep.com/archives/generation-243/$padded_id/electricsheep.243.$padded_id.flam3
	sleep 0.32
done