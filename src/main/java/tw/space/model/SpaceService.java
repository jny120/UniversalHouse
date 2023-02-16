package tw.space.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SpaceService {
	
	@Autowired
	private SpaceReposity sRepo;
	
	//insert
	public Space insert(Space space) {
		return sRepo.save(space);
	}
	
	//update
	public Space update(Space space) {
		return sRepo.save(space);
	}
	
	//delete BySpaceNo
	public boolean deleteBySpaceNo(Integer spaceNo) {
		sRepo.deleteById(spaceNo);
		return true;
	}
	
	//read BySpaceNo
	public Space readBySpaceNo(Integer spaceNo) {
		Optional<Space> optional = sRepo.findById(spaceNo);
		return optional.isPresent() ? optional.get() : null ;
	}
	
	//read All
	public List<Space> readAll() {
		return sRepo.findAll();
	}
	
	//read ByLikeCity
	public List<Space> readByLikeCity(String city){
		return sRepo.findByCityLike(city);
	}
	
	//read By SpaceType
	public List<Space> readBySpaceType(String spacetype){
		return sRepo.findBySpaceType(spacetype);
	}
	
	//read By SpaceType
	public List<Space> readBySpaceTypeAndCity(String spacetype, String city){
		return sRepo.findBySpaceTypeAndCity(spacetype, city);
	}
	
}
