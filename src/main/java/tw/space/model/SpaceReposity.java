package tw.space.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SpaceReposity extends JpaRepository<Space, Integer> {
	
	@Query(value = "from Space")
	public List<Space> findAll();
	
	@Query(value = "from Space where city like concat('%',?1,'%')")
	public List<Space> findByCityLike(String city);
	
	@Query(value = "from Space where spaceType =?1")
	public List<Space> findBySpaceType(String spacetype);

	String hql2 = "select SpaceType from SpaceRental where SpaceType =?1 and city =?2";
	@Query(value = hql2, nativeQuery = true)
	public List<Space> findBySpaceTypeAndCity(String spacetype, String city);
	
}
