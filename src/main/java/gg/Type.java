
package gg;

import java.util.List;
// A type is identified with a name and the context it exists within
public class Type {
	String name;
	String ID;
	Existence exist;
	Context context;
	private List<Event> event;
	
	public void namesEvent(Event event) {};
	public void decideEvent(Event event)
	{
//		this.event = event
	}
	public String getTypeName()
	{  
		return name;  
	} 
	public void setTypeName(String typeName)
	{  
		this.name = typeName; 
	}
	public String getID()
	{
		return ID;
	}
	public void setID(String ID)
	{
		this.ID = ID;
	}
}
