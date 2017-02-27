package dlw.cosmo.lang.graph.viz;

import java.awt.BorderLayout;
import java.awt.Container;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

import javax.imageio.ImageIO;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sun.javafx.application.PlatformImpl;

import dlw.cosmo.lang.graph.viz.interfaces.mps.MPSLanguageGraphViz;
import dlw.cosmo.lang.graph.viz.interfaces.own.LanguageGraphVizIF;
import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.embed.swing.JFXPanel;
import javafx.embed.swing.SwingFXUtils;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.RadioButton;
import javafx.scene.control.Toggle;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import netscape.javascript.JSObject;

public class LanguageGraphViz implements LanguageGraphVizIF {
	private String templateHtmlFrame = "template_LanguageGraphViz.html";
	private InputStream templateHtmlFrameIS;
	private Scene scene;
	private JFXPanel jfxPanel;
	private WebEngine webEngine;
	private String injectableData = "{\"data\": {}}";
	private MPSLanguageGraphViz mpsReference = null;
	private boolean debug = false;
	private String templatePersistence = "";

	public boolean isDebug() {
		return debug;
	}

	public void setDebug(boolean debug) {
		this.debug = debug;
	}

	public String getInjectableData() {
		return injectableData;
	}

	public void setInjectableData(String injectableData) {
		this.injectableData = injectableData;
	}

	// TODO include this!!!!

//	<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
//	  "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
//	<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
//	     width="50px" height="50px" viewBox="0 0 50 50">
//	  <defs>
//	    <style type="text/css"><![CDATA[
//	      .socIcon g {
//	        fill:red;
//	      }
//	    ]]></style>
//	  </defs>
//	  <g>
//	    <path d="M28.44......./>
//	  </g>
//	</svg>

