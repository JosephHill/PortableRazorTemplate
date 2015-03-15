using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace $rootnamespace$
{
	public partial class RazorViewController : UIViewController
	{
		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public RazorViewController (IntPtr handle)
			: base(handle) {
		}

		public override void DidReceiveMemoryWarning () {
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning();

			// Release any cached data, images, etc that aren't in use.
		}

		#region View lifecycle

		public override void ViewDidLoad () {
			base.ViewDidLoad();

			InitAndShow();
		}

		public override void ViewWillAppear (bool animated) {
			base.ViewWillAppear(animated);
		}

		public override void ViewDidAppear (bool animated) {
			base.ViewDidAppear(animated);
		}

		public override void ViewWillDisappear (bool animated) {
			base.ViewWillDisappear(animated);
		}

		public override void ViewDidDisappear (bool animated) {
			base.ViewDidDisappear(animated);
		}

		#endregion

		private async void InitAndShow () {
			await Startup.Init(new HybridWebView(webView));

			this.InvokeOnMainThread(() => Startup.Show());
		}
	}
}
