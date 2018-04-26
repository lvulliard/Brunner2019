library(Rsubread)
library(docopt)

'Usage: 
	countExons.R <BAM>
	countExons.R -h | --help

options:
  -h --help     Show this message.' -> doc

opts <- docopt(doc)

rootname = strsplit(opts$BAM, "\\.")[[1]][1]

fcStrict = featureCounts(opts$BAM, annot.inbuilt = "mm9", GTF.featureType="exon")
fcMulti = featureCounts(opts$BAM, annot.inbuilt = "mm9", GTF.featureType="exon", countMultiMappingReads=T, allowMultiOverlap=T)

save(fcStrict, fcMulti, file = paste0(rootname, ".count"))
