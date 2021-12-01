/* Name: Mohammed Shaikh, Michael Scobee, Eddy Owings, Anthony Pede
 * CMSC 495
 * Capstone project
 * 
 * This java file is a child class of CrudRepository that allows the application to execute create, read, update,
 * and delete methods into the various repositories, and this interface is for the 
 * user repository. It uses the CrudRepository class to enable the application 
 * to use these methods.
 * 
 */

package com.project.CMSC495;

import org.springframework.data.repository.CrudRepository;
import com.project.CMSC495.User;


public interface UserRepository extends CrudRepository<User, Integer> {
}
