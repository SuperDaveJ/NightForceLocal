/*
''' <summary>
''' This module is used to contain the main standard form shared javascript functions for the application
''' </summary>
*/

/*
''' <summary>
''' This function is called when an AJAX request is starting
''' </summary>
''' <param name="sender">Sender</param>
''' <param name="eventArgs">Event arguments</param>
*/
function OnAjaxRequestStart(sender, eventArgs) 
{
    currentLoadingPanel = $find('MainStandardFormContent_PageLoadingPanel');
    currentUpdatedControl = 'PageDiv';

    //show the loading panel over the updated control
    currentLoadingPanel.show(currentUpdatedControl);

    if (eventArgs.get_eventTarget().indexOf("ctl00$MainStandardFormContent$ReticleUpdateButton") > -1) 
    {
        eventArgs.set_enableAjax(false);
    }
    else if (eventArgs.get_eventTarget().indexOf("ctl00$MainStandardFormContent$ScopeUpdateButton") > -1) 
    {
        eventArgs.set_enableAjax(false);
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
    //hide the loading panel and clean up the global variables
    if (currentLoadingPanel !== null) 
    {
        currentLoadingPanel.hide(currentUpdatedControl);
    }

    currentUpdatedControl = null;
    currentLoadingPanel = null;

    var validationDiv = document.getElementById('PageValidationWrapper');
    
    if (validationDiv !== null) 
    {
        validationDiv.focus();
    }
} //OnAjaxResponseEnd
