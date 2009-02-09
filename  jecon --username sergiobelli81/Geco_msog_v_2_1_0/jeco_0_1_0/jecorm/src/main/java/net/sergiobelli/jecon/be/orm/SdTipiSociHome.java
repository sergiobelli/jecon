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
 * Home object for domain model class SdTipiSoci.
 * @see net.sergiobelli.jecon.be.orm.SdTipiSoci
 * @author Hibernate Tools
 */
public class SdTipiSociHome {

	private static final Log log = LogFactory.getLog(SdTipiSociHome.class);

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

	public void persist(SdTipiSoci transientInstance) {
		log.debug("persisting SdTipiSoci instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdTipiSoci instance) {
		log.debug("attaching dirty SdTipiSoci instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdTipiSoci instance) {
		log.debug("attaching clean SdTipiSoci instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdTipiSoci persistentInstance) {
		log.debug("deleting SdTipiSoci instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdTipiSoci merge(SdTipiSoci detachedInstance) {
		log.debug("merging SdTipiSoci instance");
		try {
			SdTipiSoci result = (SdTipiSoci) sessionFactory.getCurrentSession()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdTipiSoci findById(java.lang.Byte id) {
		log.debug("getting SdTipiSoci instance with id: " + id);
		try {
			SdTipiSoci instance = (SdTipiSoci) sessionFactory
					.getCurrentSession().get(
							"net.sergiobelli.jecon.be.orm.SdTipiSoci", id);
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

	public List<SdTipiSoci> findByExample(SdTipiSoci instance) {
		log.debug("finding SdTipiSoci instance by example");
		try {
			List<SdTipiSoci> results = (List<SdTipiSoci>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdTipiSoci").add(
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
