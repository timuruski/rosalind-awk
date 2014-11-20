#! /usr/bin/env awk -f
BEGIN {
  symbols["A"] = 0
  symbols["C"] = 0
  symbols["G"] = 0
  symbols["T"] = 0
}

{
  chars = length($0)
  for(i = 1; i <= chars; i++) {
    char = substr($0, i, 1)
    symbols[char]++
    # printf("%s", char)
  }
}

END {
  print symbols["A"], symbols["C"], symbols["G"], symbols["T"]
}
