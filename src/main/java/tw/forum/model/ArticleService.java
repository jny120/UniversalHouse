package tw.forum.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.member.model.Member;

@Service
@Transactional
public class ArticleService {

	@Autowired
	private ArticleRepository aRepo;

	public Article save(Article article, Member member) {

		List<Article> articleList = new ArrayList<Article>();
		articleList.add(article);

		article.setMember(member);
		member.setArticles(articleList);
		return aRepo.save(article);

	}

	public void deleteById(Article article) {

		Member member = article.getMember();
		member.setArticles(null);

		aRepo.deleteById(article.getArticleId());
	}

	public Article updateById(Article article) {

		article.setMember(article.getMember());
		return aRepo.save(article);
	}

	public List<Article> findAll() {

		return aRepo.findAll();
	}

	public Article findById(Integer articleId) {
		Article article = aRepo.findById(articleId).get();
		return article;
	}

	public Page<Article> findByPublic(Pageable pageable) {
		return aRepo.findByPublicOrderByUpdateTimeDesc(pageable);
	}

	public List<Article> orderByUpdateTime() {
		return aRepo.orderByUpdateTime();
	}

	public List<Article> orderByViews() {
		return aRepo.orderByViews();
	}

	public List<Article> orderLikeArticle() {
		return aRepo.orderLikeArticle();
	}

	public List<Article> findByMemberPk(Integer memberPk) {
		return aRepo.findByMemberPkOrderByUpdateTimeDesc(memberPk);
	}

	public Page<Article> findByStatusAndTopicName(String topicName, Pageable pageable) {
		return aRepo.findByStatusAndTopicNameOrderByUpdateTimeDesc("public", topicName, pageable);
	}

	public Page<Article> findByTitle(String title, Pageable pageable) {
		return aRepo.findByTitle(title, pageable);
	}
	
	public List<Article> orderByViewsAndTopicName(String topicName) {
		return aRepo.orderByViewsAndTopicName(topicName);
	}

	public List<Article> orderLikeArticleAndTopicName(String topicName) {
		return aRepo.orderByLikeArticleAndTopicName(topicName);
	}

}
