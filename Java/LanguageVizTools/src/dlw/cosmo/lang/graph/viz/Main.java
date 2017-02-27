package dlw.cosmo.lang.graph.viz;

import java.awt.Dimension;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import dlw.cosmo.lang.graph.viz.interfaces.mps.MPSLanguageGraphViz;

public class Main extends JPanel {

	public Main() {
//		new LanguageGraphViz(this, this.getClass().getClassLoader().getResource("res/template_LanguageGraphViz.html").getFile(), new TestMPSInst());
		new LanguageGraphViz(this, null, new TestMPSInst());
	}

	public static void main(String... args) {
		// Run this later:
		SwingUtilities.invokeLater(new Runnable() {
			@Override
			public void run() {
				final JFrame frame = new JFrame();

				frame.getContentPane().add(new Main());

				frame.setMinimumSize(new Dimension(660, 480));
				frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
				frame.setVisible(true);
			}
		});
	}

	class TestMPSInst implements MPSLanguageGraphViz {
		@Override
		public String retrieveDataAsJsonString() {
			JSONObject root = new JSONObject();
			JSONObject languages = new JSONObject();
			JSONObject data = new JSONObject();
			JSONArray rootdata_children = new JSONArray();
			try {
				root.put("title", "Language Graph Viz");

				JSONObject tmpL1 = new JSONObject();
				tmpL1.put("color", "#FF3300");
				languages.put("L1", tmpL1);

				JSONObject tmpL2 = new JSONObject();
				tmpL2.put("color", "#0033FF");
				languages.put("L2", tmpL2);

				root.put("languages", languages);

				data.put("name", "Root DSL");
				for (int i = 0; i < 4; i++) {
					JSONObject rootdataChild = new JSONObject();
					rootdataChild.put("name", "rootdataChild_" + i);
					if (i == 2) {
						rootdataChild.put("languageref", "L2");
					} else {
						rootdataChild.put("languageref", "L1");
					}

					JSONArray rcs = new JSONArray();
					for (int j = 0; j < 5; j++) {
						JSONObject rc = new JSONObject();
						rc.put("name", "rc" + i);
						if (j == 2) {
							rc.put("languageref", "L2");
						} else {
							rc.put("languageref", "L1");
						}
						rcs.put(rc);
					}

					rootdataChild.put("children", rcs);
					rootdata_children.put(rootdataChild);
				}
				data.put("children", rootdata_children);

				root.put("data", data);

				return root.toString();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
	}
}