/*
''' <summary>
''' This module is used to contain the main shared javascript functions for the application
''' </summary>
*/

var winId = [];                     //Array of open windows
var animateSpeed = "slow";          //Animation speed
var currentLoadingPanel = null;     //Current loading panel
var currentUpdatedControl = null;   //Current updated control
var loadingPanelWidth = '99%';      //Default loading panel width
var is100HeightMain = false;        //Is 100 height main: yes\no

/*
''' <summary>
''' This function is called when a button that posts back but needs a single click is clicked
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function GenericSingleClickButton_Click(sender, eventArgs)
 {
     sender.set_enabled(false);
     nonAjaxControlId = "";
} //GenericSingleClickButton_Click

/*
''' <summary>
''' This function is called when a button that posts back but needs a single click that is non-ajax is clicked
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function GenericSingleClickButtonNonAjax_Click(sender, eventArgs) 
{
    sender.set_enabled(false);
    nonAjaxControlId = sender.get_uniqueID();
} //GenericSingleClickButtonNonAjax_Click

/*
''' <summary>
''' This function is called when an ajax loading panel is being displayed
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ShowAjaxLoadingPanel(sender, eventArgs) 
{
    eventArgs.get_loadingElement().style.width = loadingPanelWidth;
    eventArgs.set_cancelNativeDisplay(true);
    $telerik.$(eventArgs.get_loadingElement()).show(animateSpeed);
} //ShowAjaxLoadingPanel

/*
''' <summary>
''' This function is called when an ajax loading panel is being hidden
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function HideAjaxLoadingPanel(sender, eventArgs) 
{
    eventArgs.set_cancelNativeDisplay(true);
    $telerik.$(eventArgs.get_loadingElement()).hide(animateSpeed);  
} //HideAjaxLoadingPanel

/*
''' <summary>
''' This function is called when an ajax panel is starting a submit
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function AjaxPanelRequestStart(sender, eventArgs) 
{
    if (eventArgs.EventTarget === nonAjaxControlId) 
    {
        eventArgs.EnableAjax = false;
    }

    nonAjaxControlId = "";
} //AjaxPanelRequestStart

/*
''' <summary>
''' This function is called when an ajax panel is done submitting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function AjaxPanelResponseEnd(sender, eventArgs) 
{
    var leftBannerDiv = document.getElementById('LeftBanner');

    if (leftBannerDiv !== null) 
    {
        leftBannerDiv.focus();
    }
} //AjaxPanelResponseEnd

/*
''' <summary>
''' This function is used to submit the form using the standard ajax request manager
''' </summary>
''' <param name="loadingPanel">Loading panel</param>
''' <param name="updatedControl">Updated control</param>
''' <param name="updateId">Update id</param>
*/
function StandardFormSubmit(loadingPanel, updatedControl, updateId) 
{
    currentLoadingPanel = $find(loadingPanel);
    currentUpdatedControl = updatedControl;

    $find("ctl00_RadAjaxManager1").ajaxRequest(updateId);
} //StandardFormSubmit

/*
''' <summary>
''' This function is used to close the validation summary when it is displayed on the page
''' </summary>
''' <param name="validationId">Validation div id</param>
*/
function CloseValidationSummary(validationId) 
{
    var pageValWrapperBreak = document.getElementById(validationId + 'Break');
    if (pageValWrapperBreak !== null)
    {
        pageValWrapperBreak.style.display = 'none';
    }

    $('#' + validationId).hide(animateSpeed, ValidationCloseOpen(validationId, 'true'));
} //CloseValidationSummary

/*
''' <summary>
''' This function is used to open the validation summary when it is displayed on the page
''' </summary>
''' <param name="validationId">Validation div id</param>
*/
function OpenValidationSummary(validationId) 
{
    var pageValWrapperBreak = document.getElementById(validationId + 'Break');
    
    if (pageValWrapperBreak !== null) 
    {
        pageValWrapperBreak.style.display = '';
    }

    $('#' + validationId).show(animateSpeed, ValidationCloseOpen(validationId, 'false'));
} //OpenValidationSummary

/*
''' <summary>
''' This function is called when the validation summary is done opening or closing
''' </summary>
''' <param name="validationId">Validation div id</param>
''' <param name="display">Display</param>
*/
function ValidationCloseOpen(validationId, display) 
{

    if (is100HeightMain === true) 
    {
        if (display === 'true') 
        {
            $('#' + validationId + 'Link').show(animateSpeed, SetDivHeight);
        }
        else 
        {
            $('#' + validationId + 'Link').hide(animateSpeed, SetDivHeight);
        }
    }
    else 
    {
        if (display === 'true') 
        {
            $('#' + validationId + 'Link').show(animateSpeed);
        }
        else 
        {
            $('#' + validationId + 'Link').hide(animateSpeed);
        }
    }
} //ValidationCloseOpen
