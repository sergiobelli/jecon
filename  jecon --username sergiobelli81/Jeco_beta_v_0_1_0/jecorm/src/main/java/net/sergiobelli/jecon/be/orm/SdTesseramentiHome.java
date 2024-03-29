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
 * Home object for domain model class SdTesseramenti.
 * @see net.sergiobelli.jecon.be.orm.SdTesseramenti
 * @author Hibernate Tools
 */
public class SdTesseramentiHome {

	private static final Log log = LogFactory.getLog(SdTesseramentiHome.class);

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

	public void persist(SdTesseramenti transientInstance) {
		log.debug("persisting SdTesseramenti instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdTesseramenti instance) {
		log.debug("attaching dirty SdTesseramenti instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdTesseramenti instance) {
		log.debug("attaching clean SdTesseramenti instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdTesseramenti persistentInstance) {
		log.debug("deleting SdTesseramenti instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdTesseramenti merge(SdTesseramenti detachedInstance) {
		log.debug("merging SdTesseramenti instance");
		try {
			SdTesseramenti result = (SdTesseramenti) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdTesseramenti findById(java.lang.Integer id) {
		log.debug("getting SdTesseramenti instance with id: " + id);
		try {
			SdTesseramenti instance = (SdTesseramenti) sessionFactory
					.getCurrentSession().get(
							"net.sergiobelli.jecon.be.orm.SdTesseramenti", id);
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

	public List<SdTesseramenti> findByExample(SdTesseramenti instance) {
		log.debug("finding SdTesseramenti instance by example");
		try {
			List<SdTesseramenti> results = (List<SdTesseramenti>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdTesseramenti").add(
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
