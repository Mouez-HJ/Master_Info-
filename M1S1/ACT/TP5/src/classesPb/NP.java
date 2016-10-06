package classesPb;

public abstract class NP extends ExpTime{
    
//on doit pouvoir definir pour le pb la notion de  certificat 
//Attention: on doit pouvoir borner polynomialement la taille du certificat
//	par rapport a la taille du probleme
	abstract public Certificat cert(); 

//Algo de verification d'un certificat pour le probleme
//c'est l'algo A de la definition de NP par les certificats
	abstract public boolean estCorrect(Certificat cert);

//algo exponentiel de decision de la propriete basee sur l'enumeration
// NP est inclus dans EXPTime	
	public boolean aUneSolution() {
		Certificat cert=this.cert();
		cert.reset();
		
		while  (!(cert.estDernier())){ //on balaye l'espace des certifcats  
			System.out.println("************************");
			cert.display();
			if (estCorrect(cert))  
				return true;
			cert.suivant();//un certificat au moins est correct!
		}
	    return estCorrect(cert);

    }

	
//algo non deterministe  polynomial:
//si il existe une solution AU MOINS UNE execution retourne Vrai
//si il n'en existe pas TOUTES les executions retournent faux!
	public boolean aUneSolutionNonDeterministe() {
		Certificat cert=this.cert();
		cert.alea();
        cert.display();
		return this.estCorrect(cert);
    }
}
 