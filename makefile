MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java

test: MarkdownParse.class MarkdownParseTest.java
	javac -cp lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:./ MarkdownParseTest.java
	java -cp .:./lib/* org.junit.runner.JUnitCore MarkdownParseTest