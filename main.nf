#!/usr/bin/env nextflow


process parse_csv {
  input:
  path 'in.txt'
  path 'out.txt'

  output:
  stdout

  """
  sleep 10
  cat in.txt > out.txt
  """

}


workflow {
  parse_csv(file(params.input_csv), file(params.output_path))
}
