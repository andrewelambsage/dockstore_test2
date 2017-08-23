#! /usr/bin/env Rscript

library(argparse)


parser = ArgumentParser(description='Generate diploid TPM files for read simulation.')
parser$add_argument('--seed', default = NULL,  type="integer", help = "Seed number to use for RSEM read simulation.")
args = parser$parse_args()

# set seed if seed argument is numeric
if(is.numeric(args$seed)) {
  set.seed(args$seed)
}

