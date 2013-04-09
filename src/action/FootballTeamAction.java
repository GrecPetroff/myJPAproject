package action;

import java.util.List;

import model.FootballTeam;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

import service.FootballTeamService;

public class FootballTeamAction  extends ActionSupport {

    private FootballTeamService service;
    private List<FootballTeam> teams;
    private FootballTeam team;
    private Integer id;

    public FootballTeamAction(FootballTeamService service) {
        this.service = service;
    }

    @Override
    public String execute() {
        this.teams = service.findAll();
        return Action.SUCCESS;
    }

    public String prepareInsert() {
        if (team != null && team.getId() != null) {
        	team = service.find(id);
        }else{
        }
        return Action.SUCCESS;
    }

    public String save() {
        service.save(team);
        this.team = new FootballTeam();
        return execute();
    }

    public String edit() {
    	this.teams = service.findAll();
        this.team = service.find(id);
        return Action.SUCCESS;
    }

    public String remove() {
        service.remove(id);
        return execute();
    }

    public List<FootballTeam> getTeams() {
        return teams;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void prepare() throws Exception {
        if (id != null) {
        	team = service.find(id);
        }
    }

    public FootballTeam getTeam() {
        return team;
    }

    public void setTeam(FootballTeam team) {
        this.team = team;
    }
}

