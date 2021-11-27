package com.project.CMSC495;
import org.testng.Assert;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class GetterSetterTest {
	private User user;
	private int idTest;
	private String nameTest, emailTest, providerTest, channelTest;
	
	@BeforeTest
	public void setTestData() {
		user = new User();
		idTest = 12345;
		nameTest = "Name";
		emailTest = nameTest + "@something.com";
		providerTest = "Provider";
		channelTest = "Channel";
	}
	
	@Test (description="Tests the getter and setter of id")
	protected void idTest() {
		user.setId(idTest);
		Assert.assertEquals(idTest, user.getId());
	}
	
	@Test (description="Tests the getter and setter of name")
	protected void nameTest() {
		user.setName(nameTest);
		Assert.assertEquals(nameTest, user.getName());
	}
	
	@Test (description="Tests the getter and setter of email")
	protected void emailTest() {
		user.setEmail(emailTest);
		Assert.assertEquals(emailTest, user.getEmail());
	}
	
	@Test (description="Tests the getter and setter of provider")
	protected void providerTest() {
		user.setProvider(providerTest);
		Assert.assertEquals(providerTest, user.getProvider());
	}
	
	@Test (description="Tests the getter and setter of channels")
	protected void channelTest() {
		user.setChannels(channelTest);
		Assert.assertEquals(channelTest, user.getChannels());
	}
}
