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


function rechargeablecardgivingchange()
{
    if (document.getElementById("givingchange").checked) {
        document.getElementById("rechargeable_card_giving").value = "1";
    }
    else {
        document.getElementById("rechargeable_card_giving").value = "0";
    }


}

function role_status_change()
{
    if($('#statuschange').bootstrapSwitch('toggleState'))
    {
        $('#role_role_status').val('1');
    }else {
        $('#role_role_status').val('0');
    }
}