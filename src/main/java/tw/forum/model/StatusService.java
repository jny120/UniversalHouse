package tw.forum.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class StatusService {

	@Autowired
	private StatusRepository sRepo;

	public Status save(Status status) {

		return sRepo.save(status);

	}

	public Status update(Status status) {

		return sRepo.save(status);

	}

	public Status findById(Integer statusId) {

		return sRepo.findById(statusId).get();

	}

	public void deleteById(Integer statusId) {

		sRepo.deleteById(statusId);

	}

	public Status findByArticleIdAndMemberPk(Integer articleId, Integer memberPk) {

		return sRepo.findByArticleIdAndMemberPk(articleId, memberPk);
	}

	public List<Status> findByArticleIdAndReported(Integer aricleId, Integer reported) {
		return sRepo.findByArticleIdAndReported(aricleId, reported);
	}

	public List<Status> findByMemberPk(Integer memberPk) {

		return sRepo.findByMemberPk(memberPk);
	}

	public List<Status> findByArticleId(Integer aricleId) {

		return sRepo.findByArticleId(aricleId);
	}

	public List<Status> findViewRecord(Integer memberPk) {

		return sRepo.findViewRecord(memberPk);
	}

	public List<Status> findByMemberPkAndUpdateTime(Integer memberPk) {

		return sRepo.findByMemberPkAndUpdateTime(memberPk);

	}

}
