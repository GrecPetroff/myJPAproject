package service;

import java.util.List;
import model.FootballTeam;



public interface FootballTeamService {

    public List<FootballTeam> findAll();

    public void save(FootballTeam team);

    public void remove(int id);

    public FootballTeam find(int id);
}
