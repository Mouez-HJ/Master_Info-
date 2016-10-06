package comparaisons;

public class FonctionsReference {

	private int[] sizes;

	public FonctionsReference(int[] sizes) {
		this.sizes = sizes;
	}
	
	/**
	 * Retourne le tableau de toutes les valeurs de n^pow pour tous
	 * les n présents dans this.sizes.
	 * @param pow puissance
	 * @return tableau des résultats
	 */
	public double[] puissance (double pow) {
		double[] values = new double[this.sizes.length];
		
		for (int idx=0 ; idx<this.sizes.length ; idx++)
			values[idx] = Math.pow(this.sizes[idx], pow);
		
		return values;
	}
	
	/**
	 * Retourne le tableau de toutes les valeurs de n^pow pour tous
	 * les n présents dans this.sizes.
	 * @param pow puissance
	 * @return tableau des résultats
	 */
	public double[] logarithme () {
		double[] values = new double[this.sizes.length];
		
		for (int idx=0 ; idx<this.sizes.length ; idx++)
			values[idx] = Math.log(this.sizes[idx]);
		
		return values;
	}
    
    public double[] nlogarithme(){
        double[] values = new double[this.sizes.length];
        for (int idx=0 ; idx<this.sizes.length ; idx++)
            values[idx] = Math.log(Math.pow(this.sizes[idx],this.sizes[idx]));
        
        return values;

    }
	
    public double[] exponential(){
        double[] values = new double[this.sizes.length];
        for (int idx=0 ; idx<this.sizes.length ; idx++)
            values[idx] = Math.exp(this.sizes[idx]);
        
        return values;
    }
    
    public double[] k_puissance (double k) {
        double[] values = new double[this.sizes.length];
        
        for (int idx=0 ; idx<this.sizes.length ; idx++)
            values[idx] = Math.pow(k,this.sizes[idx]);
        
        return values;
    }
    
    public double[] n_puissance () {
        double[] values = new double[this.sizes.length];
        
        for (int idx=0 ; idx<this.sizes.length ; idx++)
            values[idx] = Math.pow(this.sizes[idx],this.sizes[idx]);
        
        return values;
    }
    
    public double[]  factorielle() {
        double[] values = new double[this.sizes.length];
        
        for (int idx=0 ; idx<this.sizes.length ; idx++)
            values[idx] = values[idx-1]*this.sizes[idx];
        
        return values;
    }
}
