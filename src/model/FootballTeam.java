package model;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
public class FootballTeam {
    @Id
    @GeneratedValue
	private Integer id;
	private String teamName;
	private String coachFullName;
	private String country;
	
	/* Constructors */
	public FootballTeam() { 
	}
	
	public FootballTeam(Integer id) {
		this.id = id;
	}
	
	public FootballTeam(Integer id, String teamName, String coachName, String country)
	{
		this.id = id;
		this.teamName = teamName;
		this.coachFullName = coachName;
		this.country = country;
	}
	
	/*
	 * get & set methods
	 *  
	 */
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getTeamName() {
		return teamName;
	}
	
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	
	public String getCoachFullName() {
		return coachFullName;
	}
	
	public void setCoachFullName(String coachName) {
		this.coachFullName = coachName;
	}
	
	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof FootballTeam)) {
            return false;
        }
        FootballTeam other = (FootballTeam) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }
	
}
