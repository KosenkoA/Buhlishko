package edu.kpi.domain;

public enum AlcoholType {
	Beer, Cognac, Wine;
	
    public static AlcoholType fromInteger(int x) {
        switch(x) {
        case 0:
            return Beer;
        case 1:
            return Cognac;
        case 2:
            return Wine;
        }
        return null;
    }
}