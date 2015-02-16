using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PortableRazor;
using $rootnamespace$.Models;
using $rootnamespace$.Views;

namespace $rootnamespace$.Controllers
{
	class Controller1
	{
		IHybridWebView webView;

		public Controller1 (IHybridWebView webView)
		{
			this.webView = webView;
		}

		public void ShowRazorView() {
			var model = new Model1() { Text = "Text from model" };
			var template = new RazorView() { Model = model };
			var page = template.GenerateString();

			webView.LoadHtmlString (page);
		}

		public void UpdateLabel (string val) {
			webView.EvaluateJavascript(string.Format("SetLabelText('{0}');", val));
		}
	}


}
