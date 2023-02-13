package tw.project.pjImg.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.project.project.model.Project;

@Service
@Transactional
public class PJImgService {

	@Autowired
	private PJImgRepository pjImgRepository;

	// 新增
	public void savePJImg(PjImg pjImg) {
		pjImgRepository.save(pjImg);
	}

	// 更改
	public void updatePJImg(PjImg pjImg) {
		pjImgRepository.save(pjImg);
	}

	// 查詢
	public List<PjImg> findByProject(Project project) {
		return pjImgRepository.findByProject(project);
	};

	public PjImg findById(Integer imgId) {
		Optional<PjImg> p = pjImgRepository.findById(imgId);
		return p.get();
	};

	// 刪除
	public void deletePJImg(PjImg pjImg) {
		pjImgRepository.delete(pjImg);
	}
}
