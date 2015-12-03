

import java.util.List;

public class Ownership {
	boolean isOwner = false;
        String domain;
        String name;

        private Party party;
        private Context context;

        public void doneBy(Party party)
        {
            this.setParty(party);
        }
        public String getDomain() {
            return domain;
        }  public void setDomain(String domain)
        {
            this.domain = domain;
        }  public String getName()
        {
            return name;
        }  public void setName(String name)
        {
            this.name = name;
        }
        public Context getContext()
        {
            return context;
        }
        public void setContext(Context context)
        {
            this.context = context;
        }
        public Party getParty()
        {
            return party;
        }
        public void setParty(Party party)
        {
            this.party = party;
        }
}
