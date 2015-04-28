function adminstatuschange()
{
    if (document.getElementById("statuschange").checked) {
        document.getElementById("admin_status").value = "1";
    }
    else {
        document.getElementById("admin_status").value = "0";
    }


}



function makecardgivingchange()
{
    if (document.getElementById("givingchange").checked) {
        document.getElementById("make_card_giving").value = "1";
    }
    else {
        document.getElementById("make_card_giving").value = "0";
    }


}