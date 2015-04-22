function adminstatuschange()
{
    if (document.getElementById("statuschange").checked) {
        document.getElementById("admin_status").value = "10";
    }
    else {
        document.getElementById("admin_status").value = "20";
    }





}