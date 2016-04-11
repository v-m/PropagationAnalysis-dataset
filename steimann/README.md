# Steimann dataset
Dataset used for research puroposes.

## Project preparation

Whole mutation files are compressed (as the size of files are large).
Please install **7zip** for uncompressing files.
To prepare the dataset, invoke those commands in a terminal:

```
$ git clone https://github.com/v-m/PropagationAnalysis-dataset.git
$ cd PropagationAnalysis-dataset/steimann
$ chmod u+x prepare.sh
$ ./prepare.sh
```

## Content

This dataset is the [PropagationAnalysis project](https://github.com/v-m/PropagationAnalysis) project mapping for the [Steimann dataset](http://www.feu.de/ps/prjs/EzUnit/eval/ISSTA13/) used in:

>Friedrich Steimann, Marcus Frenkel, and Rui Abreu. 2013. Threats to the validity and value of empirical assessments of the accuracy of coverage-based fault locators. In Proceedings of the 2013 International Symposium on Software Testing and Analysis (ISSTA 2013). ACM, New York, NY, USA, 314-324.

It contains mutations informations and various software graphs (generated with softminer).
Considered mutants are only mutation which occurs in one point in the software code per mutation.
All those files are proposed in xml format. Graphs are proposed in graphml format.

Those dataset can be rebuilt using the `./run smf importsteimann` command in [PropagationAnalysis project](https://github.com/v-m/PropagationAnalysis).

## Projects

The ten considered projects are listed in the following table.

- Apache Commons Codec
- Daikon
- Draw2d
- Eventbus
- Htmlparser
- Jaxen
- Jester
- Jexel
- Jparsec
- Apache Commons Lang

## Software graphs

We consider followin graphs:

- Call graph with CHA (`callgraph_cha.xml`)
- Call graph without CHA (`callgraph.xml`)
- Call graph with CHA and fields (`callgraph_f_cha.xml`)
- Call graph without CHA and with fields (`callgraph_f.xml`)

## Files Hierarchy

- Each folder is a project containing:
 - graphs: folder containig software graphs;
   - a folder `causal_cha` with each causal graph obtained in each fold (run in 10-fold);
 - smf: project mapping;
 - a folder 'mutations' with mapping for generated mutants.
   - the related `smf.run.xml` file;
   - an archive (`mutations.7z`) which contains the list of impacted test when run the test cases on the mutant;
 - a folder `flstats` containig statistics for fault localization obtained for each project (for contribution purposes):
   - `pminer.csv`: without considering causal edges;
   - `softwearn.csv`: with considering causal edges;
   - `softwearn_random.csv`: with considering causal edges (second generation including random fault locator stats).

## Contributions

Soon...
