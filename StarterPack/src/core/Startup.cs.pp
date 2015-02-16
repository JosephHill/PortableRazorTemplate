using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using PCLStorage;
using Plugin.EmbeddedResource;
using PortableRazor;
using $rootnamespace$.Controllers;

namespace $rootnamespace$
{
	public class Startup
	{
		public Startup () {
		}

		/// <summary>
		/// Call this method to initialize the app on first run
		/// </summary>
		/// <param name="webView"></param>
		/// <returns></returns>
		public static async Task Init (IHybridWebView webView) {

			// Initialize static content (styles, images, scripts, database files, etc.) here
			//if (await FileSystem.Current.GetFileFromPathAsync(PortablePath.Combine(webView.BasePath, "style.css")) == null) {
			//	var writer = new ResourceWriter(typeof(Startup).GetTypeInfo().Assembly);
			//	await writer.WriteFile("Content/style.css", webView.BasePath);
			//}

			// Initialize all controllers and register them with the RouteHandler
			var controller = new Controller1(webView);
			RouteHandler.RegisterController("Controller1", controller);
		}

		/// <summary>
		/// Call this method on the UI thread to show the app's initial view
		/// </summary>
		public static void Show () {
			var controller = RouteHandler.Controllers["Controller1"] as Controller1;
			controller.ShowRazorView();
		}
	}
}
