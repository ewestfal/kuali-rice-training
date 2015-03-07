package org.kuali.ole;

public class Patron {

	private String affiliation;
	private boolean inGoodStanding;
	private int numberOfInstancesOnLoan;
	
    public Patron(String affiliation,
            boolean inGoodStanding,
            int numberOfInstancesOnLoan) {
    	this.affiliation = affiliation;
    	this.inGoodStanding = inGoodStanding;
    	this.numberOfInstancesOnLoan = numberOfInstancesOnLoan;
    }
	
	public String getAffiliation() {
		return affiliation;
	}
	public void setAffiliation(String affiliation) {
		this.affiliation = affiliation;
	}
	public boolean isInGoodStanding() {
		return inGoodStanding;
	}
	public void setInGoodStanding(boolean inGoodStanding) {
		this.inGoodStanding = inGoodStanding;
	}
	public int getNumberOfInstancesOnLoan() {
		return numberOfInstancesOnLoan;
	}
	public void setNumberOfInstancesOnLoan(int numberOfInstancesOnLoan) {
		this.numberOfInstancesOnLoan = numberOfInstancesOnLoan;
	}

}
