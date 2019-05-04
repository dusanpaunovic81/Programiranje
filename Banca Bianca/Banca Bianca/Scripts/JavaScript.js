function passshow1() {
    var x = document.getElementById("lozinka");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function proveriLozinku() {
    var lozinka = document.getElementById("lozinka").value;
    var lozinka1 = document.getElementById("lozinka1").value;
    if (lozinka != lozinka1) {
        document.getElementById("lozinka1").style.backgroundColor = "#ffb3b3";
    }
    else {
        document.getElementById("lozinka1").style.backgroundColor = "#84e184";
    }
}
//document.getElementbyId("ContentPlaceHolder1_TextBox3").disabled = true;




//function proveriemail(){
//    //var uzorakEmail = /^\w+([\.-]?\w+)*@\w+([\.]?\w+)*\.[a-zA-Z]{2,3}$/;
//    var uzorakEmail = /^[dusan]$/;
//    //document.getElementById("email").style.backgroundColor = "#84e184";
//    //if (email == "") {
//    //    alert("Niste uneli E-mail adresu!");
//    //    document.getElementById("email").focus();
//    //    document.getElementById("email").style.backgroundColor = "#ffb3b3";
//    //}
//    if (!uzorakEmail.test(email)) {
//        //alert("E-mail adresa nije u dobrom formatu!");
//        document.getElementById("email").style.backgroundColor = "#ffb3b3";
//    }
//    else document.getElementById("email").style.backgroundColor = "#84e184";
//}