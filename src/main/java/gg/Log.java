
package gg;

public class Log {
	String isValidClaim;
	Media media;
	public Log(){
		this.isValidClaim = " ";
		this.media = new Media();
	}
	
	public void saveToLog(){
		isValidClaim = "Claim To Property is Valid";
		media.saveToFile();
	}
}
