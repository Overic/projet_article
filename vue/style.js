function categorie(str) {
    if (str == "") {
        document.getElementById("cat").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("cat").innerHTML = this.responseText;
        }
    };
        xmlhttp.open("GET","vue/bob.php?q="+str,true);
        xmlhttp.send();
    }
}
