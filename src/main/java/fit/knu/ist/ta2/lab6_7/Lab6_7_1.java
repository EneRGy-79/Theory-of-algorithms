/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fit.knu.ist.ta2.lab6_7;

import java.util.Arrays;
import java.util.Random;

public class Lab6_7_1 {
    int[] array;
    
    public void InitArray(int length)
    {
        array = new int[length];
        
        Random random = new Random();
        for (int i = 0; i < length; i++)
            array[i] = random.nextInt(10);
    }
    
    public String DisplayArray()
    {
        return Arrays.toString(array);
    }
    
    public int CountSum(int i, int sum)
    {
        if(i == array.length)
            return 0;
        sum += array[i] + CountSum(i + 1, sum);
        return sum;
    }
}
