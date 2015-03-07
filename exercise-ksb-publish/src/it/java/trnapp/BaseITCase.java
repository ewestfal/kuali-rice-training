package trnapp;

import org.junit.Assert;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

/**
 * A base test case that can be used for integration tests and which starts the
 * Spring context and starts a transaction before the test begins, rolling back
 * the transaction after the test has completed.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:trnapp/BootStrapSpringBeans.xml")
@Transactional
@TransactionConfiguration(defaultRollback = true)
public abstract class BaseITCase extends Assert {

	@Autowired
	private ApplicationContext context;
	
	protected ApplicationContext getContext() {
		return context;
	}
		
}
