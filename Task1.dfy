method Abs(x: int) returns (x': int)
  ensures x' >= 0
  ensures x' == x || x' == -x
{
  if x >= 0 {
    x' := x;
  } else {
    x' := -x;
  }
}
