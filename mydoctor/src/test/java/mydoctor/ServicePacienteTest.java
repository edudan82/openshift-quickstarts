package mydoctor;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.persistence.criteria.CriteriaBuilder;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.solutions.mydoctor.mvc.entity.ConsultaMedica;
import com.solutions.mydoctor.mvc.entity.Paciente;
import com.solutions.mydoctor.mvc.service.PacienteService;

import junit.framework.TestCase;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
					  
		locations= {
				"/com/solutions/base/config/xml/persistence-context.xml",
				"/com/solutions/base/config/xml/service-context.xml"
		}
		
		
)
@ActiveProfiles("development-junit")
public class ServicePacienteTest extends TestCase {
	
	@Autowired
	public PacienteService pacienteService;
	
	@Autowired
	public SessionFactory sessionFactory;

	
//	@Test
	@Transactional
	@Rollback(false)
	public void pacienteServiceAdd() {
		
		Paciente paciente = new Paciente();
		paciente.setApellidos("Cardenas");
		paciente.setNombre("Daniel");
		paciente.setSexo("M");
		
	
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		LocalDate fechaNacimiento = LocalDate.parse("19-04-1982", formatter);
		paciente.setFechaNacimiento(fechaNacimiento );
	
		
		pacienteService.save(paciente);
		pacienteService.flush();
		pacienteService.clear();
		
		System.out.println(pacienteService.findAll());
		
		Criteria c = sessionFactory.getCurrentSession().createCriteria(Paciente.class);
		c.add(Restrictions.like("nombreCompleto", "%D%"));
		
		System.out.println(c.list());

	}
	
	//@Test
	@Transactional
	@Rollback(false)
	public void pacienteAndCitaServiceAdd() {
		
		Paciente paciente = new Paciente();
		paciente.setApellidos("Cardenas");
		paciente.setNombre("Daniel");
		paciente.setSexo("M");
		
	
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		LocalDate fechaNacimiento = LocalDate.parse("19-04-1982", formatter);
		paciente.setFechaNacimiento(fechaNacimiento );
	
		
		pacienteService.save(paciente);
		pacienteService.flush();
		pacienteService.clear();
		
		ConsultaMedica consultaMedica = new ConsultaMedica();
		consultaMedica.setFechaConsulta(LocalDate.now());
		consultaMedica.setDiagnostico("enfermo de gripa");
		consultaMedica.setPaciente(paciente);
		
		sessionFactory.getCurrentSession().save(consultaMedica);
		
		
		
		
		
		System.out.println(pacienteService.findAll());
		


	}
}