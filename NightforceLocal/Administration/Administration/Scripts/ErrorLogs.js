/*
''' <summary>
''' This module is used to contain the javascript functions for the error logs page
''' </summary>
*/

var errorLogIdHidden = "SelectedErrorLogIdHidden";
var pageEventHidden = "PageEventHidden";

/*
''' <summary>
''' This function is called when a detail link is clicked
''' </summary>
''' <param name="errorLogId">Error log id</param>
*/
function ShowDetailsForm(errorLogId) 
{
    var errorLogIdHiddenVal = $get(errorLogIdHidden);

    if (errorLogIdHiddenVal !== null) 
    {
        errorLogIdHiddenVal.value = errorLogId;
    }

    StandardFormSubmit('ctl00_MainTopContent_ErrorDetails_TextDetailWindow' + '_C_TextDetailLoadingPanel', 'ctl00_MainTopContent_ErrorDetails_TextDetailWindow' + '_C_TextDetailWindowDiv', 'ErrorLogDetailContent');
} //ShowDetailsForm

/*
''' <summary>
''' This function is called when an AJAX request is starting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ErrorLogsOnAjaxRequestStart(sender, eventArgs) 
{
    if (eventArgs.get_eventArgument() === 'ErrorLogDetailContent') 
    {
        TextDetailAjaxPanelRequestStart(sender, eventArgs);
    }
} //ErrorLogsOnAjaxRequestStart

/*
''' <summary>
''' This function is called when an AJAX request is ending
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ErrorLogsOnAjaxResponseEnd(sender, eventArgs) 
{
    if (eventArgs.get_eventArgument() === 'ErrorLogDetailContent') 
    {
        TextDetailAjaxPanelResponseEnd(sender, eventArgs);
    }
} //ErrorLogsOnAjaxResponseEnd

/*
''' <summary>
''' This function is called when the ok button is clicked on the ok cancel dialog
''' </summary>
*/
function OkButtonClicked() 
{
    var clearAllButton = $telerik.findButton("ctl00_ToolBarContent_ClearAllErrorLogsButton");

    if (clearAllButton != null) 
    {
        var pageEventHiddenVal = $get(pageEventHidden);

        if (pageEventHiddenVal !== null) 
        {
            clearAllButton.set_enabled(false);
            nonAjaxControlId = clearAllButton.get_uniqueID();

            pageEventHiddenVal.value = "ClearAll";
            document.forms[0].submit();
        }
    }
} //OkButtonClicked

/*
''' <summary>
''' This function is called when the cancel button is clicked on the ok cancel dialog
''' </summary>
*/
function CancelButtonClicked() 
{
    var clearAllButton = $telerik.findButton("ctl00_ToolBarContent_ClearAllErrorLogsButton");

    if (clearAllButton != null) 
    {
        clearAllButton.set_enabled(true);
    }

    var pageEventHiddenVal = $get(pageEventHidden);

    if (pageEventHiddenVal !== null) 
    {
        pageEventHiddenVal.value = "";
    }
} //CancelButtonClicked

/*
''' <summary>
''' This function is used to show the ok\cancel popup dialog
''' </summary>
*/
function ShowOKCancelDialog() 
{
    var dialog = $find(okCancelDialogId);

    if (dialog !== null) 
    {
        dialog.set_modal(true);
        dialog.show();
    }
} //ShowOKCancelDialog

/*
''' <summary>
''' This function is called when the clear all error logs button is clicking
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ClearAllErrorLogsButton_Clicking(sender, eventArgs) 
{
    sender.set_enabled(false);
    eventArgs.set_cancel(true);

    ShowOKCancelDialog();
} //ClearAllErrorLogsButton_Clicking