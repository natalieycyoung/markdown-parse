MarkdownParse.class: MarkdownParse.java
	javac -g MarkdownParse.java

MarkdownParseTest.class: MarkdownParseTest.java
	javac -g -cp ".;./lib/*" MarkdownParseTest.java MarkdownParse.java

test: MarkdownParse.java MarkdownParse.class MarkdownParseTest.class
	java -cp ".;./lib/*" org.junit.runner.JUnitCore MarkdownParseTest

debug-test: MarkdownParse.java MarkdownParse.class MarkdownParseTest.class
	jdb -classpath ".;./lib/*" org.junit.runner.JUnitCore MarkdownParseTest
