package dlw.cosmo.lang.graph.viz.interfaces.own;

import org.json.JSONObject;

/**
 * Interface that needs to be implemented by "us : Javafx". It enables MPS to
 * interact with the visualization tool.
 *
 * @author dwigand
 *
 */
public interface LanguageGraphVizIF {
	/**
	 * Triggers reloading of the visualization.
	 */
	public void reloadVisualization();

	/**
	 * Inject new data for visualization.
	 *
	 * @param json-based
	 *            string that represents the new data.
	 */
	public void injectData(String jsonString);

	/**
	 * Inject new data for visualization.
	 *
	 * @param JSONObject
	 *            that represents the new data.
	 */
	public void injectData(JSONObject json);

	/**
	 * Reload template HTML file.
	 */
	public void reloadTemplateHtml();
}
