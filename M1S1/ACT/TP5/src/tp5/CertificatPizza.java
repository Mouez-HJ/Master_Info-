package tp5;

import java.awt.List;
import java.util.ArrayList;
import java.util.Scanner;

import classesPb.Certificat;

public class CertificatPizza implements Certificat{
	protected final Pizza pizza;
	protected int l;
	protected int h;
    protected ArrayList<Integer[]> c= new ArrayList<Integer[]>();

	public CertificatPizza(Pizza pizza){
		this.pizza = pizza;
        this.l = pizza.l;
        this.h = pizza.h;
      //  certificat = new ArrayList<Integer[]>();
	}

	@Override
	public void saisie() {
		Scanner scanner = new Scanner(System.in); 
		Integer[] part = new Integer[4];
		int i = 0;
		while(scanner.hasNextInt()){ 
			int num = scanner.nextInt(); 
			part[i++] = num;
			if(i%4 == 0){
				c.add(part);
				part = new Integer[4];
				i = 0;
			}
		}    	
	}

	@Override
	public void display() {
		int j;
		System.out.print("(");
		for(int i = 0; i < c.size(); i++){
			System.out.print("[");
			for(j = 0; j<3; j++){
				System.out.print(c.get(i)[j]+",");
			}
			System.out.print(c.get(i)[j]+"]");			
		}
		
	}
	
	 static class StopMsgException extends RuntimeException {
     }

	public void part(int i, int j, int m, int n){//m列n行 m*n i行j列
		if(i == h-1 && j == l-1){
			throw new StopMsgException();		}
		Integer[] tmp  = {i,j,m,n};
		c.add(tmp);
		if(m+j == l && n+i == h){
			if(j == l-1){
				i++;
				j=0;
			}
			else
				j++;
			m=0;
			n=1;
		}
	
			for(int p=m+1; p<=l-j; p++){
					part(i,j,p,n);
				
			}
			for(int q=n+1; q<=h-i; q++){
				m = 1;
				part(i,j,m,q);		
		}
		
		
	}

	@Override
	public void alea() {//tous les part possible
		 try {
		   		part(0,0,1,1);		
		       } catch (StopMsgException e) {
		           System.out.println(e);
		       }
	}

	@Override
	public void reset() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean estDernier() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void suivant() {
		// TODO Auto-generated method stub
		
	}
	
	

}
