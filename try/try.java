import java.util.regex.*;
class try1 {
   public static void main(String[] args) {   
      String input = "This is an apple. These are 33 (thirty-three) apples";
      String regexe = "Th";   
      Pattern pattern = Pattern.compile(regexe);
      
      Matcher matcher = pattern.matcher(input);
      while (matcher.find()) {     // find the next match
         System.out.println("find() found the pattern \"" + matcher.group()
               + "\" starting at index " + matcher.start()
               + " and ending at index " + matcher.end());
      }       
    }
}
