import static org.junit.Assert.*;
import org.junit.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.io.IOException;

public class MarkdownParseTest
{
    @Test
    public void addition()
	{
        assertEquals(2, 1 + 1);
    }

	@Test
	public void multiplication()
	{
		assertEquals(4, 2 * 2);
	}

	@Test
	public void testGetLinks() throws IOException
	{
		Path fileName = Path.of("test-file.md");
		String contents = Files.readString(fileName);
		
		assertEquals("[https://something.com, some-page.html]", MarkdownParse.getLinks(contents).toString());
	}

	@Test
	public void testGetLinksFile3() throws IOException
	{
		Path fileName = Path.of("testFile3.md");
		String contents = Files.readString(fileName);
		
		assertEquals("[https::look parentheses(]", MarkdownParse.getLinks(contents).toString());
	}
}
