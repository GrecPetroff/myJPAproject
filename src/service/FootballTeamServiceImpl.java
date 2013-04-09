package service;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import model.FootballTeam;

import org.springframework.transaction.annotation.Transactional;


@Transactional
public class FootballTeamServiceImpl implements FootballTeamService {

	    private EntityManager em;

	    @PersistenceContext
	    public void setEntityManager(EntityManager em) {
	        this.em = em;
	    }

	    private EntityManager getEntityManager() {
	        return em;
	    }

	    public List<FootballTeam> findAll() {
	        Query query = getEntityManager().createQuery("FROM FootballTeam");
	        return query.getResultList();
	    }

	    public void save(FootballTeam team) {
	        if (team.getId() == null) {
	            // new
	            em.persist(team);
	        } else {
	            // update
	            em.merge(team);
	        }
	    }

	    public void remove(int id) {
	    	FootballTeam team = find(id);
	        if (team != null) {
	            em.remove(team);
	        }
	    }

	    public FootballTeam find(int id) {
	        return em.find(FootballTeam.class, id);
	    }



}
