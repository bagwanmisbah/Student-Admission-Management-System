package com.unknown;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

//import sun.org.mozilla.javascript.internal.regexp.SubString;
	



public class Suffle{
	public static void shuffleArray(int[] ar)
	  {
	    // If running on Java 6 or older, use `new Random()` on RHS here
	    Random rnd = ThreadLocalRandom.current();
	    for (int i = ar.length - 1; i > 0; i--)
	    {
	      int index = rnd.nextInt(i + 1);
	      // Simple swap
	      int a = ar[index];
	      ar[index] = ar[i];
	      ar[i] = a;
	    }
	  }
    static public void main(String[] args)
    {
    	/*String[] ar=new String[5];
        String a1="a";
        String a2="b";
        String a3="c";
        String a4="d";
        String a5="e";
        ar[0]=a1;
        ar[1]=a2;
        ar[2]=a3;
        ar[3]=a4;
        ar[4]=a5;
        for(int i=0;i<ar.length;i++)
        {
        	System.out.println(ar[i]);
        }
        Suffle.shuffleArray(ar);
        System.out.println("-------------");
        for(int i=0;i<ar.length;i++)
        {
        	System.out.println(ar[i]);
        }
        Suffle.shuffleArray(ar);
        System.out.println("-------------");
        for(int i=0;i<ar.length;i++)
        {
        	System.out.println(ar[i]);
        }
        Suffle.shuffleArray(ar);
        System.out.println("-------------");
        for(int i=0;i<ar.length;i++)
        {
        	System.out.println(ar[i]);
        }*/
    	//Mailer.EmailSending("sandesh.srccode@gmail.com", "test","test");
    }
}