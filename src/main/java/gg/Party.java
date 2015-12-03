
package gg;

//	A party is a group that is identified by a name and has licenses
//	that gives them ownership to many things.
public class Party {
	public String name;
	Evidence licenses;
	private Intellect intellect;
	private Property property;
	
	public Party(String name){
		this.name = name;
		licenses = new Evidence();
	}
	
	// Claim ownership of something
	public void addClaim(String claimName){
		Claim cl = new Claim(claimName);
		licenses.addGameLicense(cl);
	}
	
	// Validate ownership
	public boolean checkClaim(String gameTitle){
		for (int i = 0; i < licenses.claims.size(); i++){
			if (licenses.claims.get(i).name.equalsIgnoreCase(gameTitle)){
				licenses.claims.get(i).isValidClaim = true;
				return true;
			}
		}
		return false;
	}
	
	public boolean verifyIntegrity(){
		for (int i = 0; i < licenses.claims.size(); i++){
			if (licenses.claims.get(i).isValidClaim == true){
				return true;
			}
		}
		return false;
	}
}
