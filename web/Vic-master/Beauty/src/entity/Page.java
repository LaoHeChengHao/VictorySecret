package entity;

import java.util.List;

/**
 * 定义分页使用的page类.
 * 封装每页显示的页面和数据信息
 * @param <E>
 */
public class Page<E>
{
	private int currentPage;//当前页码
	private int prePage;//前一页页码
	private int nextPage;//后一页页码
	private int pageSize ;//每页显示的记录条数
	private int totalCount;//查询到的总记录数
	private int totalPageCount;//总页数:totalCount/pageSize
	private List<E> list;//本页显示的数据
	
	public int getCurrentPage()
	{
		return currentPage;
	}
	public void setCurrentPage(int currentPage)
	{
		if( currentPage < 0)
		{
			 currentPage = 1;
		}
		this.currentPage = currentPage;
		this.prePage =  this.currentPage == 1?1: this.currentPage -1;
		this.nextPage = this.currentPage == this.totalPageCount?this.totalPageCount:(this.currentPage+1);
		
	}
	public int getPrePage()
	{
		return prePage;
	}
	
	public int getNextPage()
	{
		return nextPage;
	}
	
	public int getPageSize()
	{
		return pageSize;
	}
	public void setPageSize(int pageSize)
	{
		this.pageSize = pageSize;
	}
	public int getTotalCount()
	{
		return totalCount;
	}
	public void setTotalCount(int totalCount)
	{
		if(totalCount < 0)
		{
			totalCount = 0;
		}
		this.totalCount = totalCount;
		this.totalPageCount = (totalCount%this.pageSize == 0)?(totalCount/this.pageSize):(totalCount/this.pageSize + 1);
	}
	public int getTotalPageCount()
	{
		return totalPageCount;
	}
	
	public Page()
	{
		super();
	}
	public List<E> getList()
	{
		return list;
	}
	public void setList(List<E> list)
	{
		this.list = list;
	}
	
	
	
}
