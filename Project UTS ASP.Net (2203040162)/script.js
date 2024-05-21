const form1 = document.querySelector(".form_1");
const form2 = document.querySelector(".form_2");

const button1 = document.querySelector(".form_1_btn");
const button2 = document.querySelector(".form_2_btn");

const form_1_next = document.querySelector(" .button_next");
const button_done = document.querySelector(".button_done");
const form_2_back = document.querySelector(".button_back");
const finish = document.querySelector(".button_done");


form_1_next.addEventListener("click", function() {
    form1.style.display ="none";
    form2.style.display ="block";

    button1.style.display ="none";
    button2.style.display ="flex";
});

form_2_back.addEventListener("click", function() {
    form1.style.display ="block";
    form2.style.display ="none";

    button1.style.display ="flex";
    button2.style.display ="none";
});

finish.addEventListener("click", function(){
    alert("Wakarimashita")
});





