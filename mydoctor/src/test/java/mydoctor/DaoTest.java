package mydoctor;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.solutions.base.mvc.dao.TestDao;
import com.solutions.base.mvc.entity.test;

import junit.framework.TestCase;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
					  
		locations= {
					"/com/solutions/base/config/xml/persistence-context.xml"
		
		}
		
		
)
@ActiveProfiles("development-junit")
public class DaoTest extends TestCase {
	
	@Autowired
	public TestDao testDao;

	
	@Test
	@Transactional
	public void testGeniricDao() {
		
		test entity = new test();
		entity.setId(1l);
		entity.setField1("campo1test");
		entity.setField2("name2");
		
		testDao.save(entity);
		testDao.flush();
		testDao.clear();
		
		System.out.println(testDao.findAll());
	}
}