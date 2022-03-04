MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java

MarkdownParseTest.class: MarkdownParseTest.java
	javac -cp ".;./lib/*" MarkdownParseTest.java MarkdownParse.java

test: MarkdownParse.java MarkdownParse.class MarkdownParseTest.class
	java -cp ".;./lib/*" org.junit.runner.JUnitCore MarkdownParseTest

