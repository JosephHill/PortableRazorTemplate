using System;
using Foundation;
using UIKit;
using PortableRazor;
using PCLStorage;

namespace PortableRazorTemplate.iOS
{
	class HybridWebView : IHybridWebView {
		UIWebView webView;

		NSUrl baseUrl;
		string basePath;

		public string BasePath {
			get {
				return basePath;
			}
			set {
				basePath = value;
				baseUrl = new NSUrl (basePath, true);
			}
		}

		public HybridWebView(UIWebView uiWebView) {
			webView = uiWebView;
			webView.ShouldStartLoad += HandleShouldStartLoad;
		}

		bool HandleShouldStartLoad (UIWebView webView, NSUrlRequest request, UIWebViewNavigationType navigationType) {
			var handled = RouteHandler.HandleRequest (request.Url.AbsoluteString);
			return !handled;
		}

		#region IHybridWebView implementation

		public void LoadHtmlString (string html)
		{
			webView.LoadHtmlString (html, baseUrl);
		}

		public string EvaluateJavascript (string script) 
		{
			return webView.EvaluateJavascript (script);
		}

		#endregion
	}
}

