using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Microsoft.Phone.Controls;
using Microsoft.Phone.Shell;

namespace PortableRazorTemplate.WinPhone
{
	public partial class MainPage : PhoneApplicationPage
	{

		// Constructor
		public MainPage () {
			InitializeComponent();

			InitAndShow();
		}

		private async void InitAndShow () {
			await Startup.Init(new HybridWebView(WebView));

			this.Dispatcher.BeginInvoke(() => Startup.Show());
		}
	}
}