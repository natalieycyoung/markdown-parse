MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java

MarkdownParseTest.class: MarkdownParseTest.java
	javac -cp .:./lib/junit-4.13.2.jar:./lib/hamcrest-core-1.3.jar MarkdownParseTest.java MarkdownParse.java

test: MarkdownParse.java MarkdownParse.class MarkdownParseTest.class
	java -cp .:./lib/junit-4.13.2.jar:./lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkdownParseTest

