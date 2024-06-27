import java.util.Scanner;

public class Lab4_1{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number of element in the array:");
        int n = sc.nextInt();
        int a[] = new int[n];
        for(int i=0;i<n;i++){
             System.out.println("Enter a"+i+"asdof element in the array:");
            a[i] = sc.nextInt();
        }

         int b[] =new int[n-1];
         
         int R = sc.nextInt();
         System.out.println("Enter a number youn want to delet:");
         for(int i=0;i<R;i++){
            b[i] = a[i];

         }

         b[R]= sc.nextInt();
         for(int i=(R-1);i<n-1;i++){
            b[i-1] = a[i];
         }
        
        for(int i=0;i<n-1;i++){
            System.out.println(b[i]);
        }
    }
}