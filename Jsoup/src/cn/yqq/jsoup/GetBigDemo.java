package cn.yqq.jsoup;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Connection;
import org.jsoup.Connection.Method;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;

public class GetBigDemo {

	public static void main(String[] args) throws IOException, InterruptedException {
		// TODO Auto-generated method stub
		getAddress();
	}
	public static void getAddress() throws IOException, InterruptedException{
		ArrayList<String> summary = new ArrayList<String>();//总数组
		String[] test ={};
 		int startPage = 1;//起始页
		int endPage = 4;//结束页
		int count =0;
		String areadetail ="";
		File fs = new File("xmrentalxxxx.txt");
		FileOutputStream out = new FileOutputStream(fs,true);
		for(int j=startPage;j<=endPage;j++){
			String url = "https://xm.917.com/chuzu/q350294/pn"+j;
			Connection connect = Jsoup.connect(url);
			Document dPrice = connect.ignoreContentType(true).
					userAgent("Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.15)").timeout(5000).get();
			Elements els_price = dPrice.select(".price");
			
			Elements els_address = dPrice.select(".hlistP");
			Elements els_detail = els_address.select("a span");
			
			Elements els_des = dPrice.select(".info").select(".rel").select(".floatr");
			for(int i=0;i<els_address.size();i++){
				String sum = "";
				String area = els_address.get(i).select("span").get(1).select("a").get(0).text();
				if(area == ""||area==null){
					continue;
				}
				test = els_address.get(i).select("span").get(1).select("a").text().toString().split(" ");
				if(test.length>=2){
					areadetail = els_address.get(i).select("span").get(1).select("a").get(1).text();
				}else {
					continue;
				}
				
				areadetail.substring(0, areadetail.length()-2);
				String price = els_price.get(i).text();
				String des = els_des.get(i).select("p").get(1).text();
				String []arr = des.split("\\|");
				
				System.out.println(j+","+(i+1));
				if(arr.length==5){
					sum=area+"|"+areadetail+"|"+price+"|"+arr[0].substring(0, 2)+"|"+arr[1].substring(1)+"|"+arr[2].substring(1,arr[2].length()-2)
							+"|"+arr[3].substring(1)+"|"+arr[4].substring(1)+"\r\n";
				}
				else continue;
				summary.add(sum+"\n"+count);
				try {
					if(fs.exists()==false){
		                fs.getParentFile().mkdirs();
					}
					byte bytes[] = sum.getBytes();
					out.write(bytes,0,bytes.length);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			Thread.sleep(1000);
			
		}
		out.close();
	}
	
	@Test
	public void test(){
		String str = "厦门租房";
		str = str.substring(0, str.length()-3);
		System.out.println(str);
	}
}
