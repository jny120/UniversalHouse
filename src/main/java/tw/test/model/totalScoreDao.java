package tw.test.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class totalScoreDao {

	@Autowired
	private totalScoreRepository sRepo;
	// @Autowired
	// private testerRepository testerRepository;

	public byte[] imgGallery(Integer id) {
		byte[] gallery = sRepo.findById(id).get().getGallerybean().getTestImage();
		System.out.println(gallery);
		return gallery;

	}

	public totalScore addSumTest(String mb, String s) {

		totalScore totalScore = new totalScore();
		System.out.println(mb + "addSumTest");
		System.out.println(s + "addSumTest");
		totalScore.setMemberId(mb);
		totalScore.setFraction(s);
		sRepo.save(totalScore);

		return totalScore;
	}

	public totalScore save(totalScore totalScore) {
		return sRepo.save(totalScore);

	}

	public totalScore addSumTest4(String mb, String s, String r, String r2, String n) {

		totalScore totalScore = new totalScore();
		System.out.println(mb + "addSumTest");
		System.out.println(s + "addSumTest");
		totalScore.setMemberId(mb);
		totalScore.setFraction(s);
		totalScore.setInputRadio(r);
		totalScore.setInputRadio2(r2);
		sRepo.save(totalScore);

		return totalScore;
	}

	public void saveOneToMany(totalScore total, tester tester) {

		tester.getTotal().add(total);
		total.setTester(tester);
		sRepo.save(total);
	}

	public void saveImgIntotalScore(totalScore total, galleryBean gallery) {
		gallery.getTotal().add(total);
		total.setGallerybean(gallery);
		sRepo.save(total);
	}

	public List<totalScore> showallTotalScore() {
		return sRepo.findAll();

	}

	public List<totalScore> showallMembertest(String memberid) {
		return sRepo.checkmemberTest(memberid);

	}
	// 找測試者的所有結果
	// public List<totalScore> readByMemberId(String memberId) {
	// return sRepo.findByMemberId(memberId);
	// }
}
