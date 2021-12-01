/* Name: Mohammed Shaikh, Michael Scobee, Eddy Owings, Anthony Pede
 * CMSC 495
 * Capstone project
 * 
 * This java file defines the data elements associated with each created user. All of the 
 * setters and getters are listed here for all of the fields that are going to be 
 * associated with each user entry in the database, like name, email, provider, and channels.
 * 
 */


package com.project.CMSC495;

import java.util.Arrays;
import java.util.List;
import javax.persistence.*;


@Entity
@Table(name = "users")

public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
    private String name;
    private String email;
    private String provider;
    private String channels;

 
    // Getters
    public int getId() {
        return id;
      }
    public String getName() {
      return name;
    }
    public String getEmail() {
        return email;
      }
    public String getProvider() {
        return provider;
      }
    public String getChannels() {
        return channels;
      }


    // Setters
    public void setId(int id) {
        this.id = id;
      }
    public void setName(String name) {
      this.name = name;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setProvider(String provider) {
        this.provider = provider;
    }
    public void setChannels(String channels) {
        this.channels = channels;
    }

    // override toString()
    @Override
    public String toString() {
    	List<String> userChoices = Arrays.asList(name, email, provider, channels); 
    	String userChoicesString = String.join(", ", userChoices);
        return userChoicesString;
    }
     
}
