package tw.forum.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		aRepo.save(article);

		return aRepo.findByTitle(article.getTitle()).get(0);
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

	public List<Article> findByMemberPk(Integer memberPk) {
		return aRepo.findByMemberPk(memberPk);
	}

	public List<Article> findAll() {
		return aRepo.findAll();
	}

	public Article findById(Integer articleId) {
		Article article = aRepo.findById(articleId).get();
		return article;
	}

	public List<Article> findByStatus() {
		return aRepo.findByStatus("public");
	}

	public Article findByTitle(String title) {

		List<Article> articles = aRepo.findByTitle(title);

		if (articles.size() != 0) {
			return articles.get(0);
		} else {
			return null;
		}
	}

	public List<Article> findByViews() {
		return aRepo.findByViews();
	}
	
}
