/*
''' <summary>
''' This module is used to contain the javascript functions for the reticle ranges page
''' </summary>
*/

var editMessage = "EditMessageHidden";
var deleteMessage = "DeleteMessageHidden";
var reticleRangeIdHidden = "SelectedReticleRangeIdHidden";
var pageEventHidden = "PageEventHidden";
var reticleRangeId = 0;
var commandName = "";

/*
''' <summary>
''' This function is called when an AJAX request is starting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ReticleRangesOnAjaxRequestStart(sender, eventArgs)
 {

 } //ReticleRangesOnAjaxRequestStart

/*
''' <summary>
''' This function is called when an AJAX request is ending
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
 function ReticleRangesOnAjaxResponseEnd(sender, eventArgs) 
{

} //ReticleRangesOnAjaxResponseEnd

/*
''' <summary>
''' This function is called when the ok button is clicked on the ok cancel dialog
''' </summary>
*/
function OkButtonClicked() 
{
    var reticleRangeIdHiddenVal = $get(reticleRangeIdHidden);

    if (reticleRangeIdHiddenVal !== null) 
    {
        reticleRangeIdHiddenVal.value = reticleRangeId;

        var pageEventHiddenVal = $get(pageEventHidden);

        if (pageEventHiddenVal !== null) 
        {
            pageEventHiddenVal.value = commandName;
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
    var pageEventHiddenVal = $get(pageEventHidden);

    if (pageEventHiddenVal !== null) 
    {
        pageEventHiddenVal.value = "";
    }

    var reticleRangeIdHiddenVal = $get(reticleRangeIdHidden);

    if (reticleRangeIdHiddenVal !== null) 
    {
        reticleRangeIdHiddenVal.value = "";
    }

    reticleRangeId = 0;
    commandName = "";
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
''' This function is called when the edit button is clicked
''' </summary>
''' <param name="itemIndex">Item index</param>
*/
function EditButtonClick(itemIndex) 
{
    reticleRangeId = itemIndex;
    commandName = "Edit";

    var editMessageVal = $get(editMessage);

    if (editMessageVal !== null) 
    {
        var pageDialogMessage = $get("PageDialogMessage");

        if (pageDialogMessage !== null) 
        {
            pageDialogMessage.innerHTML = editMessageVal.value;
        }
    }

    ShowOKCancelDialog();
} //EditButtonClick

/*
''' <summary>
''' This function is called when the delete button is clicked
''' </summary>
''' <param name="itemIndex">Item index</param>
*/
function DeleteButtonClick(itemIndex) 
{
    reticleRangeId = itemIndex;
    commandName = "Delete";

    var deleteMessageVal = $get(deleteMessage);

    if (deleteMessageVal !== null) 
    {
        var pageDialogMessage = $get("PageDialogMessage");

        if (pageDialogMessage !== null) 
        {
            pageDialogMessage.innerHTML = deleteMessageVal.value;
        }
    }

    ShowOKCancelDialog();
} //DeleteButtonClick