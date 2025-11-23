method Tribonacci(n: int) returns (result: int)
  requires n >= 0
  ensures result == tribonacci(n)
{
  if n == 0 {
    result := 0;
  } else if n == 1 {
    result := 1;
  } else if n == 2 {
    result := 1;
  } else {
    var a: int := 0;
    var b: int := 1;
    var c: int := 1;
    var i: int := 3;
    
    while i <= n
      invariant 3 <= i <= n+1
      invariant a == tribonacci(i-3)
      invariant b == tribonacci(i-2)
      invariant c == tribonacci(i-1)
      decreases n - i
    {
      result := a + b + c;
      a := b;
      b := c;
      c := result;
      i := i + 1;
    }
    result := c;
  }
}

function tribonacci(n: int): int
  requires n >= 0
  decreases n
{
  if n == 0 then 0
  else if n == 1 then 1
  else if n == 2 then 1
  else tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
}
