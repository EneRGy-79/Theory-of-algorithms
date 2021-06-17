/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fit.knu.ist.ta2.lab5;

import java.util.Objects;

public class Model {
    private String _stringField;
    private Long _longField;

    public Model(String stringField, Long longField) {
        _stringField = stringField;
        _longField = longField;
    }

    public String getStringField() {
        return _stringField;
    }

    public void setStringField(String _stringField) {
        this._stringField = _stringField;
    }

    public Long getLongField() {
        return _longField;
    }

    public void setLongField(Long _longField) {
        this._longField = _longField;
    }
    
    @Override
    public String toString() {
        return "Model{" + "StringField=" + _stringField + ", LongField=" + _longField + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Model other = (Model) obj;
        if (!Objects.equals(this._longField, other._longField))
            return false;
        if (!Objects.equals(this._stringField, other._stringField))
            return false;
        return true;
    }
}
