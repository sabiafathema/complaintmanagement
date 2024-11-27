import java.awt.*;
import java.applet.*;
public class test extends Applet
{
	String str;
	public void init()
	{
	str=getParameter("string");
	str="hello"+str;
	}
	public void paint(Graphics g)
	{
	g.drawString(str,10,100);
	}
}
/*
<applet code="test.class" width="500" height="500">
<PARAM name="string" value="srkr">
</applet>
*/
