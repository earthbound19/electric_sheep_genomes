# Electric Sheep genomes
Backups of genomes from various generations of Scott Draves' Electric Sheep evolved generative art.

If you haven't downloaded and installed the [Electric Sheep](https://electricsheep.org/) screensaver before, drop everything and _do it now!_

Every work of art in that project has "genes," a set of math instructions to generate the work.

Said genes are ostensibly available at electricsheep.com/archives, but the URLs have moved around over the years, and some genomes have gone missing. The archive frankly also just isn't accessible in a script or batch friendly way--which I would hope for, as the genomes have fairly open licenses. 

This project collects what genomes from the project can be found yon (for example by use of scripted batch genome download) or elsewhere, all in an easily accessible flat folder permanent archive.

## Contributions
If you have copies of any missing genomes, or know where any can be found on the public internet, please file an issue directing me to them, or fork this repo, add the genomes, and submit a pull request. Thank you!

If your ES screensaver is set to keep rendered frames, those rendered frames may have their genes embedded in the metadata! You can extract all of them with exiftool and [a batch script I wrote](https://github.com/earthbound19/autobrood/blob/master/scripts/extract_genomes_from_ES_renders.sh)!

## Flock base and genome URL structure

To obtain the URL to a valid (and served!) genome for any of the following base URLs, append this structure (interpreted) on to the base flock URL:

`sheep_id/electricsheep.247.sheep_id.flam3`

For example, appending that to the gen 247 URL gives:
`http://v3d0.sheepserver.net/gen/247/25495/electricsheep.247.25495.flam3`

#### Flock base URL structures

### 243
`http://electricsheep.com/archives/generation-243`

### 244
- [Original project archive](http://electricsheep.com/archives/generation-244/best.cgi)
- License: human-designed genomes [CC-Attribution](http://electricsheep.com/archives/generation-244/dead.cgi?id=82653&detail=stats). Robot-designed genomes [CC-noncommercial](http://electricsheep.com/archives/generation-244/dead.cgi?id=86022).
- Base URL of genomes: `http://electricsheep.com/archives/generation-244`
- [Page crediting designers by username](http://electricsheep.com/archives/generation-244/best.cgi?p=0&menu=designer)
- I _thought_ the base URL of genomes was different? I thought it was: `http://v2d7c.sheepserver.net/gen/244` -- why did I think this? Where did I get this particular URL with the peculiar v2d7c subdomain?

### 247
`http://v3d0.sheepserver.net/gen/247`

## TO DO
- Use archive of old archives! [http://electricsheep.com/archives/](http://electricsheep.com/archives/)
- Find and document license information per flock
- Find out why some .flam3 files downloaded have more than one flame in them. Do they render as one image or two? I would think two. And are some of them "lost" sheep I wasn't able to find at the server (and logged in `lost_sheep.txt` files)?
- Any TO DO items in any .sh scripts or other README.md files in this project
- Get answers to questions asked in this document
- Find out how to programmatically ascertain the license--if that's even possible--for any given genome. Will robot-designed ones credit "brood" as the designer in the genome somewhere? I believe the `<edit..` tags in [this genome](http://electricsheep.com/archives/generation-244/dead.cgi?id=86022&detail=genome) may answer the question (the newest edit, if it reads "clone brood," I think means that it was interbred by a robot. The new ID in the "clone brood" edit tag is the resulting genome ID, and the ID in the previous edit tag is the sheep it was bred with to produce the new sheep. It seems.
- Whoa wait what? I had previously gotten a ~flock.xml file or two, with the entire flock of a given generation in it? I have this here in a local folder, ~`electricSheepGeneration245_flock.xml`. Uh wut? Make use of that? Find where I got them? I think I remember it was at the index (root) of a flock server?

## Elsewhere
Archives of the Electric Sheep are in archive.org. Some URLs of many to potentially list:

- https://archive.org/details/ElectricSheep -- which probably leads to:
- https://archive.org/details/electricsheep-flock-244/00244%3D00190%3D00095%3D00182.avi
- https://archive.org/download/electricsheep-flock-244-80000-0
- https://archive.org/download/electricsheep-flock-244-80000-3 -- note that URL is the same except the 3 at the end--how high does that numbering go?