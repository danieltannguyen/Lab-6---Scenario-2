
package gg;

import java.util.ArrayList;

public class Evidence {
	ArrayList<Claim> claims;
	
	public Evidence(){
		claims = new ArrayList<Claim>();
	}
	
	public void addGameLicense(Claim cl){
		claims.add(cl);
	}
}
