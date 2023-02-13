package tw.forum.model;

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

	public Status findByArticleIdAndMemberPk(Integer articleId, Integer memberPk) {
		
		Status result = sRepo.findByArticleIdAndMemberPk(articleId, memberPk);

		return result;
	}

}
