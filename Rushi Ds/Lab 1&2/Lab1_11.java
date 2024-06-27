 
import java.util.Scanner;

public class Lab1_11 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number  : ");
        int n = sc.nextInt();
        int ans = 1;
        for(int i = 2 ; i <= n ; i++ ){
            ans += (i * (i + 1)) / 2;
        }
        System.out.println("Sum = "+ans);
        sc.close();
    }
}
