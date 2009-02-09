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
 * Home object for domain model class SdVociBilancio.
 * @see net.sergiobelli.jecon.be.orm.SdVociBilancio
 * @author Hibernate Tools
 */
public class SdVociBilancioHome {

	private static final Log log = LogFactory.getLog(SdVociBilancioHome.class);

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

	public void persist(SdVociBilancio transientInstance) {
		log.debug("persisting SdVociBilancio instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdVociBilancio instance) {
		log.debug("attaching dirty SdVociBilancio instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdVociBilancio instance) {
		log.debug("attaching clean SdVociBilancio instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdVociBilancio persistentInstance) {
		log.debug("deleting SdVociBilancio instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdVociBilancio merge(SdVociBilancio detachedInstance) {
		log.debug("merging SdVociBilancio instance");
		try {
			SdVociBilancio result = (SdVociBilancio) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdVociBilancio findById(
			net.sergiobelli.jecon.be.orm.SdVociBilancioId id) {
		log.debug("getting SdVociBilancio instance with id: " + id);
		try {
			SdVociBilancio instance = (SdVociBilancio) sessionFactory
					.getCurrentSession().get(
							"net.sergiobelli.jecon.be.orm.SdVociBilancio", id);
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

	public List<SdVociBilancio> findByExample(SdVociBilancio instance) {
		log.debug("finding SdVociBilancio instance by example");
		try {
			List<SdVociBilancio> results = (List<SdVociBilancio>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdVociBilancio").add(
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
