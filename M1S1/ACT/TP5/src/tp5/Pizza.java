package tp5;

import classesPb.Certificat;
import classesPb.NP;

public class Pizza extends NP{
	protected String[][] context;//soit H soit T dans chaque casse
	protected int l;//largeur de pizza
	protected int h;//hauteur de pizza
	protected int c;//surface maximum
	protected int n;//n: nombre de jambon minimum
	//constructeur 
	public Pizza (int l, int h, String con[][], int c, int n){
															
		this.l = l;
		this.h = h;
		this.context = con;
		this.c = c;
		this.n = n;
	}
	
	public CertificatPizza cert() { 
		return new CertificatPizza(this);
	}
 


	@Override
	//sertificate est correcter 
	public boolean estCorrect(Certificat c) {
		int flag;//si il y a "H", on met flag equal 1; sinon 0	
		int[][] tmp = new int[50][50]; //instancier un tableau tmp 
		CertificatPizza cert = (CertificatPizza) c;
		for(int i = 0 ; i < cert.c.size() ; i++){//verification de surface
			if(cert.c.get(i)[2] * cert.c.get(i)[3] > this.c)
				return false;
			else{
				flag = 0;
				for(int p=cert.c.get(i)[0]; p < cert.c.get(i)[0]+cert.c.get(i)[3]; p++){//hauteur
					for(int q=cert.c.get(i)[1]; q<cert.c.get(i)[1]+cert.c.get(i)[2]; q++){//largeur
						if(context[p][q].equals("H"))
							flag++;
						tmp[p][q] ++ ;					
					}
				}

				if(flag < this.n)//verification de H
					return false;
			}		
		}
		 for (int[] e : tmp) {//verification de chevauchement
			 for(int ins : e){
				 if(ins > 1)
          			return false;
			 }
		}
		return true;
	}

}
