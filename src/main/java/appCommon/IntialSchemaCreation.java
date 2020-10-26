package appCommon;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import appCommon.HibernateUtil;

public class IntialSchemaCreation {
	static {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		session.close();
	}
	
}
