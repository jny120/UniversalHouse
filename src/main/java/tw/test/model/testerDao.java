package tw.test.model;

import javax.persistence.NoResultException;

import org.hibernate.NonUniqueResultException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class testerDao {
	@Autowired
	private SessionFactory factory;
	

	public tester findByPk(Integer id) {
		
		String hql = "from tester where id= :m";
		Session session = factory.openSession();
		
		try {


			tester tester = session.createQuery(hql,tester.class)
					.setParameter("m", id)
					.getSingleResult();
			System.out.println("findbyid"+tester);

			return tester;
		} catch (NoResultException | NonUniqueResultException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
