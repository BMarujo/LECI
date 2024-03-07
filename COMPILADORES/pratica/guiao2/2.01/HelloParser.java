// Generated from Hello.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class HelloParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, INT=3, ID=4, WS=5;
	public static final int
		RULE_main = 0, RULE_bye = 1, RULE_greetings = 2, RULE_expr = 3;
	private static String[] makeRuleNames() {
		return new String[] {
			"main", "bye", "greetings", "expr"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'bye'", "'hello'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, "INT", "ID", "WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Hello.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public HelloParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MainContext extends ParserRuleContext {
		public List<GreetingsContext> greetings() {
			return getRuleContexts(GreetingsContext.class);
		}
		public GreetingsContext greetings(int i) {
			return getRuleContext(GreetingsContext.class,i);
		}
		public List<ByeContext> bye() {
			return getRuleContexts(ByeContext.class);
		}
		public ByeContext bye(int i) {
			return getRuleContext(ByeContext.class,i);
		}
		public MainContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_main; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterMain(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitMain(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitMain(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MainContext main() throws RecognitionException {
		MainContext _localctx = new MainContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_main);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(10); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(10);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case T__1:
					{
					setState(8);
					greetings();
					}
					break;
				case T__0:
					{
					setState(9);
					bye();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(12); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__0 || _la==T__1 );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ByeContext extends ParserRuleContext {
		public Token ID;
		public List<TerminalNode> ID() { return getTokens(HelloParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(HelloParser.ID, i);
		}
		public ByeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bye; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterBye(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitBye(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitBye(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ByeContext bye() throws RecognitionException {
		ByeContext _localctx = new ByeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_bye);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(14);
			match(T__0);
			setState(16); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(15);
				((ByeContext)_localctx).ID = match(ID);
				}
				}
				setState(18); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==ID );
			System.out.println("Tchau "+(((ByeContext)_localctx).ID!=null?((ByeContext)_localctx).ID.getText():null));
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class GreetingsContext extends ParserRuleContext {
		public Token ID;
		public ExprContext expr;
		public TerminalNode ID() { return getToken(HelloParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public GreetingsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_greetings; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterGreetings(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitGreetings(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitGreetings(this);
			else return visitor.visitChildren(this);
		}
	}

	public final GreetingsContext greetings() throws RecognitionException {
		GreetingsContext _localctx = new GreetingsContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_greetings);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(22);
			match(T__1);
			setState(23);
			((GreetingsContext)_localctx).ID = match(ID);
			setState(24);
			((GreetingsContext)_localctx).expr = expr();
			System.out.println("Olá "+(((GreetingsContext)_localctx).ID!=null?((GreetingsContext)_localctx).ID.getText():null) + ((GreetingsContext)_localctx).expr.v);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public int v;
		public Token INT;
		public TerminalNode INT() { return getToken(HelloParser.INT, 0); }
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).enterExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof HelloListener ) ((HelloListener)listener).exitExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof HelloVisitor ) return ((HelloVisitor<? extends T>)visitor).visitExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		ExprContext _localctx = new ExprContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_expr);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(27);
			((ExprContext)_localctx).INT = match(INT);
			 ((ExprContext)_localctx).v =  (((ExprContext)_localctx).INT!=null?Integer.valueOf(((ExprContext)_localctx).INT.getText()):0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\u0004\u0001\u0005\u001f\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001"+
		"\u0002\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0001\u0000\u0001\u0000"+
		"\u0004\u0000\u000b\b\u0000\u000b\u0000\f\u0000\f\u0001\u0001\u0001\u0001"+
		"\u0004\u0001\u0011\b\u0001\u000b\u0001\f\u0001\u0012\u0001\u0001\u0001"+
		"\u0001\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0000\u0000\u0004\u0000\u0002"+
		"\u0004\u0006\u0000\u0000\u001d\u0000\n\u0001\u0000\u0000\u0000\u0002\u000e"+
		"\u0001\u0000\u0000\u0000\u0004\u0016\u0001\u0000\u0000\u0000\u0006\u001b"+
		"\u0001\u0000\u0000\u0000\b\u000b\u0003\u0004\u0002\u0000\t\u000b\u0003"+
		"\u0002\u0001\u0000\n\b\u0001\u0000\u0000\u0000\n\t\u0001\u0000\u0000\u0000"+
		"\u000b\f\u0001\u0000\u0000\u0000\f\n\u0001\u0000\u0000\u0000\f\r\u0001"+
		"\u0000\u0000\u0000\r\u0001\u0001\u0000\u0000\u0000\u000e\u0010\u0005\u0001"+
		"\u0000\u0000\u000f\u0011\u0005\u0004\u0000\u0000\u0010\u000f\u0001\u0000"+
		"\u0000\u0000\u0011\u0012\u0001\u0000\u0000\u0000\u0012\u0010\u0001\u0000"+
		"\u0000\u0000\u0012\u0013\u0001\u0000\u0000\u0000\u0013\u0014\u0001\u0000"+
		"\u0000\u0000\u0014\u0015\u0006\u0001\uffff\uffff\u0000\u0015\u0003\u0001"+
		"\u0000\u0000\u0000\u0016\u0017\u0005\u0002\u0000\u0000\u0017\u0018\u0005"+
		"\u0004\u0000\u0000\u0018\u0019\u0003\u0006\u0003\u0000\u0019\u001a\u0006"+
		"\u0002\uffff\uffff\u0000\u001a\u0005\u0001\u0000\u0000\u0000\u001b\u001c"+
		"\u0005\u0003\u0000\u0000\u001c\u001d\u0006\u0003\uffff\uffff\u0000\u001d"+
		"\u0007\u0001\u0000\u0000\u0000\u0003\n\f\u0012";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}