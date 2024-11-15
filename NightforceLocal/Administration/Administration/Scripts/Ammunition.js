/*
''' <summary>
''' This module is used to contain the javascript functions for the ammunition page
''' </summary>
*/

var editMessage = "EditMessageHidden";
var deleteMessage = "DeleteMessageHidden";
var ammunitionIdHidden = "SelectedAmmunitionIdHidden";
var pageEventHidden = "PageEventHidden";
var ammunitionId = 0;
var commandName = "";

/*
''' <summary>
''' This function is called when an AJAX request is starting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function AmmunitionOnAjaxRequestStart(sender, eventArgs) 
{

} //AmmunitionOnAjaxRequestStart

/*
''' <summary>
''' This function is called when an AJAX request is ending
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function AmmunitionOnAjaxResponseEnd(sender, eventArgs) 
{

} //AmmunitionOnAjaxResponseEnd

/*
''' <summary>
''' This function is called when the ok button is clicked on the ok cancel dialog
''' </summary>
*/
function OkButtonClicked() 
{
    var ammunitionIdHiddenVal = $get(ammunitionIdHidden);

    if (ammunitionIdHiddenVal !== null) 
    {
        ammunitionIdHiddenVal.value = ammunitionId;

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

    var ammunitionIdHiddenVal = $get(ammunitionIdHidden);

    if (ammunitionIdHiddenVal !== null) 
    {
        ammunitionIdHiddenVal.value = "";
    }

    ammunitionId = 0;
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
    ammunitionId = itemIndex;
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
    ammunitionId = itemIndex;
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