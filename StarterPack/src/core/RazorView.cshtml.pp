@inherits PortableRazor.ViewBase
@model $rootnamespace$.Models.Model1
<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="style.css" />
    <script type="text/javascript">
        // This javascript method is called from C#
        function SetLabelText(text) {
            var elm = document.getElementById('label');
            elm.innerHTML = text;
        }
    </script>
</head>
<body>
    @using (@Html.BeginForm("UpdateLabel", "Controller1", new { val = @Model.Value })) {

        <h4 id="label">@Model.Text</h4>

        @Html.TextBox("val", @Model.Value) 

        <input type="submit" value="Update Label" />
    }

    <br/><span id="MissingStyleWarning" style="color:red">
    If you are seeing this text, <b>style.css</b> has not been copied into webroot on your device.<br/>
    In the property pane for <b>Content/style.css</b>, set <b>BuildAction</b> to <b>EmbeddedResource</b> and
    uncomment the "<i>Initialize static content...</i>" lines in the <b>Init(IHybridWebView)</b> method in <b>Startup.cs</b>.
    </span>

</body>
</html>	
