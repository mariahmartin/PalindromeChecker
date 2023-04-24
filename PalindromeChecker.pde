public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}


public boolean palindrome(String word)
{
  String justLetters = noCapitals(noSpaces(onlyLetters(word)));
  if (isPalindrome(justLetters))
    return true;
  else
    return false;
}



public boolean isPalindrome(String sWord) {
  if (sWord.equals(reverse(sWord)))
  {
    return true;
  } else
  {
    return false;
  }
}

public String noCapitals(String sWord) {
  return sWord.toLowerCase();
}

public String noSpaces(String sWord) {
  String newString = "";
  for (int i = 0; i< sWord.length(); i++)
  {
    if (sWord.charAt(i) != ' ')
    {
      newString += sWord.substring(i, i+1);
    }
  }
  return newString;
}

public String onlyLetters(String sString) {
  String newString = "";
  for (int i = 0; i < sString.length(); i++)
    if (Character.isLetter(sString.charAt(i)))
    {
      newString += sString.substring(i, i+1);
    } else if (Character.isDigit(sString.charAt(i)))
    {
      newString += sString.substring(i, i+1);
    }
  return newString;
}

public String reverse(String sWord) {
  String newString = "";
  for (int i = sWord.length() - 1; i>-1; i--)
  {
    newString += sWord.substring(i, i+1);
  }
  return newString;
}

/*public int numLetters(String sString) {
 String newString = "";
 for (int i = 0; i < sString.length(); i++)
 if (Character.isLetter(sString.charAt(i)))
 {
 newString+= sString.charAt(i);
 }
 return newString.length();
 }*/