	public LanguageGraphViz(Container container, InputStream templateHtml, MPSLanguageGraphViz mpsRef) {
		debug = false;
		mpsReference = mpsRef;

		templateHtmlFrameIS = this.getClass().getResourceAsStream("template_LanguageGraphViz.html");

		if (templateHtml != null) {
			templateHtmlFrameIS = templateHtml;
		}

		try {
			templatePersistence = readFile(templateHtmlFrameIS);
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		Platform.setImplicitExit(false);

		jfxPanel = new JFXPanel();
		createScene();

		// Wrap adding the scene to the panel into a runnable
		Runnable runnable = new Runnable() {
			@Override
			public void run() {
				jfxPanel.setScene(scene);
			}
		};
		// Execute the runnable depending on which tread we are
		if (Platform.isFxApplicationThread()) {
			runnable.run();
		} else {
			FutureTask<Object> task = new FutureTask<>((Callable<Object>) () -> {
				runnable.run();
				// if (!once) {
				// once = true;
				// }
				return null;
			});
			Platform.runLater(task);
			try {
				task.get();
			} catch (InterruptedException e) {
				e.printStackTrace();
			} catch (ExecutionException e) {
				e.printStackTrace();
			}
		}
		// Set Panel properly to container
		container.setLayout(new BorderLayout());
		container.add(jfxPanel, BorderLayout.CENTER);

	}

	public String getTemplateHtmlFrame() {
		return templateHtmlFrame;
	}

	public void setTemplateHtmlFrame(String templateHtmlFrame) {
		this.templateHtmlFrame = templateHtmlFrame;
	}

	// // TODO override this!
	// public String injectData() throws JSONException {
	// JSONObject root = new JSONObject();
	// JSONArray root_children = new JSONArray();
	// root.put("name", "Root DSL");
	// for (int i = 0; i < 4; i++) {
	// JSONObject rootChild = new JSONObject();
	// rootChild.put("name", "rootChild_" + i);
	// root_children.put(rootChild);
	// }
	// root.put("children", root_children);
	// return root.toString();
	// }

	/**
	 * createScene
	 *
	 * Note: Key is that Scene needs to be created and run on "FX user thread"
	 * NOT on the AWT-EventQueue Thread
	 *
	 */
	@SuppressWarnings("restriction")
	private void createScene() {
		PlatformImpl.startup(new Runnable() {
			@Override
			public void run() {

				StackPane root = new StackPane();

				BorderPane mainRoot = new BorderPane();
				mainRoot.setCenter(root);

				// Create HBox for Buttons and Radio Buttons
				final ToggleGroup toggleGroup = new ToggleGroup();
				RadioButton rb1 = new RadioButton("Radial Tree");
				rb1.setToggleGroup(toggleGroup);

				RadioButton rb2 = new RadioButton("Radial Cluster");
				rb2.setToggleGroup(toggleGroup);

				RadioButton rb3 = new RadioButton("Tree");
				rb3.setToggleGroup(toggleGroup);

				RadioButton rb4 = new RadioButton("Cluster");
				rb4.setToggleGroup(toggleGroup);
				rb4.setSelected(true);

				HBox hboxControls = new HBox();
				hboxControls.setPadding(new Insets(15, 12, 15, 12));
				hboxControls.setSpacing(10);
				hboxControls.setStyle("-fx-background-color: #FFFFFF;");

				hboxControls.getChildren().add(rb1);
				hboxControls.getChildren().add(rb2);
				hboxControls.getChildren().add(rb3);
				hboxControls.getChildren().add(rb4);

				// checkboxes
				CheckBox cbToggleLabels = new CheckBox();
				cbToggleLabels.setText("Labels");
				cbToggleLabels.setSelected(true);
				cbToggleLabels.selectedProperty().addListener(new ChangeListener<Boolean>() {
					public void changed(ObservableValue<? extends Boolean> ov, Boolean old_val, Boolean new_val) {
						webEngine.executeScript("setDrawLabels(" + new_val + ");");
					}
				});

				hboxControls.getChildren().add(cbToggleLabels);

				// Refresh button
				Button reloadBtn = new Button();
				reloadBtn.setOnAction((event) -> {
					Platform.runLater(new Runnable() {
						@Override
						public void run() {
							if (mpsReference != null) {
								String tmp = mpsReference.retrieveDataAsJsonString();
								if (tmp != null && !tmp.equals("")) {
									injectableData = tmp;
								}
							}
							loadTemplateIntoEngine(injectableData);
							webEngine.reload();
						}
					});
				});
				reloadBtn.setText("Reload");
				hboxControls.getChildren().add(reloadBtn);

				// Export as SVG button
				Button exportSVGBtn = new Button();
				exportSVGBtn.setOnAction((event) -> {
					Platform.runLater(new Runnable() {
						@Override
						public void run() {
							String svg = (String) webEngine.executeScript("exportAsSVG();");
							FileChooser fileChooser = new FileChooser();
							FileChooser.ExtensionFilter extFilter = new FileChooser.ExtensionFilter("SVG files (*.svg)",
									"*.svg");
							fileChooser.getExtensionFilters().add(extFilter);
							fileChooser.setTitle("Export SVG as ...");
							File file = fileChooser.showSaveDialog(scene.getWindow());
							if (file != null) {
								String fileName = file.getName();
								String fileExtension = fileName.substring(fileName.indexOf(".") + 1,
										file.getName().length());
								if (!fileExtension.equalsIgnoreCase("svg")) {
									try {
										file = new File(file.getCanonicalPath() + ".svg");
										saveFile(svg, file);
									} catch (IOException e) {
										e.printStackTrace();
									}
								} else {
									saveFile(svg, file);
								}
							}
						}
					});
				});
				exportSVGBtn.setText("Export SVG");
				hboxControls.getChildren().add(exportSVGBtn);

				mainRoot.setTop(hboxControls);

				WebView webView = new WebView();
				webEngine = webView.getEngine();

				// try {
				// injectableData = injectData();
				// } catch (JSONException e) {
				// // TODO Auto-generated catch block
				// e.printStackTrace();
				// }
				loadTemplateIntoEngine(injectableData);

				root.getChildren().add(webView);

				scene = new Scene(mainRoot);

				jfxPanel.setScene(scene);

				toggleGroup.selectedToggleProperty().addListener(new ChangeListener<Toggle>() {
					public void changed(ObservableValue<? extends Toggle> ov, Toggle old_toggle, Toggle new_toggle) {
						if (toggleGroup.getSelectedToggle() != null) {
							RadioButton chk = (RadioButton) new_toggle.getToggleGroup().getSelectedToggle();
							if (chk.equals(rb1)) {
								webEngine.executeScript("transitionToRadialTree();");
							} else if (chk.equals(rb2)) {
								webEngine.executeScript("transitionToRadialCluster();");
							} else if (chk.equals(rb3)) {
								webEngine.executeScript("transitionToTree();");
							} else if (chk.equals(rb4)) {
								webEngine.executeScript("transitionToCluster();");
							}
						}
					}
				});
			}
		});
	}

	private String readFile(InputStream inputStream) throws IOException {
		BufferedReader in = new BufferedReader(new InputStreamReader(inputStream));
		String all = "";
		for (String line; (line = in.readLine()) != null;) {
			all += line + System.lineSeparator();
		}
		return all;
	}

	private void loadTemplateIntoEngine(String injectData) {
		String loadThis = templatePersistence.replace("__placeholder_data__", injectData);
		if (debug) {
			System.out.println(loadThis);
		}
		webEngine.loadContent(loadThis);
	}

	@Override
	public void reloadVisualization() {
		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				loadTemplateIntoEngine(injectableData);
				webEngine.reload();
			}
		});
	}

	private void saveFile(String content, File file) {
		FileWriter fileWriter = null;
		try {
			fileWriter = new FileWriter(file);
			fileWriter.write(content);
			fileWriter.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void injectData(String jsonString) {
		this.injectableData = jsonString;
	}

	@Override
	public void injectData(JSONObject json) {
		this.injectableData = json.toString();
	}

	@Override
	public void reloadTemplateHtml() {
		try {
			templatePersistence = readFile(templateHtmlFrameIS);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}

}
