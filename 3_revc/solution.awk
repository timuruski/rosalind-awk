#! /usr/bin/env awk -f

# This generates the reverse compliment of a DNA sequence.
BEGIN {
  compliments["A"] = "T"
  compliments["T"] = "A"
  compliments["C"] = "G"
  compliments["G"] = "C"
}

{
  chars = length($0)
  for(i = chars; i >= 1; i--) {
    compliment = compliment compliments[substr($0, i, 1)]
  }

  print compliment
}
