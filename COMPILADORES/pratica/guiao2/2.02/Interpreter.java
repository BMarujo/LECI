@SuppressWarnings("CheckReturnValue")
public class Interpreter extends SuffixCalculatorBaseVisitor<Object> {

   @Override
   public Object visitStat(SuffixCalculatorParser.StatContext ctx) {
      if (ctx.expr() != null) {
         Double result = (Double)visit(ctx.expr());
         System.out.println(result == null ? "Error" : result);
      }
      return null; 
   }

   @Override
   public Object visitExprNumber(SuffixCalculatorParser.ExprNumberContext ctx) {
      return Double.parseDouble(ctx.NUMBER().getText());
   }

   @Override
   public Object visitExprSuffix(SuffixCalculatorParser.ExprSuffixContext ctx) {
      Double n1 =(Double) visit(ctx.expr(0));
      Double n2 =(Double) visit(ctx.expr(1));
      
      switch (ctx.op.getText()) {
         case "*":
            return n1 * n2;
         case "/":
            return n2 == 0 ? null : n1 / n2;
         case "+":
            return n1 + n2;
         case "-":
            return n1 - n2;
         default:
            return null;
      }
   }
}
