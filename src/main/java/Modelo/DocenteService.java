package Modelo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DocenteService {
	private EntityManagerFactory emf;
	private EntityManager em;
	//constructor
	public  DocenteService() {
		// TODO Auto-generated constructor stub
		emf = Persistence.createEntityManagerFactory("JPAProyect");
		em =emf.createEntityManager();
	}
	
	//Meted CRUD
	
	//create
	public void crearDocente (Docente docente) {
		em.getTransaction().begin();
		em.persist(docente);
		em.getTransaction().commit();
	}
	
	// read
	public List<Docente> listarDocentes() {
	
		List<Docente> lista = em.createQuery("SELECT d FROM Docente d", Docente.class).getResultList();
		return lista;
	}
	
	// update
	public void editarDocente(Docente docente) {
		em.getTransaction().begin();
		em.merge(docente);
		em.getTransaction().commit();
	}
	
	// delete
	public void eliminarDocente(int id) {
		em.getTransaction().begin();
		Docente docente = em.find(Docente.class, id);
		if (docente != null) {
			em.remove(docente);
		}
		em.getTransaction().commit();
	}
	  public Docente buscarDocentePorId(int id) {
	        return em.find(Docente.class, id);
	    }
	// close
	public void cerrar() {
		em.close();
		emf.close();
	}
}
