int p = 0;
int qu = 1;
public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  
	for(int i = 0; i < sWord.length(); i++){
    	if(sWord.substring(i,i+1).equals("a")){
      		p = i;
          return i;
    	}
    	if(sWord.substring(i,i+1).equals("e")){
      		p = i;
          return i;
    	}
    	if(sWord.substring(i,i+1).equals("i")){
      		p = i;
          return i;
    	}
    	if(sWord.substring(i,i+1).equals("o")){
      		p = i;
          return i;
    	}
    	if(sWord.substring(i,i+1).equals("u")){
      		p = i;
          return i;
    	}
  	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{ 
  if(findFirstVowel(sWord) == 0){
    return sWord + "way";
  }else if(sWord.substring(0,2).equals("qu")){
    return sWord.substring(2) + "quay";
  }
  if(findFirstVowel(sWord) != -1){
    return sWord.substring(p)+sWord.substring(0,p)+"ay";
  }
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "Error";
	}
}
