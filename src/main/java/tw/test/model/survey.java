package tw.test.model;

import java.util.Collection;
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
@Table(name = "survey")
@Component
public class survey {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "surveypk")
    private Integer surveypk;

    @Column(name = "survey")
    private String survey;

    @Column(name = "surveytype")
    private String surveytype;

    @Column(name = "welcometext")
    private String welcometext;

    @Column(name = "endtext")
    private String endtext;

    @Column(name = "testimage")
    private byte[] testImage;

    @Column(name = "shelves")
    private String shelves;

    public survey() {
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("survey [surveypk=");
        builder.append(surveypk);
        builder.append(", survey=");
        builder.append(survey);
        builder.append(", surveytype=");
        builder.append(surveytype);
        builder.append(", welcometext=");
        builder.append(welcometext);
        builder.append(", endtext=");
        builder.append(endtext);
        builder.append(", shelves=");
        builder.append(shelves);
        builder.append("]");
        return builder.toString();
    }

    public byte[] getTestImage() {
        return testImage;
    }

    public void setTestImage(byte[] testImage) {
        this.testImage = testImage;
    }

    public String getSurveytype() {
        return surveytype;
    }

    public void setSurveytype(String surveytype) {
        this.surveytype = surveytype;
    }

    public Integer getSurveypk() {
        return surveypk;
    }

    public void setSurveypk(Integer surveypk) {
        this.surveypk = surveypk;
    }

    public String getSurvey() {
        return survey;
    }

    public void setSurvey(String survey) {
        this.survey = survey;
    }

    public String getWelcometext() {
        return welcometext;
    }

    public void setWelcometext(String welcometext) {
        this.welcometext = welcometext;
    }

    public String getEndtext() {
        return endtext;
    }

    public void setEndtext(String endtext) {
        this.endtext = endtext;
    }

    public String getShelves() {
        return shelves;
    }

    public void setShelves(String shelves) {
        this.shelves = shelves;
    }

}
