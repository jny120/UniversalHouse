package tw.test.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tester")
@Component
public class tester {

	// member的測試
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "testername")
	private String testername;

	// @OneToMany(fetch = FetchType.LAZY,mappedBy = "tester",cascade =
	// CascadeType.ALL)
	@JsonIgnore
	@JsonIgnoreProperties("tester")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tester")
	private Set<totalScore> totalscore = new LinkedHashSet<totalScore>();

	public tester() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTestername() {
		return testername;
	}

	public void setTestername(String testername) {
		this.testername = testername;
	}

	public Set<totalScore> getTotal() {
		return totalscore;
	}

	public void setTotal(Set<totalScore> total) {
		this.totalscore = total;
	}

}
