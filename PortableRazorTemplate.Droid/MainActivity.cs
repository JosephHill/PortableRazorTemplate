using System;
using Android.App;
using Android.Content;
using Android.Runtime;
using Android.Views;
using Android.Webkit;
using Android.Widget;
using Android.OS;
using PortableRazorTemplate;

namespace PortableRazorTemplate.Droid
{
	[Activity(Label = "PortableRazorTemplate.Droid", MainLauncher = true)]
	public class MainActivity : Activity
	{
		protected override void OnCreate (Bundle bundle) {
			base.OnCreate(bundle);

			// Set our view from the "main" layout resource
			SetContentView(Resource.Layout.Main);

			InitAndShow();
		}

		private async void InitAndShow () {
			var webView = FindViewById<WebView>(Resource.Id.webView);

			await Startup.Init(new HybridWebView(webView));

			this.RunOnUiThread(() => Startup.Show());
		}
	}
}


