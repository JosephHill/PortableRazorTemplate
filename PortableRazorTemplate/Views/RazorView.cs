#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PortableRazorTemplate.Views
{
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


[System.CodeDom.Compiler.GeneratedCodeAttribute("RazorTemplatePreprocessor", "3.9.0.0")]
public partial class RazorView : PortableRazor.ViewBase
{

#line hidden

#line 2 "RazorView.cshtml"
public PortableRazorTemplate.Models.Model1 Model { get; set; }

#line default
#line hidden


public override void Execute()
{
WriteLiteral("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta");

WriteLiteral(" content=\"text/html; charset=utf-8\"");

WriteLiteral(" />\r\n    <meta");

WriteLiteral(" name=\"viewport\"");

WriteLiteral(" content=\"width=device-width, initial-scale=1\"");

WriteLiteral(" />\r\n    <link");

WriteLiteral(" rel=\"stylesheet\"");

WriteLiteral(" href=\"style.css\"");

WriteLiteral(" />\r\n    <script");

WriteLiteral(" type=\"text/javascript\"");

WriteLiteral(">\r\n        // This javascript method is called from C#\r\n        function SetLabel" +
"Text(text) {\r\n            var elm = document.getElementById(\'label\');\r\n         " +
"   elm.innerHTML = text;\r\n        }\r\n    </script>\r\n</head>\r\n<body>\r\n");


#line 18 "RazorView.cshtml"
    

#line default
#line hidden

#line 18 "RazorView.cshtml"
     using (@Html.BeginForm("UpdateLabel", "Controller1", new { val = @Model.Value })) {



#line default
#line hidden
WriteLiteral("        <h4");

WriteLiteral(" id=\"label\"");

WriteLiteral(">");


#line 20 "RazorView.cshtml"
                  Write(Model.Text);


#line default
#line hidden
WriteLiteral("</h4>\r\n");


#line 21 "RazorView.cshtml"

        

#line default
#line hidden

#line 22 "RazorView.cshtml"
   Write(Html.TextBox("val", @Model.Value));


#line default
#line hidden

#line 22 "RazorView.cshtml"
                                          



#line default
#line hidden
WriteLiteral("        <input");

WriteLiteral(" type=\"submit\"");

WriteLiteral(" value=\"Update Label\"");

WriteLiteral(" />\r\n");


#line 25 "RazorView.cshtml"
    }


#line default
#line hidden
WriteLiteral("</body>\r\n</html>\t");

}
}
}
#pragma warning restore 1591