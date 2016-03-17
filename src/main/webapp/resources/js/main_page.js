var board_nav_height;

function boardNavHeightChange(){
	board_nav_height = document.getElementById('board-nav').offsetHeight;

	document.getElementById('profile_up_blink').style.height = board_nav_height + "px";
}

boardNavHeightChange();