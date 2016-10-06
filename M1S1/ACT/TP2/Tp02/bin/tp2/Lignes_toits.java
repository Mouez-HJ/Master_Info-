package tp2;

import java.util.*;
import java.io.PrintStream;

public class Lignes_toits{
    protected ArrayList<Point> a = null;
    protected ArrayList<Point> b = null;
	private ArrayList<Point> result;
	private ArrayList<Point> entree;

    public static void main(String[] args){
        ArrayList<Point> a = new ArrayList<Point>();
        ArrayList<Point> b = new ArrayList<Point>();
        a.add(new Point(1,10));
        a.add(new Point(5,6));
        a.add(new Point(8,0));
        a.add(new Point(10,8));
        a.add(new Point(12,0));
        b.add(new Point(2,12));
        b.add(new Point(7,0));
        b.add(new Point(9,4));
        b.add(new Point(11,2));
        b.add(new Point(14,0));
        new Lignes_toits(a,b).n();
    }
    
    public Lignes_toits(ArrayList<Point> a ,ArrayList<Point> b){
        this.a = a;
        this.b = b;
    }
    
    public ArrayList<Point> n(){
        result = new ArrayList<Point>();
        entree = new ArrayList<Point>();
        int i = 0;
        int j = 0;
        int length = a.size()+b.size();
        result.add(a.get(0));
        
        /*fusion les deux tableau*/
        while(i!=a.size() && j!=b.size()){
            if(a.get(i).x <= b.get(j).x){
                entree.add(a.get(i));
                i++;
            }
            else{
                entree.add(b.get(j));
                j++;
            }
        }
        
        while(i!=a.size())
            entree.add(a.get(i++));
        
        while(j!=b.size())
            entree.add(b.get(j++));
       
                       
        /*Lignes de toits*/
        for(i = 0; i< length-2; i++){
            if(entree.get(i+1).y>entree.get(i+2).y && entree.get(i+1).y>entree.get(i).y){
                result.add(entree.get(i+1));
            }
            else if(entree.get(i+1).y<entree.get(i+2).y && entree.get(i+1).y<entree.get(i).y){
                result.add(entree.get(i+2));
            }
            else if(entree.get(i+1).y<entree.get(i+2).y && entree.get(i+1).y>entree.get(i).y){
                result.add(entree.get(i+1));
                //result.add(entree.get(i+2));
            }
            else
                result.add(new Point(entree.get(i+2).x, entree.get(i+1).y));
        }
        
       result = RemoveSame(result);
       System.out.println(result);
        return result;
    
        
    }
    
    private ArrayList<Point> RemoveSame(ArrayList<Point> list)
    {           
        for (int i = 0; i < list.size() - 1; i++)
        {
            for (int j = i + 1; j < list.size(); j++)
            {
                if (list.get(i).equals(list.get(j)))
                {
                    list.remove(j);
                    j--;
                }
            }
        }
        return list;
    }
}

    
