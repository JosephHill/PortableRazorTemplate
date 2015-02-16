using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using PCLStorage;
using PortableRazor;

namespace $rootnamespace$
{
	class HybridWebView : IHybridWebView {
		UIWebView webView;

		NSUrl baseUrl;

		public string BasePath { get; private set; }

		public HybridWebView(UIWebView uiWebView) {
			webView = uiWebView;
			webView.ShouldStartLoad += HandleShouldStartLoad;

			BasePath = PortablePath.Combine(FileSystem.Current.LocalStorage.Path, "www");
			baseUrl = new NSUrl(BasePath, true);
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
