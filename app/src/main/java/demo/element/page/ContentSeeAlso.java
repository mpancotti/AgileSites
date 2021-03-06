package demo.element.page;

import wcs.core.Log;
import wcs.java.Asset;
import wcs.java.Env;
import wcs.java.Element;
import wcs.java.Picker;
import wcs.java.Template;
import wcs.java.AssetSetup;

public class ContentSeeAlso extends Element {

	final static Log log = Log.getLog(ContentSeeAlso.class);

	public static AssetSetup setup() {

		return new Template("Page", "DmContentSeeAlso", Template.INTERNAL,
				demo.element.page.ContentSeeAlso.class) //
				.cache("false", "false") // change caching here
				.description("Template DmContentSeeAlso for type Page Content");
	}

	@Override
	public String apply(Env e) {
		Picker html = Picker.load("/blueprint/template.html", "#seealso1");
		Asset a = e.getAsset();
		html.replace("#seealso-title1", a.getString("Title"));
		html.replace("#seealso-text1", a.getString("Summary"));
		html.attr("#seealso-link1", "href", a.getUrl());
		html.removeAttrs("*[id^=seealso]", "id");
		return html.html();
	}

}
