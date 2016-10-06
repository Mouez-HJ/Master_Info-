package tp5;

import java.io.FileReader;
import java.util.Scanner;

public class TestPizza {
	public static void main(String[] arg) throws Exception {
	    Scanner donnee = new Scanner (new FileReader(arg[0]));
	    for (int i=0; i<3; i++) donnee.nextLine();
	    donnee.next();
	    int l= donnee.nextInt();
	    int h= donnee.nextInt();
 	    System.out.println(l+" "+h);
	    for (int i=0; i<4; i++) donnee.nextLine();//sauter le 4 premier ligne 
	    String D[][]=new String[h][l];
	    for (int i=0; i<h; i++){
	       for (int j=0; j<l; j++) {D[i][j]= donnee.next();System.out.println(D[i][j]+" ");}
	       System.out.println();}
        Pizza pb=new Pizza(l,h,D,Integer.parseInt(arg[1]),Integer.parseInt(arg[2]));
        System.out.println(arg[3]);

    	 // les differents modes
        if (arg[3].equals("-verif")) { 
    	    CertificatPizza c= pb.cert();
        	System.out.print("Proposez un certificat :");
        	c.saisie();
        	System.out.print("votre certificat est-il correct? ");
        	System.out.println(pb.estCorrect(c));
        	}
        else if (arg[3].equals("-part")) {
        	 CertificatPizza c= pb.cert();
        	 c.alea();
        	 System.out.println(c.c.size());  
        	 }
      
    	}

	 	

}
