#!/usr/bin/env cwl-runner
  
class: CommandLineTool
id: "dockstore test"
label: "dockstore test"
cwlVersion: v1.0 
doc: rscript for testing dockstore

requirements:
  - class: DockerRequirement
    dockerPull: dockstore_test2

inputs:
  seed:
    type: int
    default: 1
    doc: "seed arg"
    inputBinding:
      position: 1
      prefix: --seed

  output:
    type: string
    default: ./output.txt
    doc: "output file arg"
    inputBinding:
      position: 2

outputs:
  text_file:
    type: File
    outputBinding:
      glob: $(inputs.output)
    doc: "text file"
    
baseCommand: [set_seed.R]
