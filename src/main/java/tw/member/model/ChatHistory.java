package tw.member.model;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Table(name = "CHATHISTORY")
public class ChatHistory {

	public ChatHistory() {
	}

	public ChatHistory(Member sender, Member receiver, String message) {
		this.sender = sender;
		this.receiver = receiver;
		this.message = message;
		this.timestamp = new Timestamp( new Date().getTime() );
		this.readed = false;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne
//	@JsonIgnore
	@JoinColumn(name = "SENDER", updatable = false)
	private Member sender;

	@ManyToOne
	@JsonIgnore
	@JoinColumn(name = "RECEIVER", updatable = false)
	private Member receiver;

	@Column(name = "MESSAGE", nullable = false, length = Integer.MAX_VALUE)
	private String message;

	@Column(name = "TIMESTAMP", nullable = false)
	private Timestamp timestamp;

	@Column(name = "READED", nullable = false)
	private Boolean readed;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Member getSender() {
		return sender;
	}

	public void setSender(Member sender) {
		this.sender = sender;
	}

	public Member getReceiver() {
		return receiver;
	}

	public void setReceiver(Member receiver) {
		this.receiver = receiver;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public Boolean getReaded() {
		return readed;
	}

	public void setReaded(Boolean readed) {
		this.readed = readed;
	}
	
	
	
}
