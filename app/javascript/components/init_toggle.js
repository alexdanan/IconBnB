const targetDiv = document.querySelector(".calendar-wrap")
const btn = document.querySelector(".toggle");

const initToggle = () => {
	btn.onclick = () => {
		if (targetDiv.getElementsByClassName.display !== "none") {
			targetDiv.style.display = "none";
			targetDiv2.style.display = "block";
			btn.style.display = "none";
			btn2.style.display = "block";
		} else {
			targetDiv.style.display = "block";
			targetDiv2.style.display = "none";

		}
	};
}

const targetDiv2 = document.querySelector(".wrapthat")
const btn2 = document.querySelector(".toggle2");
const colorChange = document.querySelector(".card-status");


const initToggle2 = () => {
	btn2.onclick = () => {
		if (targetDiv2.getElementsByClassName.display !== "none") {
			targetDiv2.style.display = "none";
			targetDiv.style.display = "block";
			btn2.style.display = "none";
			btn.style.display = "block";
		} else {
			targetDiv2.style.display = "block";
			targetDiv.style.display = "none";

		}
	};
}

const initColorToggle = () => {
	if (colorChange.innerHTML == "Booking status: Accepted") {
		colorChange.style.backgroundColor = "rgb(0, 155, 0)"
	} else if (colorChange.innerHTML == "Booking status: Declined") {
		colorChange.style.backgroundColor = "rgb (155, 0, 0)"
	}
}

export { initToggle }
export { initToggle2 }
export { initColorToggle }