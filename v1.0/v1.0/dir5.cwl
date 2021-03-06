class: CommandLineTool
cwlVersion: v1.0
requirements:
  - class: ShellCommandRequirement
  - class: InitialWorkDirRequirement
    listing: $(inputs.indir.listing)
inputs:
  indir: Directory
outputs:
  outlist:
    type: File
    outputBinding:
      glob: output.txt
arguments: ["find", "-L", ".",
  {shellQuote: false, valueFrom: "|"},
  "sort"]
stdout: output.txt