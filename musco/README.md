# Musco dataset
Dataset used for research puroposes

## Content

This repo contains files obtained using the ChangePropagation project on ten open source Java projects. It contains mutations informations (using smf tool), various software graphs (using softminer) and estimated impacts (using pminer). All those files are proposed in xml format. Graphs are proposed in graphml format.

## Projects

The ten considered projects are listed in the following table.

- Apache Commons Codec
- Apache Commons IO
- Google Gson
- JodaTime
- SonarQube
- Apache Commons Collections4
- Apache Commons Lang
- JGit
- Apache Shindig
- Spojo

## Software graphs

We consider following graphs:

- Call graph with CHA (callgraph_cha.xml)
- Call graph without CHA (callgraph.xml)
- Call graph with CHA and fields (callgraph_f_cha.xml)
- Call graph without CHA and with fields (callgraph_f.xml)

## Files Hierarchy

- Each folder is a project containing:
 - callgraph_xxx.xml: software graphs described earlier;
 - smf.run.xml: mutation information gathered by smf (test nodes, working folders, original execution (without mutation));
 - a folder 'mutations' with generated mutants:
   - 'main' the name of the generation;
     - folders for each mutation operators (ABS, AOR, LCR, ROR, UOI);
        - mutations.xml: the list of mutations with the mutation point, the viability, etc.;
        - a folder exec: contains list of impacted test when run the test cases on the mutant;
          - files mutant_x.xml describing the results of the mutation (failins, ignoring, hanging, etc.).

## Contributions

Soon...