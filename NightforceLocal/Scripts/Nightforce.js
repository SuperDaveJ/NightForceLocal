// JavaScript

//Google Analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-25703644-2']);
_gaq.push(['_trackPageview']);
(function () {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();


var activeElement;

window.onload = function () {
    if (!document.activeElement) {
        var elements = document.getElementsByTagName("*");
        for (var i = 0, length = elements.length; i < length; i++) {
            var element = elements[i];
            element.onfocus = function () {
                activeElement = this;
            }
        }
    }
}

function MM_preloadImages() { //v3.0
    var d = document; if (d.images) {
        if (!d.MM_p) d.MM_p = new Array();
        var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
            if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; } 
    }
}

function MM_swapImgRestore() { //v3.0
    var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
}

function MM_findObj(n, d) { //v4.01
    var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
        d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
    }
    if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
    for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
    if (!x && d.getElementById) x = d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
    var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
        if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
}

function MM_goToURL() { //v3.0
    var i, args = MM_goToURL.arguments; document.MM_returnValue = false;
    for (i = 0; i < (args.length - 1); i += 2) eval(args[i] + ".location='" + args[i + 1] + "'");
}

function MM_callJS(jsStr) { //v2.0
    return eval(jsStr)
}

function showLayer(toggleLayer) {
    document.getElementById(toggleLayer).style.visibility = "visible";
}

function hideLayer(toggleLayer) {
    document.getElementById(toggleLayer).style.visibility = "hidden";
}

function PrintResults() 
{
    window.print();
}

function ShowResults(reticleType) {
    window.open('ResultsData.aspx?ReticleType=' + reticleType);
}


/*
''' <summary>
''' This function is called when an AJAX request is starting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function OnAjaxRequestStart(sender, eventArgs) 
{
    if (document.getElementById("ToFocusID")) 
    {
        document.getElementById("ToFocusID").value = (activeElement) ? activeElement.id : document.activeElement.id;
    }
} //OnAjaxRequestStart

/*
''' <summary>
''' This function is called when an AJAX request is ending
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function OnAjaxResponseEnd(sender, eventArgs) 
{

} //OnAjaxResponseEnd

function TemperatureValueChanged(sender, eventArgs) 
{
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChangedT");
}

function PressureValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChangedP");
}

function HumidityValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChangedH");
}

function AltitudeValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChangedA");
}

function TextBox1TextValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChanged1");
}

function TextBox2TextValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChanged2");
}

function TextBox3TextValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChanged3");
}

function TextBox4TextValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("AtmosphereChanged4");
}

function BallisticCoefficientTextValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("BallisticCoefficientChanged");
}

function MuzzleVelocityTextValueChanged(sender, eventArgs) {
    $find("ctl00_RadAjaxManager1").ajaxRequest("MuzzleVelocityChanged");
}

var reviewInputDialogId = "";          //Review input dialog id

/*
''' <summary>
''' This function is called when the close button is clicked
''' </summary>
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function CloseButton_Click(sender, eventArgs) 
{
    var dialog = $find(reviewInputDialogId);

    if (dialog !== null) 
    {
        dialog.set_modal(false);
        dialog.hide();
    }
} //CloseButton_Click

/*
''' <summary>
''' This function is used to show the review input popup dialog
''' </summary>
*/
function ShowReviewInputDialog() 
{
    var dialog = $find(reviewInputDialogId);

    if (dialog !== null) 
    {
        dialog.set_modal(true);
        dialog.show();
    }
} //ShowReviewInputDialog