/*
''' <summary>
''' This module is used to contain the javascript constants for the ok\cancel dialog control
''' </summary>
*/

var okCancelDialogId = "";          //OK\cancel dialog id

/*
''' <summary>
''' This function is called when the ok button is clicked
''' </summary>
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function OkButton_Click(sender, eventArgs) 
{
    var dialog = $find(okCancelDialogId);

    if (dialog !== null) 
    {
        sender.set_enabled(false);
        dialog.set_modal(false);
        dialog.hide();
        sender.set_enabled(true);

        OkButtonClicked();
    }
} //OkButton_Click

/*
''' <summary>
''' This function is called when the cancel button is clicked
''' </summary>
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function CancelButton_Click(sender, eventArgs) 
{
    var dialog = $find(okCancelDialogId);

    if (dialog !== null) 
    {
        sender.set_enabled(false);
        dialog.set_modal(false);
        dialog.hide();
        sender.set_enabled(true);

        CancelButtonClicked();
    }
} //CancelButton_Click