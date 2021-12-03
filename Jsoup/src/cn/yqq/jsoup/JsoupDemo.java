package cn.yqq.jsoup;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;

public class JsoupDemo {
	//爬取整个网页
	@Test
	public void fetch_all_document() throws IOException{
		//获取爬取网页url
		String url  = "https://weibo.com/";
		//获取connection对象
		Connection connect = Jsoup.connect(url);
		Document d1 = connect.get();
		System.out.println(d1);
	}
	@Test
	public void fetch_jd_itemTitle() throws IOException{
		//定位url，获取网页对象，通过select方法获取到标签元素的集合，循环遍历集合，拿到其中的标签元素
		//通过element.text（）方法拿到标签中文本内容
		String url  = "https://item.jd.com/41563312675.html";
		Connection conn = Jsoup.connect(url);
		Document d2 = conn.get();
		//class 用‘.’‘#’表示id
		//可以通过多层定位标签，注意层级之间有空格
		Elements els =d2.select(".dd .p-price .price J-p-41563312675");
		for(Element el:els ){
			System.out.println("test");
			System.out.println(el);
		}
	}
	@Test
	public void fetch_id_price() throws IOException{
		String url  = "https://item.jd.com/41563312675.html";
		Connection conn = Jsoup.connect(url);
		Document d3 = conn.get();
		//因为价格标签的class的名字上边又空格，所以可以连续调用两个select，第一个是空格前半部分，第二个后半部分
		Elements els =d3.select(".price").select(".J-p-41563312675");
		for(Element el:els){
			System.out.println(els);
		}
		//京东对商品价格做了防采集的处理，他的价格是通过ajax异步加载出来的
	}
	@Test
	public void fetch_price() throws IOException{
		String url  = "https://p.3.cn/prices.mgets?skuIds=J_7652029";
		Connection conn = Jsoup.connect(url);
		String json = conn.ignoreContentType(true).execute().body();
		String price = json.substring(64, 71);
		System.out.println(json);
	}
	
	//爬取这个页面的所有标题
	@Test
	public void fetch_page_alltitle() throws IOException{
		String url = "https://list.jd.com//list.html?cat=9987,653,655";
		Connection conn = Jsoup.connect(url);
		Document d4 = conn.get();
		Elements els = d4.select(".p-name");
//		FileWriter writer  =new FileWriter("E:\\a.text");
//		for(Element el:els){
////			System.out.println(el.text());
//			writer.write(el.text());
//		}
//		writer.flush();
//		writer.close();
//		writer=null;
		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("E:\\b.txt")));
		for(Element el:els){
//		System.out.println(el.text());
			writer.write(el.text());
			writer.newLine();
			writer.flush();
		}
		writer.close();
	}
	@Test
	public void fetcj_jd_itemcat_3_all() throws IOException{
		String url="https://www.js.com/allSort.aspx";
		Connection conn = Jsoup.connect(url);
		Document d4 = conn.get();
		ArrayList<String> urllist = new ArrayList<>();
		Elements els = d4.select(".clearfix dd a");
		for(Element el:els){
			String href = el.attr("href");
			if(href.startsWith("//list.jd.com//list.html?cat=")){
				urllist.add(href);
			}
			System.out.println(el.text());
		}
		for(String s:urllist){
			String url2 =s;
			Connection conn2 = Jsoup.connect(url2);
			Document d7 = conn.get();
			Elements els2 = d7.select(".p-name");
			for(Element el2:els2){
				System.out.println(el2.text());
			}
		}
	}
	
	//爬取某一个商品的页数
	@Test
	public void fetch_jd_itemcat_numpage() throws IOException{
		String url="https://list.jd.com//list.html?cat=9987,653,655";
		Connection conn = Jsoup.connect(url);
		Document d8 = conn.get();
		Element el = d8.select(".p-skip em b").get(0);
		int pagenum = Integer.parseInt(el.text());
		System.out.println(pagenum);
	}
	
	
	@Test 
	public void fetch_id_itemcat_allTitle() throws IOException{
		String url= "https://list.jd.com//list.html?cat=670,671,672";
		Connection conn = Jsoup.connect(url);
		Document d9 = conn.get();
		Element  el = d9.select(".p-skip em b").get(0);
		int pagenum = Integer.parseInt(el.text());
		ArrayList<String> titleList = new ArrayList<>();
		for(int i=0;i<pagenum;i++){
			String url2 = "https://list.jd.com//list.html?cat=670,671,672&page="+i;
			Connection conn2 = Jsoup.connect(url2);
			Document d10 = conn2.get();
			Elements els = d10.select(".p-name");
			for(Element val:els){
				titleList.add(val.text());
			}
		}
		for(String s:titleList){
			System.out.println(s);
		}
	}

//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//	}

}
