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
`http://v2d7c.sheepserver.net/gen/244`

### 247
`http://v3d0.sheepserver.net/gen/247`

## TO DO
- Find and document license information per flock
- Find out why some .flam3 files downloaded have more than one flame in them. Do they render as one image or two? I would think two. And are some of them "lost" sheep I wasn't able to find at the server (and logged in `lost_sheep.txt` files)?
- Any TO DO items in any .sh scripts or other README.md files in this project