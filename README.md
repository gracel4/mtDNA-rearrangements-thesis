# mtDNA-rearrangements-thesis

This repository contains the code used for my honours thesis on mitochondrial genome rearrangements. 

For each R file, there is a corresponding folder in the 'Data' folder to be used as the working directory when running the R file. 

In Chapter 5, simulated genomes are compared under various models. The data for when the genome size is 7 genes and the genome distance is 2 is found in the file 'Different Inferrence and Simulating models'.
For the case when the genome size differs, the appropriate file is 'Different Size Genome Testing'. For changes in the genome distance, the appropriate file is 'Different Genome Distance Testing'. Wilks' confidence intervals are calculated using the file 'Wilks 95 confidence intervals'. 

In Chapter 6, the mitochondrial data set was cleaned up. This was done using the file 'Unique gene orders'. Note that the mitochondrial data set is taken from Montaña-Lozano et al. (2022, doi: 10.1038/s41598-022-09512-2). 'uniquespecies' shows the exemplar species associated with each genome for the full protein order.

'Comparing mtDNA Rearrangements' files contains the files used in Chapter 8 when comparing different rearrangement models (using distance matrices generated from maximum likelihood time estimates) to the phylogenetic tree. There is a unique file for each synteny block, and the comparisons when using only contained genomes.

