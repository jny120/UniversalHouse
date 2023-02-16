package tw.test.model;

public class QuestionResultsDto {

    private Integer id;

    private String memberid;

    private String inputradio;

    private String inputradio2;

    public QuestionResultsDto() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMemberId() {
        return memberid;
    }

    public void setMemberId(String memberId) {
        this.memberid = memberId;
    }

    public String getInputRadio() {
        return inputradio;
    }

    public void setInputRadio(String inputRadio) {
        this.inputradio = inputRadio;
    }

    public String getInputRadio2() {
        return inputradio2;
    }

    public void setInputRadio2(String inputRadio2) {
        this.inputradio2 = inputRadio2;
    }

}
