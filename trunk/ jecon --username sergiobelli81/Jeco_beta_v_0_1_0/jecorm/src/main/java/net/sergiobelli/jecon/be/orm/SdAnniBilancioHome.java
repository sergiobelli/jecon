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
 * Home object for domain model class SdAnniBilancio.
 * @see net.sergiobelli.jecon.be.orm.SdAnniBilancio
 * @author Hibernate Tools
 */
public class SdAnniBilancioHome {

	private static final Log log = LogFactory.getLog(SdAnniBilancioHome.class);

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

	public void persist(SdAnniBilancio transientInstance) {
		log.debug("persisting SdAnniBilancio instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdAnniBilancio instance) {
		log.debug("attaching dirty SdAnniBilancio instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdAnniBilancio instance) {
		log.debug("attaching clean SdAnniBilancio instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdAnniBilancio persistentInstance) {
		log.debug("deleting SdAnniBilancio instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdAnniBilancio merge(SdAnniBilancio detachedInstance) {
		log.debug("merging SdAnniBilancio instance");
		try {
			SdAnniBilancio result = (SdAnniBilancio) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdAnniBilancio findById(java.lang.String id) {
		log.debug("getting SdAnniBilancio instance with id: " + id);
		try {
			SdAnniBilancio instance = (SdAnniBilancio) sessionFactory
					.getCurrentSession().get(
							"net.sergiobelli.jecon.be.orm.SdAnniBilancio", id);
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

	public List<SdAnniBilancio> findByExample(SdAnniBilancio instance) {
		log.debug("finding SdAnniBilancio instance by example");
		try {
			List<SdAnniBilancio> results = (List<SdAnniBilancio>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdAnniBilancio").add(
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
