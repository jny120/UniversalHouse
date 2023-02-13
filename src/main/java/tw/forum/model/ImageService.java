package tw.forum.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ImageService {

	@Autowired
	private ImageRepository iRepo;

	public void save(Article article, Image image) {

		image.setArticle(article);

		iRepo.save(image);

		List<Image> images = new ArrayList<Image>();
		images.add(image);
		article.setImages(images);

	}

	public Image update(Image image) {

		return iRepo.save(image);

	}

	public List<Image> findByArticleId(Integer articleId) {

		return iRepo.findByArticleId(articleId);

	}

	public Image findById(Integer imageId) {

		Optional<Image> images = iRepo.findById(imageId);
		return images.get();

	}

	public void deleteByArticleId(Integer articleId) {

		for (Image image : iRepo.findByArticleId(articleId)) {

			iRepo.deleteById(image.getImageId());

		}

	}

	public void deleteById(Integer imageId) {

		iRepo.deleteById(imageId);
	}

}
