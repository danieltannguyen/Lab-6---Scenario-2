
package gg;

import java.util.ArrayList;
import java.util.List;
public class Event {
	private List<Media> medias;
	private String eventName;
	private String eventLocation;
	private ArrayList<String> attendees;
	
	public Event(String name, String location, ArrayList<String> people) {
		eventName = name;
		eventLocation = location;
		attendees = people;
	}
	
	public String getEventName() {
		return eventName;
	}
	
	public String getEventLocation() {
		return eventLocation;
	}
	
	public ArrayList<String> getAttendees() {
		return attendees;
	}
	public void recordedOn(List<Media> anyMedias) 
	{   
		this.medias = anyMedias;  
	}
	public List<Media> getMedias()
	{   
		return medias;
	}
	public void setMedias(List<Media> medias) 
	{  
		this.medias = medias;  
		
	}
	
}
