/* Name: Mohammed Shaikh, Michael Scobee, Eddy Owings, Anthony Pede
 * CMSC 495
 * Capstone project
 * 
 * This java file is an interface that allows the application to execute create, read, update,
 * and delete methods into the database, and this interface is specifically for the channels. 
 * It uses the CrudRepository class to enable the application 
 * to use these methods.
 * 
 */



package com.project.CMSC495;


import org.springframework.data.repository.CrudRepository;
import com.project.CMSC495.Channels;

public interface ChannelRepository extends CrudRepository<Channels, Integer> {
}
