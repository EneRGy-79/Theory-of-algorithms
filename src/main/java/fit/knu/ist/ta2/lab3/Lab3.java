/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package fit.knu.ist.ta2.lab3;

import java.util.List;
import java.util.Arrays;
import java.util.Random;
import java.util.ArrayList;

/**
 *
 * @author Ivan
 */

public class Lab3 {
    int[] array;
    int[] arrfib;

    public void InitArray(int length)
    {
        array = new int[length];
        
        Random random = new Random();
        for (int i = 0; i < length; i++)
            array[i] = random.nextInt(50);
    }
    
    public void InitArrFib(int length)
    {
        arrfib = new int[length];
        arrfib[0] = 0;
        arrfib[1] = 1;
        for (int i = 2; i < length; i++) {
         arrfib[i] = arrfib[i - 1] + arrfib[i - 2];}
    }
    
    public String DisplayArray()
    {
        return Arrays.toString(array);
    }
    
    public int CountSum(int length)
    {
    int sum=0;
     for (int i=0; i<length; i++)
      {
        for (int g=0; g<length; g++){
          if(array[i]==arrfib[g])
            {
            sum+= array[i];
            break;
            }
       }
      }
      return sum;
    }
}

