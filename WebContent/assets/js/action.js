window.onload = function () {

	var addTaskBtn = document.getElementById("addTask");
	var downArrow = document.getElementById("down-arrow");
	if(addTaskBtn != null) 
		addTaskBtn.addEventListener("click", showForm);
	
	downArrow.addEventListener("click", scroll);
	
	function showForm() {
		$("#taskForm").toggle();
	}
	
	function scroll() {
		var intro = document.getElementById("introduction");
		console.log(intro);
	    $("html, body").animate({
	        scrollTop: $(intro).offset().top
	    });
	}
}