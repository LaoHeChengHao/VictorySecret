package Test;

import java.util.List;

import org.junit.Test;

import dao.PerfumeDao;
import dao.impl.PerfumeDaoImpl;
import entity.Perfume;

public class TestPerfume {

	@Test
	public void testGetAllPerfume() {
		PerfumeDao per=new PerfumeDaoImpl();
		List<Perfume> allPerfume = per.getAllPerfume();
		for (Perfume perfume : allPerfume) {
			System.out.println(perfume);
		}
			
	}
	
	@Test
	public void testGetEightPerfume() {
		PerfumeDao per=new PerfumeDaoImpl();
		List<Perfume> allPerfume = per.getEightPerfume();
		for (Perfume perfume : allPerfume) {
			System.out.println(perfume);
		}
			
	}
}
