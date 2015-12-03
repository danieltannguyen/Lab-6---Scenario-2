
package gg;

import java.util.List;

public class Context {
	private Type type;
	private String contextType;
	private List<String> relatedContext;
	
	public Context(String cType, List<String> rContext) {
		contextType = cType;
		relatedContext = rContext;
	}
	
	public String getContextType() {
		return contextType;
	}
	
	public List<String> getRelatedContext() {
		return relatedContext;
	}
}
