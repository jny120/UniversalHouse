package tw.course.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;



public interface CourseRepository extends JpaRepository<Course, Integer> {
	
	public List<Course> findByCourseNameLike(String courseName);
}
