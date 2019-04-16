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