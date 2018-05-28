# RecArg1 and arginine depletion in osteoclast differentiation

## Code summary

Several *R* Jupyter notebooks are provided and were used to perform the analyses shown in the paper.  
All absolute paths used here and in the notebooks must be adapted to your own configuration.

### RNA-seq analysis

See *RNA-DiffEq.ipynb*

### Proteomics analysis

See *MS-analysis.ipynb*. The statistical tests were done separately using Perseus.

### Integration

See *DifferentialIntegration.ipynb*.  
The transcriptomics and proteomics results were integrated using the OmicsIntegrator (v0.3.1) with the following parameters:

	python2.7 /Users/lvulliard/bin/OmicsIntegrator-0.3.1/scripts/garnet.py --outdir="recArg1_output" recArg1_garnet.cfg
	python2.7 /Users/lvulliard/bin/OmicsIntegrator-0.3.1/scripts/forest.py --prize=recArg1_prot.tsv --edge=mousePPI.tsv --conf=forest.cfg --outpath=recArg1_output --msgpath=/Users/lvulliard/bin/msgsteiner-1.3/msgsteiner --garnet=recArg1_output/events_to_genes_with_motifsregression_results_FOREST_INPUT.tsv --noisyEdges 100

	python2.7 /Users/lvulliard/bin/OmicsIntegrator-0.3.1/scripts/garnet.py --outdir="deplOrRec_output" deplOrRec_garnet.cfg
	python2.7 /Users/lvulliard/bin/OmicsIntegrator-0.3.1/scripts/forest.py --prize=deplOrRec_prot.tsv --edge=mousePPI.tsv --conf=forest.cfg --outpath=deplOrRec_output --msgpath=/Users/lvulliard/bin/msgsteiner-1.3/msgsteiner --garnet=deplOrRec_output/events_to_genes_with_motifsregression_results_FOREST_INPUT.tsv --noisyEdges 100

 The files *recArg1_garnet.cfg* and *forest.cfg* are provided with this repository. The other files are generated using the notebooks provided, in which the corresponding depencies are detailed.
 