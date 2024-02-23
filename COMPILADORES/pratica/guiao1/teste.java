// Source code is decompiled from a .class file using FernFlower decompiler.
import java.util.Scanner;

public class teste {
   private static Scanner a;

   public teste() {
   }

   public static void main(String[] var0) {
      double var5 = 0.0;
      System.out.printf("Operation (number op number): ");
      double var1 = a();
      if (!a.hasNext()) {
         System.err.printf("ERROR: read operator failure\n");
         System.exit(1);
      }

      String var9 = a.next();
      double var3 = a();
      switch (var9) {
         case "+":
            var5 = var1 + var3;
            break;
         case "-":
            var5 = var1 - var3;
            break;
         case "*":
            var5 = var1 * var3;
            break;
         case "/":
            if (var3 == 0.0) {
               System.err.printf("ERROR: divide by zero\n");
               System.exit(1);
            }

            var5 = var1 / var3;
            break;
         default:
            System.err.printf("ERROR: invalid operator \"%s\"\n", var9);
            System.exit(1);
      }

      System.out.printf("%g %s %g = %g\n", var1, var9, var3, var5);
   }

   private static double a() {
      if (!a.hasNextDouble()) {
         System.err.printf("ERROR: read number failure\n");
         System.exit(1);
      }

      return a.nextDouble();
   }

   static {
      a = new Scanner(System.in);
   }
}
