package agilewcs;



import static wcs.core.Common.*;
import wcs.core.*;

import java.util.List;
import wcs.java.Env;
import wcs.java.util.QueryString;

public class Router extends wcs.java.Router {

	@Override
	public void route(Env e, String path, QueryString qs) {

		// default home page
		if (path == null)
			path = "Home";
		// remove extension from the name
		if (path.endsWith(".html")) {
			path = path.substring(0, path.length() - 5);
		}

		// search for a page with the given name
		List<Id> pages = e.find("Page", arg("name", path));
		if (pages.size() > 0) {
			String cid = pages.get(0).cid.toString();
			call("AwWrapper", arg("c", "Page"), arg("cid", cid));
		} else {
			call("AwError", arg("msg", "Page Not Found"));
		}
	}

	@Override
	public String getSite() {
		return "AgileWCS";
	}

}