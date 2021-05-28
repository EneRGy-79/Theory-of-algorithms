/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fit.knu.ist.ta2.lab5;

import java.util.Comparator;

/**
 *
 * @author Ruslan
 */
public class ByLongComparer implements Comparator<Model> {
    @Override
    public int compare(Model a, Model b){
      return a.getLongField().compareTo(b.getLongField());
    }
}