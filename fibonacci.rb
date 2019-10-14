def recursive_fib(n)
  if n == 1 || n == 0
    return n
  else
    n = recursive_fib(n-1) + recursive_fib(n-2)
  end
end

def iterative_fib(n)
  sequence = [0, 1]
  index = 2
  while index <= n
    sequence[index]= sequence[index-1] + sequence[index-2]
    index += 1
  end
  return sequence[n]
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end