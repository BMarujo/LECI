import java.util.Iterator;
import org.antlr.v4.runtime.tree.TerminalNode;

@SuppressWarnings("CheckReturnValue")
public class Execute extends HelloBaseVisitor<String> {

   @Override public String visitTop(HelloParser.TopContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitGreetings(HelloParser.GreetingsContext ctx) {
      System.out.println("Hello " + visit(ctx.name()));
      return null;  }

   @Override public String visitBye(HelloParser.ByeContext ctx) {
      System.out.println("Bye " + visit(ctx.name()));
      return null;

   }

   @Override public String visitName(HelloParser.NameContext ctx) {
      Iterator<TerminalNode> iter = ctx.ID().iterator();
      String res = "";
      while (iter.hasNext()) {
         res += iter.next() + " ";
      }

      return res;
   }
}
