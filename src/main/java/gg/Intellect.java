
package gg;

//	Intellect needs to be rated.
//	Intellect must be considered intellectual or not
public class Intellect {
	private Evidence evidence;
	private int IQ;
	private boolean isIntellectual;
	public Evidence generate()
	{
		return evidence;
	}
	public int getIQ() {
		return IQ;
	}
	
	public boolean isIntellectualEnough() {
		return isIntellectual;
	}
}
