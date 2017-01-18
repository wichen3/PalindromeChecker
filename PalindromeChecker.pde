public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newReverse = onlyLetters(reverse(word)).toLowerCase();
  String original = onlyLetters(word).toLowerCase();
  if(newReverse.equals(original))
  {
    return true;
  }
  else
  {
    return false;    
  }
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length() - 1; i >= 0; i--)
  {
    sNew = sNew + str.charAt(i);
  }
  return sNew;
}
public String onlyLetters(String sWord){
  String s = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    if(sWord.substring(i, i+1).equals(" ") == false)
    {
      if(Character.isLetter(sWord.charAt(i)) == true)
      {
        s = s + sWord.substring(i, i + 1);
      }
    }
  }
  return s;
}



