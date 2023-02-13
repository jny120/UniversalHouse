package tw.course.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Service
@Transactional
public class CourseService {

	@Autowired
	private CourseRepository cRepo;
	
	//查詢所有
	public List<Course> getAllCourse(){
		return cRepo.findAll();
	}
	//新增
	public Course insert(Course course) {
		return cRepo.save(course);
	}
	//刪除

//	public void deleteCourse(Course course) {
//		cRepo.delete(course);
//	}
	public void deleteById(Integer courseId) {
		cRepo.deleteById(courseId);
	}
	//更新
	public Course updateCourse(Course course) {
		return cRepo.save(course);
	}
	//用ID查
	public Course findById(Integer courseId){
		Optional<Course> op = cRepo.findById(courseId);
		Course course = null;
		if(op.isPresent()) {
			course = op.get();
		}
		return course;
	}
	
	//模糊搜尋
	public List<Course> findByNameLike(String courseName){
		return cRepo.findByCourseNameLike("%"+courseName+"%");
	}
}
