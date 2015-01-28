using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Phone.Controls;
using PortableRazor;
using PCLStorage;

namespace PortableRazorTemplate.WinPhone 
{
	class HybridWebView : IHybridWebView {
		WebBrowser webView;

        string basePath;
        string filePath;
        string relativePath;
        Uri baseUri;

        public string BasePath
        {
            get
            {
                return basePath;
            }
            set
            {
                basePath = value;
                relativePath = basePath;
                if (relativePath.StartsWith(FileSystem.Current.LocalStorage.Path))
                    relativePath = relativePath.Substring(FileSystem.Current.LocalStorage.Path.Length);
                else if (relativePath.StartsWith(FileSystem.Current.RoamingStorage.Path))
                    relativePath = relativePath.Substring(FileSystem.Current.RoamingStorage.Path.Length);

                if (relativePath.StartsWith(PortablePath.DirectorySeparatorChar.ToString()))
                    relativePath = relativePath.Substring(1);
                filePath = PortablePath.Combine(relativePath, "hybrid.html");
                baseUri = new Uri(filePath, UriKind.Relative);
            }
        }

		public HybridWebView(WebBrowser uiWebView) {
			//IE on Windows Phone will only post data to URLs that begin with http://
			PortableRazor.ViewBase.UrlScheme = "http://portablerazor.madeupdomain";
            webView = uiWebView;

            webView.IsScriptEnabled = true;
            webView.Navigating += WebView_Navigating;
		}

		#region IHybridWebView implementation

		public async void LoadHtmlString(string html) {

            var file = await FileSystem.Current.LocalStorage.CreateFileAsync(
                filePath,
				CreationCollisionOption.ReplaceExisting);

            await file.WriteAllTextAsync(html);

			webView.Navigate(baseUri);
		}

        public string EvaluateJavascript(string script)
        {
            webView.Dispatcher.BeginInvoke(() =>
            {
               
                webView.InvokeScript("eval", script);
            });

            return "";
		}

		#endregion

        void WebView_Navigating(object sender, NavigatingEventArgs e)
        {
            e.Cancel = RouteHandler.HandleRequest(e.Uri.OriginalString);
        }
	}
}
