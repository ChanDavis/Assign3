function loginToggle()
{
    var form = document.getElementById('createUserDiv');
    form.style.display = "none";

    var form = document.getElementById('loginDiv');
    form.style.display = "block";
}

function toggle(id, id2)
{
    var element = document.getElementById(id);

    if (element.style.display == "none")
    {
        //element.style.display = "block";
        //element.focus();
        toggleOn(id, id2);
    }
    else
        //element.style.display = "none";
        toggleOff(id);
}

function toggleOn(id, id2)
{
    var element = document.getElementById(id);
    var element2 = document.getElementById(id2);
    element2.style.display = "none";
    element.style.display = "block";
    element.focus();
}

function toggleOff(id) {
    var element = document.getElementById(id);
    element.style.display = "none";
}

/************************************************************************/

function closePopup()
{
    document.getElementsByClassName("popup").item[0].display = "none";
}
