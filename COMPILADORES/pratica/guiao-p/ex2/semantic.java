@SuppressWarnings("CheckReturnValue")
public class semantic extends FracLangBaseVisitor<Boolean> {

   @Override public Boolean visitProgram(FracLangParser.ProgramContext ctx) {
      Boolean res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Boolean visitStat(FracLangParser.StatContext ctx) {
      Boolean res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Boolean visitDisplay(FracLangParser.DisplayContext ctx) {
      Boolean res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Boolean visitAssign(FracLangParser.AssignContext ctx) {
      Boolean res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Boolean visitExpr(FracLangParser.ExprContext ctx) {
      Boolean res = null;
      return visitChildren(ctx);
      //return res;
   }
}
