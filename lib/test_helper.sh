# Tiny test suite.

solve() {
  echo "$@" | ./solution
}

fail() {
 echo >&2 "Fail: ${1}"
 exit 1
}

assert_eql() {
  expected="${1}"
  actual="${2}"
  message="Expected \"${expected}\" to equal \"${actual}\""

  [[ $actual == $expected ]] || fail "${message}"
}
