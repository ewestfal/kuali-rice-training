package trnapp.kew;

import java.util.ArrayList;
import java.util.List;

import org.kuali.rice.kew.framework.postprocessor.DocumentRouteLevelChange;
import org.kuali.rice.kew.framework.postprocessor.DocumentRouteStatusChange;
import org.kuali.rice.kew.framework.postprocessor.ProcessDocReport;
import org.kuali.rice.kew.postprocessor.DefaultPostProcessor;

public class TrackingPostProcessor extends DefaultPostProcessor {

	private static List<DocumentRouteLevelChange> routeLevelChanges = new ArrayList<DocumentRouteLevelChange>();
	private static List<DocumentRouteStatusChange> routeStatusChanges = new ArrayList<DocumentRouteStatusChange>();
	
	public static List<DocumentRouteLevelChange> getRouteLevelChanges() {
		return routeLevelChanges;
	}
	
	public static void resetRouteLevelChanges() {
		routeLevelChanges.clear();
	}
	
	public static List<DocumentRouteStatusChange> getRouteStatusChanges() {
		return routeStatusChanges;
	}
	
	public static void resetRouteStatusChanges() {
		routeStatusChanges.clear();
	}
	
	@Override
	public ProcessDocReport doRouteLevelChange(
			DocumentRouteLevelChange levelChangeEvent) throws Exception {
		
		routeLevelChanges.add(levelChangeEvent);
		
		return super.doRouteLevelChange(levelChangeEvent);
	}

	@Override
	public ProcessDocReport doRouteStatusChange(
			DocumentRouteStatusChange statusChangeEvent) throws Exception {
		
		routeStatusChanges.add(statusChangeEvent);
		
		return super.doRouteStatusChange(statusChangeEvent);
	}

	
	
}
