method Factorial(n: int) returns (result: int)
  requires n >= 0
  ensures result == factorial(n)
{
  result := 1;
  var i: int := 1;
  
  while i <= n
    invariant 1 <= i <= n+1
    invariant result == factorial(i-1)
    decreases n - i
  {
    result := result * i;
    i := i + 1;
  }
}

function factorial(n: int): int
  requires n >= 0
  decreases n
{
  if n == 0 then 1 else n * factorial(n-1)
}
