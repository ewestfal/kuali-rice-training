package trnapp.bookstore.service;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

public class EchoServiceImpl implements EchoService {

	private static final Logger LOG = Logger.getLogger(EchoServiceImpl.class);
	private static int HELLO_WORLD_COUNT = 0;
	
	public String echo(String value) {
		LOG.info("Executing EchoServiceImpl.echo.  Echoing value: " + value);
		return value;
	}
	
	public String echoReverse(String value) {
		LOG.info("Executing EchoServiceImpl.echoReverse.  Reversing value: " + value);
		return StringUtils.reverse(value);
	}
	
	public void helloWorld() {
		System.out.println("#########################################################");
		System.out.println("Processing Thread: " + Thread.currentThread().getName());
		System.out.println("Hello World! " + ++HELLO_WORLD_COUNT);
		System.out.println("#########################################################");
	}

}
