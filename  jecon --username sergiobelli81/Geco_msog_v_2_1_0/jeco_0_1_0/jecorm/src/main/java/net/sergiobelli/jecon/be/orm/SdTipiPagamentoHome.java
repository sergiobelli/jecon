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
 * Home object for domain model class SdTipiPagamento.
 * @see net.sergiobelli.jecon.be.orm.SdTipiPagamento
 * @author Hibernate Tools
 */
public class SdTipiPagamentoHome {

	private static final Log log = LogFactory.getLog(SdTipiPagamentoHome.class);

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

	public void persist(SdTipiPagamento transientInstance) {
		log.debug("persisting SdTipiPagamento instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(SdTipiPagamento instance) {
		log.debug("attaching dirty SdTipiPagamento instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SdTipiPagamento instance) {
		log.debug("attaching clean SdTipiPagamento instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(SdTipiPagamento persistentInstance) {
		log.debug("deleting SdTipiPagamento instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SdTipiPagamento merge(SdTipiPagamento detachedInstance) {
		log.debug("merging SdTipiPagamento instance");
		try {
			SdTipiPagamento result = (SdTipiPagamento) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public SdTipiPagamento findById(
			net.sergiobelli.jecon.be.orm.SdTipiPagamentoId id) {
		log.debug("getting SdTipiPagamento instance with id: " + id);
		try {
			SdTipiPagamento instance = (SdTipiPagamento) sessionFactory
					.getCurrentSession().get(
							"net.sergiobelli.jecon.be.orm.SdTipiPagamento", id);
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

	public List<SdTipiPagamento> findByExample(SdTipiPagamento instance) {
		log.debug("finding SdTipiPagamento instance by example");
		try {
			List<SdTipiPagamento> results = (List<SdTipiPagamento>) sessionFactory
					.getCurrentSession().createCriteria(
							"net.sergiobelli.jecon.be.orm.SdTipiPagamento")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
