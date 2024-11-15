/*
''' <summary>
''' This module is used to contain the javascript functions for the scopes page
''' </summary>
*/

var editMessage = "EditMessageHidden";
var deleteMessage = "DeleteMessageHidden";
var scopeIdHidden = "SelectedScopeIdHidden";
var pageEventHidden = "PageEventHidden";
var scopeId = 0;
var commandName = "";

/*
''' <summary>
''' This function is called when an AJAX request is starting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ScopesOnAjaxRequestStart(sender, eventArgs) 
{

} //ScopesOnAjaxRequestStart

/*
''' <summary>
''' This function is called when an AJAX request is ending
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function ScopesOnAjaxResponseEnd(sender, eventArgs) 
{

} //ScopesOnAjaxResponseEnd

/*
''' <summary>
''' This function is called when the ok button is clicked on the ok cancel dialog
''' </summary>
*/
function OkButtonClicked() 
{
    var scopeIdHiddenVal = $get(scopeIdHidden);

    if (scopeIdHiddenVal !== null) 
    {
        scopeIdHiddenVal.value = scopeId;

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

    var scopeIdHiddenVal = $get(scopeIdHidden);

    if (scopeIdHiddenVal !== null) 
    {
        scopeIdHiddenVal.value = "";
    }

    scopeId = 0;
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
    scopeId = itemIndex;
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
    scopeId = itemIndex;
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

/*
''' <summary>
''' This function is called when the scope image button is clicked
''' </summary>
''' <param name="scopeImage">Scope image</param>
*/
function ScopeImageButtonClick(scopeImage) 
{
    if (scopeImage != null) 
    {
        window.open(scopeImage);
    }
} //ScopeImageButtonClick

/*
''' <summary>
''' This function is called when the reticle image button is clicked
''' </summary>
''' <param name="reticleImage">Reticle image</param>
*/
function ReticleImageButtonClick(reticleImage) 
{
    if (reticleImage != null) 
    {
        window.open(reticleImage);
    }
} //ReticleImageButtonClick

/*
''' <summary>
''' This function is called when the reticle web link button is clicked
''' </summary>
''' <param name="reticleWebLink">Reticle web link</param>
*/
function ReticleWebLinkButtonClick(reticleWebLink) 
{
    if (reticleWebLink != null) 
    {
        window.open(reticleWebLink);
    }
} //ReticleWebLinkButtonClick

/*
''' <summary>
''' This function is called when the scope web link button is clicked
''' </summary>
''' <param name="scopeWebLink">Scope web link</param>
*/
function ScopeWebLinkButtonClick(scopeWebLink) 
{
    if (scopeWebLink != null) 
    {
        window.open(scopeWebLink);
    }
} //ScopeWebLinkButtonClick