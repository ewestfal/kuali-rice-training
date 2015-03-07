package trnapp;

import org.junit.Before;
import org.kuali.rice.core.api.config.property.ConfigContext;
import org.kuali.rice.ksb.util.KSBConstants;

public class BaseKewITCase extends BaseITCase {

	@Before
	public void setUp() throws Exception {
		setMessagingToSynchronous();
	}
	
	/**
	 * In order to facilitate ease of unit testing, we set the messaging to synchronous so
	 * that we don't have to deal with asynchronous workflow processing in the background.
	 */
	private void setMessagingToSynchronous() {
        ConfigContext.getCurrentContextConfig().putProperty(KSBConstants.Config.MESSAGE_DELIVERY, "synchronous");
	}
	
}
