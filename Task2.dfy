method FindFirstNegative(a: array<int>) returns (index: int)
  requires a != null  
  ensures index == -1 || (0 <= index < a.Length && a[index] < 0)  
  ensures index == -1 ==> forall i | 0 <= i < a.Length :: a[i] >= 0  
  ensures index != -1 ==> forall j | 0 <= j < index :: a[j] >= 0 
{
  index := 0;
  

  while index < a.Length
    invariant 0 <= index <= a.Length 
    invariant forall j | 0 <= j < index :: a[j] >= 0  
    decreases a.Length - index  
  {
    if a[index] < 0 {
      return; 
    }
    index := index + 1;
  }
  
  index := -1;
}
