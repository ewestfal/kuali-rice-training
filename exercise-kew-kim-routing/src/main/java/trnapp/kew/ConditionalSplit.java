package trnapp.kew;

import java.util.ArrayList;
import java.util.List;

import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.engine.RouteHelper;
import org.kuali.rice.kew.engine.node.SimpleSplitNode;
import org.kuali.rice.kew.engine.node.SplitResult;
import org.kuali.rice.kew.routeheader.DocumentContent;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class ConditionalSplit extends SimpleSplitNode {
	
	private static final String BRANCH_NUMBER_ELEMENT = "branchNumber";
	
	public SplitResult process(RouteContext context, RouteHelper helper)
			throws Exception {
		DocumentContent docContent = context.getDocumentContent();
		Document xmlDocument = docContent.getDocument();
		NodeList branchNumberElements = xmlDocument.getElementsByTagName(BRANCH_NUMBER_ELEMENT);
		if (branchNumberElements != null && branchNumberElements.getLength() != 0) {
			Element branchNumberElement = (Element)branchNumberElements.item(0);
			String branchNumber = branchNumberElement.getTextContent();
			if (branchNumber != null && !branchNumber.trim().equals("")) {
				List<String> branchNames = new ArrayList<String>();
				branchNames.add("Branch" + branchNumber);
				return new SplitResult(branchNames);
			}
		}
		// if they didn't submit xml that helps us identify the branch number, just take all branches
		return super.process(context, helper);
	}

}
