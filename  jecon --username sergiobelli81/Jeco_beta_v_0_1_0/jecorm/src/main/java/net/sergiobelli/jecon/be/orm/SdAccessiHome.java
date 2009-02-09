package net.sergiobelli.jecon.be.orm;

// Generated 9-feb-2009 22.42.43 by Hibernate Tools 3.2.4.CR1

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import static org.hibernate.criterion.Example.create;

/**
 * Home object for domain model class SdAccessi.
 * @see net.sergiobelli.jecon.be.orm.SdAccessi
 * @author Hibernate Tools
 */
public class SdAccessiHome {

	private static final Log log = LogFactory.getLog(SdAccessiHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext()
					.lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException(
					"Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(SdAccessi transientInstance) {
		log.debug("persisting SdAccessi instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdAccessi instance) {
		log.debug("attaching dirty SdAccessi instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdAccessi instance) {
		log.debug("attaching clean SdAccessi instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdAccessi persistentInstance) {
		log.debug("deleting SdAccessi instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdAccessi merge(SdAccessi detachedInstance) {
		log.debug("merging SdAccessi instance");
		try {
			SdAccessi result = (SdAccessi) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdAccessi findById(net.sergiobelli.jecon.be.orm.SdAccessiId id) {
		log.debug("getting SdAccessi instance with id: " + id);
		try {
			SdAccessi instance = (SdAccessi) sessionFactory.getCurrentSession()
					.get("net.sergiobelli.jecon.be.orm.SdAccessi", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<SdAccessi> findByExample(SdAccessi instance) {
		log.debug("finding SdAccessi instance by example");
		try {
			List<SdAccessi> results = (List<SdAccessi>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdAccessi").add(
							create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
