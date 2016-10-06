package tp3;

import java.util.ArrayList;
import java.util.Collections;

public class Symetrie {
	
	protected int val = 0;
	protected int[][][][] table = new int[176][176][176][176];


	 public static void main(String[] args){
		 Symetrie test = new Symetrie();
		 /*for(int i=0;i<=63;i++)
			 for(int j=0;j<=63;j++){
				// System.out.println(test.dynamique(127,127,i,j));
				 if(test.dynamique(127,127,i,j) == 127){
					 System.out.println("i:"+i);
				 	 System.out.println("j: "+j);
				 }
		 }*/
		 System.out.println(test.dynamique(127,127,126,63));
		 
	 }

	int dynamique(int m, int n, int i, int j) {
		ArrayList<Integer> succ = new ArrayList<Integer>();
		if(m == 1 && n == 1){
			val = -0;
			return val;
		}
		
		
		if(table[m][n][i][j] != 0){
			val = table[m][n][i][j];
			return val;
		}
		else{
			//on casse la chocolat sur la gauche du carre de la mort par x
			for(int k = 1; k<=i; k++){
				succ.add(dynamique(m-k,n,i-k,j));
			}
			//on casse la chocolat sur la droite du carre de la mort par x
			for(int k = 1; k< m-i; k++){
				succ.add(dynamique(m-k,n,i,j));
			}
			//on casse la chocolat sur la dessus du carre de la mort par y
			for(int k = 1; k<=j; k++){
				succ.add(dynamique(m,n-k,i,j-k));
			}
			//on casse la chocolat sur la dessous du carre de la mort par y
			for(int k = 1; k < n-j; k++){
				succ.add(dynamique(m,n-k,i,j));
			}
			
		
		//comparer les values 
		
			if(Collections.min(succ)<=0){
				Collections.sort(succ);
				for(Integer tmp: succ)  { 
					if(tmp <= 0)
						val = tmp;
					else
						break;
				}  
				val = val*(-1)+1;
			}
			else{
				val = (Collections.max(succ)+1)*(-1);
			}
			table[m][n][i][j] 		  = val;
			table[m][n][m-i-1][j] 	  = val;
			table[m][n][i][n-j-1] 	  = val;
			table[m][n][m-i-1][n-j-1] = val;
			table[n][m][j][i]		  = val;
			table[n][m][j][m-i-1]	  = val;
			table[n][m][n-j-1][m]	  = val;
			table[n][m][n-j-1][m-i-1] = val;
			return val;
		
		}
	}

}
