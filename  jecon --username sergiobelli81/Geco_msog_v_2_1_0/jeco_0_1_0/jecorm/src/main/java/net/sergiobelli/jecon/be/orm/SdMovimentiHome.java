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
 * Home object for domain model class SdMovimenti.
 * @see net.sergiobelli.jecon.be.orm.SdMovimenti
 * @author Hibernate Tools
 */
public class SdMovimentiHome {

	private static final Log log = LogFactory.getLog(SdMovimentiHome.class);

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

	public void persist(SdMovimenti transientInstance) {
		log.debug("persisting SdMovimenti instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdMovimenti instance) {
		log.debug("attaching dirty SdMovimenti instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdMovimenti instance) {
		log.debug("attaching clean SdMovimenti instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdMovimenti persistentInstance) {
		log.debug("deleting SdMovimenti instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdMovimenti merge(SdMovimenti detachedInstance) {
		log.debug("merging SdMovimenti instance");
		try {
			SdMovimenti result = (SdMovimenti) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdMovimenti findById(java.lang.Integer id) {
		log.debug("getting SdMovimenti instance with id: " + id);
		try {
			SdMovimenti instance = (SdMovimenti) sessionFactory
					.getCurrentSession().get(
							"net.sergiobelli.jecon.be.orm.SdMovimenti", id);
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

	public List<SdMovimenti> findByExample(SdMovimenti instance) {
		log.debug("finding SdMovimenti instance by example");
		try {
			List<SdMovimenti> results = (List<SdMovimenti>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdMovimenti").add(
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
