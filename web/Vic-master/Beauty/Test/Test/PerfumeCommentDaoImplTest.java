package Test;

import java.util.List;

import org.junit.Test;

import dao.impl.PerfumeCommentDaoImpl;
import entity.CommentDetail;
import entity.PerfumeComment;

public class PerfumeCommentDaoImplTest {
	PerfumeCommentDaoImpl p=new PerfumeCommentDaoImpl();
	@Test
	public void testSelectAllComment() {
		PerfumeComment comment=new PerfumeComment();
		comment.setgId(1001);	
		/*List<PerfumeComment> list = p.selectAllPerfumeComment(comment);
		System.out.println(list);*/
		
	}

	@Test
	public void testAddComment() {
		PerfumeComment comment=new PerfumeComment();
		comment.setgId(1001);
		comment.setContent("哈哈哈哈");
		comment.setuId(2);
		/*int i = p.addPerfumeComment(comment);
		System.out.println(i);*/
	}

}
