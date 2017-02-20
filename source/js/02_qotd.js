function init() {
	var current = new Date();
	var first = new Date(current.getFullYear(), 0, 0);
	var day_size = 1000 * 60 * 60 * 24;
	var day = Math.floor((current - first) / day_size);
	// get the number of days in a year and mod it by the number of quotes
	document.getElementById('qotd_quote').innerHTML = "\""+quotes[day % 102][0]+"\"";
	document.getElementById('qotd_author').innerHTML = "~ "+quotes[day % 102][1];
	console.log("Created by knif3_");
}

window.onload = function() {
	init();
}