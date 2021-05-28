/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package fit.knu.ist.ta2.lab3;

import java.util.Arrays;
import java.util.Random;

/**
 *
 * @author Ivan
 */


/*public class Fibonacci {
    public static long fib(int n) {
        if (n <= 1) return n;
        else return fib(n-1) + fib(n-2);
  
int n0, n1, buff;
for(if buff < 50)
{
buff = n1;
n1 += n0;
n0 = buff;
}*/
public class Lab3 {
    private int arrayLength;
    private int lowerBorder;
    private int upperBorder;
    private int numberToSearch;
    private int[] array;
    
    public Lab3()
    {
        arrayLength = 50;
        lowerBorder = 1;
        upperBorder = 50;
        numberToSearch = 5;
        array = new int[arrayLength];
    }
    
    public Lab3(int[] arr)
    {
        array = arr;
    }
    
    public void InitArray()
    {
        Random rd = new Random();
        for (int i = 0; i < array.length; i++)
           array[i] = rd.nextInt(upperBorder + 1);
    }
    
    public int FindSequenceLength()
    {
        int lenMax = 0;
        int currentLen = 0;
        for (int i = 0; i < array.length; i++) {
            if(array[i] == numberToSearch)
                currentLen++;
            else
            {
                if(lenMax < currentLen)
                    lenMax = currentLen;
                currentLen = 0;
            }
        }
        return lenMax;
    }
    
    public String DisplayArray()
    {
        return Arrays.toString(array);
    }
}

