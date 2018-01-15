package Test;

import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;

import entity.PerfumeComment;
import service.impl.PerfumeCommentServiceImpl;

public class PerfumeCommentServiceTest {
	PerfumeCommentServiceImpl p=new PerfumeCommentServiceImpl();
	@Test
	public void testShowAllComment() {
		PerfumeComment comment=new PerfumeComment();
		comment.setgId(1001);
		/*List<PerfumeComment> list = p.showAllPerfumeComment(comment);
		System.out.println(list);*/
	}

	@Test
	public void testAddComment() {
		fail("Not yet implemented");
	}

}
