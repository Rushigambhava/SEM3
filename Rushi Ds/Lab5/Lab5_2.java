import java.util.Scanner;

public class Lab5_2 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int [][] a = new int[3][2];
    int [][] b = new int[2][3];
    int [][] c = new int[3][3];

    System.out.println("entear a matrix1 elements:");
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 2; j++) {
        a[i][j] = sc.nextInt();
      }
    }
    System.out.println("enter a matrix2 elements:");
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
        b[i][j] = sc.nextInt();
      }
    }
    
    System.out.println("The multiplication of the two matrices is:");
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            for(int k = 0; k < 2; k++) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
     for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            System.out.print(c[i][j] + " ");
        }
        }

  
}
}
