@SuppressWarnings("CheckReturnValue")
public class Execute extends HelloBaseVisitor<String> {

   @Override public String visitMain(HelloParser.MainContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitBye(HelloParser.ByeContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitGreetings(HelloParser.GreetingsContext ctx) {
      String res = null;
      System.out.println("Hello, world!");
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitExpr(HelloParser.ExprContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }
}
