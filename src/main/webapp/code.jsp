<%@ page 
		language="java" 
		import ="java.awt.*"
		import ="java.awt.image.BufferedImage"
		import ="java.util.*"
		import ="javax.imageio.ImageIO"
    	pageEncoding="gb2312"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	int width=100,height=40;
	BufferedImage bufferedImage=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
	Graphics graphics=bufferedImage.getGraphics();
	graphics.setColor(new Color(200,200,200));
	graphics.fillRect(0, 0, width, height);
	Random random=new Random();
	int randnum=random.nextInt(8999)+1000;
    String randomcode = "";  
    for(int i=0;i<1;i++)  
    {  
        //52个字母与6个大小写字母间的符号；范围为91~96  
        int value = (int)(Math.random()*58+65);  
        while(value>=91 && value<=96)  
            value = (int)(Math.random()*58+65);  
        randomcode = randomcode + (char)value;  

    }  
	
	
	
	String ranString=String.valueOf(randnum)+randomcode;
	session.setAttribute("randStr", ranString);
	graphics.setColor(Color.BLACK);
	graphics.setFont(new Font("",Font.PLAIN,20));
	graphics.drawString(ranString,30, 30);
	int x1,y1,x2,y2;
	for(int i=0;i<4;i++){
	
        int r = random.nextInt(256);
        int g = random.nextInt(256);
        int b = random.nextInt(256);
		graphics.setColor(new Color(r,b,g));
		x1=random.nextInt(50);
		y1=random.nextInt(30);
		x2=random.nextInt(200);
		y2=random.nextInt(20);
		graphics.drawLine(x1, y1, x2, y2);
		
		
	}
	graphics.dispose();
	ImageIO.write(bufferedImage, "JPEG", response.getOutputStream());
	out.clear();
	out=pageContext.pushBody();
%>
