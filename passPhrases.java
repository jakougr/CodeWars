package codewars;
/*https://www.codewars.com/kata/playing-with-passphrases/java
Everyone knows passphrases. One can choose passphrases from poems, songs, movies names and so on but frequently they can be guessed due to common cultural references. You can get your passphrases stronger by different means. One is the following:

choose a text in capital letters including or not digits and non alphabetic characters,
1.shift each letter by a given number but the transformed letter must be a letter (circular shift), 
2.replace each digit by its complement to 9, 
3.keep such as non alphabetic and non digit characters, 
4.downcase each letter in odd position, upcase each letter in even position (the first character is in position 0), 
5.reverse the whole result.

#Example:

your text: "BORN IN 2015!", shift 1

1 + 2 + 3 -> "CPSO JO 7984!"

4 "CpSo jO 7984!"

5 "!4897 Oj oSpC"

With longer passphrases it's better to have a small and easy program. Would you write it?

https://en.wikipedia.org/wiki/Passphrase
*/

public class PassPhrases {

	public static void main(String[] args) {
		playPass("I LOVE YOU!!!ZA", 1);

	}

	public static String playPass(String s, int n) {
		String result = "";

		System.out.println(s);
		result = shift(s, n);
		System.out.println(result);

		return result;
	}

	static public String shift(String msg, int shift) {
		String s = "";
		int len = msg.length();
		for (int x = 0; x < len; x++) {
			if (Character.isAlphabetic(msg.charAt(x))) {
				char c = (char) (msg.charAt(x) + shift);

				c = (c > 'Z' || c < 'A') ?(char)(msg.charAt(x) - (26-shift)) : c;
				c = fixcase(c, x);
				s += c;

			} else if (Character.isDigit(msg.charAt(x))) {
				s += (char) ('0' + complement(Character.getNumericValue(msg.charAt(x))));
			} else {
				s += (char) msg.charAt(x);
			}
		}
		return new StringBuffer(s).reverse().toString();
	}

	public static int complement(int x) {
		return 9 - x;
	}

	public static char fixcase(char c, int x) {
		return ((x % 2) != 0) ? Character.toLowerCase(c) : Character.toUpperCase(c);
	}
}