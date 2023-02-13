package tw.test.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class galleryDao {

	@Autowired
	private galleryRepository gRepo;

	// 新增圖片

	// public void saveImage(galleryBean tb) {
	// log.info("新增測驗圖片結果");
	// try {
	// galleryBean result = new galleryBean();
	// Blob blob =tb.getTestImage();
	// result.setImageNumber(tb.getImageNumber());
	//
	// result.setTestImage(blob);
	//
	// System.out.println(result);
	// log.info("saveImage(), 新增成功:ImageBean:" + tb);
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	// }

	public galleryBean updataTest(galleryBean gBean) {
		// return tDao.updataTest(testCenter);
		return gRepo.save(gBean);

	}

	public galleryBean insert(galleryBean gBean) {
		// Session session = factory.openSession();
		if (gBean != null) {
			gRepo.save(gBean);
		}
		// session.close();
		return gBean;
	}

	public galleryBean findByPk(Integer imagePk) {
		// Session session=factory.openSession();
		// galleryBean resultBean = session.get(galleryBean.class, imagePk);
		// session.close();
		Optional<galleryBean> gOptional = gRepo.findById(imagePk);
		galleryBean b1 = null;
		if (!gOptional.isEmpty()) {
			b1 = gOptional.get();
		}
		return b1;
	}

	// 顯示圖片
	// public galleryBean showImg(String imageNumber) {
	// String hql = "from galleryBean where imageNumber= :imageNumber";
	// Session session = factory.openSession();
	// log.info("顯示新增成功的圖片");
	// try {
	// System.out.println("----------"+imageNumber);
	// Query<galleryBean> imageNumbers = session.createQuery(hql,galleryBean.class)
	// .setParameter("imageNumber", imageNumber);
	// galleryBean resultBean = imageNumbers.getSingleResult();
	//
	// return resultBean;
	// } catch (Exception e) {
	// e.printStackTrace();
	// return null;
	// }
	//
	// }
	public List<galleryBean> selectAll() {
		// Session session = factory.openSession();
		// Query<galleryBean> query = session.createQuery("from galleryBean",
		// galleryBean.class);
		// List<galleryBean> result = query.getResultList();
		// session.close();
		return gRepo.findAll();
	}

	// public List<galleryBean> showAllImg(){
	// String hql = "from galleryBean";
	// Session session = factory.openSession();
	// try {
	//
	// Query<galleryBean> query = session.createQuery(hql, galleryBean.class);
	// List<galleryBean> result = query.getResultList();
	//
	// return result;
	// } catch (Exception e) {
	//
	// e.printStackTrace();
	// return null;
	// }
	//
	// }
	// deleteImg
	public void deleteByImgPk(Integer imgPk) {
		// galleryBean gallery = null;
		// Session session = factory.openSession();
		// try {
		// gallery = session.get(galleryBean.class, imgPk.getImagePk());
		// if(gallery!=null) {
		gRepo.deleteById(imgPk);
		System.out.println("commit");
		System.out.println("刪除一筆資料");
		// return true;
		// }
		// } catch (Exception e) {

		// System.out.println("rollback");
		// e.printStackTrace();
		// }
		// return false;

	}
	// findByPk
	// public galleryBean findByPk(Integer ImagePk) {
	// String hql = "from galleryBean where imgPk= :m";
	// Session session = factory.openSession();
	// System.out.println("galleryDao findByPk"+ ImagePk);
	// try {
	//
	// galleryBean gallery = session.createQuery(hql,galleryBean.class)
	// .setParameter("m", ImagePk)
	// .getSingleResult();
	//
	// return gallery;
	// } catch (NoResultException | NonUniqueResultException e) {
	// e.printStackTrace();
	// return null;
	// }
	//
	// }

}
