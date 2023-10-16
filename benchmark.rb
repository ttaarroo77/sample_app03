require 'benchmark'

STRING_HASH = { :foo => "bar" } 
SYMBOL_HASH = { "foo" => "bar" }
NUMBE_HASH = {100 => "bar"}
str,sym,num = "foo", :foo, 100

n=100_100_000
Benchmark.benchmark do |x|
  x.report("String") {n.times { STRING_HASH[str] }}
  x.report("Symbol") {n.times { SYMBOL_HASH[sym] }}
  x.report("Number") {n.times { NUMBER_HASH[num] }}
end