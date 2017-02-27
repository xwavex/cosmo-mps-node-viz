package dlw.cosmo.lang.graph.viz.interfaces.mps;

/**
 * Interface that needs to be implemented by MPS! It enables the visualization
 * tool to retrieve new data for visualization.
 *
 * @author dwigand
 *
 */
public interface MPSLanguageGraphViz {

	/**
	 * Retrieves new data from MPS for visualization.
	 *
	 * @return json-based String.
	 */
	public String retrieveDataAsJsonString();

}
