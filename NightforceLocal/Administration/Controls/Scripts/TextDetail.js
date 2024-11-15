/*
''' <summary>
''' This module is used to contain the javascript constants for the text detail dialog control
''' </summary>
*/

var textDetailDialogId = "";        //Text detail dialog id

/*
''' <summary>
''' This function is called when the text detail ajax loading panel is being displayed
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ShowTextDetailAjaxLoadingPanel(sender, eventArgs) 
{
    loadingPanelWidth = '775px';
    ShowAjaxLoadingPanel(sender, eventArgs);
} //ShowTextDetailAjaxLoadingPanel

/*
''' <summary>
''' This function is called when the text detail ajax loading panel is being hidden
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function HideTextDetailAjaxLoadingPanel(sender, eventArgs) 
{
    HideAjaxLoadingPanel(sender, eventArgs);
} //HideTextDetailAjaxLoadingPanel

/*
''' <summary>
''' This function is called when the error log details close button is clicked
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function CloseTextDetailWindowButton_Click(sender, eventArgs) 
{
    var dialog = $find(textDetailDialogId);

    if (dialog !== null) 
    {
        sender.set_enabled(false);
        dialog.set_modal(false);
        dialog.hide();
        sender.set_enabled(true);
    }
} //CloseTextDetailWindowButton_Click

/*
''' <summary>
''' This function is called when the text detail ajax panel is starting a submit
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function TextDetailAjaxPanelRequestStart(sender, eventArgs) 
{
    var dialog = $find(textDetailDialogId);

    if (dialog !== null) 
    {
        dialog.set_modal(true);
        dialog.show();
    }

    currentLoadingPanel = $find(textDetailDialogId + "_C_TextDetailLoadingPanel");
    currentUpdatedControl = textDetailDialogId + "_C";

    if (currentLoadingPanel !== null) 
    {
        //show the loading panel over the updated control
        currentLoadingPanel.show(currentUpdatedControl);
    }
} //TextDetailAjaxPanelRequestStart

/*
''' <summary>
''' This function is called when the text detail ajax panel is done submitting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function TextDetailAjaxPanelResponseEnd(sender, eventArgs) 
{
    //hide the loading panel and clean up the global variables
    currentLoadingPanel = $find(textDetailDialogId + "_C_TextDetailLoadingPanel");
    currentUpdatedControl = textDetailDialogId + "_C";

    if (currentLoadingPanel !== null) 
    {
        currentLoadingPanel.hide(currentUpdatedControl);
    }
} //TextDetailAjaxPanelResponseEnd