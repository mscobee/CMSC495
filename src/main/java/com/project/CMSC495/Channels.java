package com.project.CMSC495;

import java.util.Arrays;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "channels")

public class Channels {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="channel_id")
	private int channel_id;
	private String channel_name;
	private Boolean FIOS1;
	private Boolean FIOS2;
	private Boolean cox1;
	private Boolean cox2;
	private Boolean cox3;
	private Boolean cox4;
	private Boolean comcast1;
	private Boolean comcast2;
	private Boolean comcast3;
	private Boolean comcast4;
	private Boolean fubo;
	private Boolean philo;
	private Boolean sling;
	private Boolean youtube;

	public int getChannel_id() {
		return channel_id;
	}
	public String getChannel_Name() {
		return channel_name;
	}
	public Boolean getFIOS1() {
		return FIOS1;
	}
	public Boolean getFIOS2() {
		return FIOS2;
	}
	public Boolean getCox1() {
		return cox1;
	}
	public Boolean getCox2() {
		return cox2;
	}
	public Boolean getCox3() {
		return cox3;
	}
	public Boolean getCox4() {
		return cox4;
	}
	public Boolean getComcast1() {
		return comcast1;
	}
	public Boolean getComcast2() {
		return comcast2;
	}
	public Boolean getComcast3() {
		return comcast3;
	}
	public Boolean getComcast4() {
		return comcast4;
	}
	public Boolean getFubo() {
		return fubo;
	}
	public Boolean getPhilo() {
		return philo;
	}
	public Boolean getSling() {
		return sling;
	}
	public Boolean getYouTube() {
		return youtube;
	}
	
	public void setChannel_id(int channel_id) {
		this.channel_id = channel_id;
	}
	public void setChannel_name(String channel_name) {
		this.channel_name = channel_name;
	}
	public void setFIOS1(Boolean FIOS1) {
		this.FIOS1 = FIOS1;
	}
	public void setFIOS2(Boolean FIOS2) {
		this.FIOS2 = FIOS2;
	}
	public void setCox1(Boolean cox1) {
		this.cox1 = cox1;
	}
	public void setCox2(Boolean cox2) {
		this.cox2 = cox2;
	}
	public void setCox3(Boolean cox3) {
		this.cox3 = cox3;
	}
	public void setCox4(Boolean cox4) {
		this.cox4 = cox4;
	}
	public void setComcast1(Boolean comcast1) {
		this.comcast1 = comcast1;
	}
	public void setComcast2(Boolean comcast2) {
		this.comcast2 = comcast2;
	}
	public void setComcast3(Boolean comcast3) {
		this.comcast3 = comcast3;
	}
	public void setComcast4(Boolean comcast4) {
		this.comcast4 = comcast4;
	}
	public void setFubo(Boolean fubo) {
		this.fubo = fubo;
	}
	public void setPhilo(Boolean philo) {
		this.philo = philo;
	}
	public void setSling(Boolean sling) {
		this.sling = sling;
	}
	public void setYouTube(Boolean youtube) {
		this.youtube = youtube;
	}
	
    // override toString()
    @Override
    public String toString() {
    	List<String> channelList = Arrays.asList(channel_name); 
    	String channelListString = String.join(", ", channelList );
        return channelListString;
    }
	
}