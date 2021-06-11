const userCalendar = document.querySelector(".wrapper")
const btn = document.querySelector(".link");
const userList = document.querySelector(".wrapthat")
const btn2 = document.querySelector(".link2");
const colorChange = document.querySelectorAll(".card-status");
const colorChange2 = document.querySelector(".card-status2");
const btn3 = document.querySelector(".link4");
const iconToggles = document.querySelector(".icon-wrap");
const iconList = document.querySelector(".wrapthat2")
const btn6 = document.querySelector(".link6");
const accButton = document.querySelector(".cancel-accept")
const iconCalendar = document.querySelector(".wrapper2")
const btn7 = document.querySelector(".link7");

// const calendarColorChange = document.querySelector(".checkthsiquick");
// const iconList = document.querySelector(".")


// const initUserCalendarToggle = () => {
// 	btn.onclick = () => {
// 		if (userCalendar.getElementsByClassName.display !== "none") {
// 			userCalendar.style.display = "none";
// 			userList.style.display = "block";
// 			iconToggles.style.display = "none";

// 		} else {
// 			userCalendar.style.display = "block";
// 			userList.style.display = "none";
// 			iconToggles.style.display = "none";

// 		}
// 	};
// }




// const initUserListToggle = () => {
// 	btn2.onclick = () => {
// 		if (userList.getElementsByClassName.display !== "none") {
// 			userList.style.display = "none";
// 			iconToggles.style.display = "none";
// 			userCalendar.style.display = "block";
// 			// btn2.style.display = "none";
// 			// btn.style.display = "block";
// 		} else {
// 			userList.style.display = "block";
// 			userCalendar.style.display = "none";
// 			iconToggles.style.display = "none";

// 		}
// 	};
// }

const initColorToggle = () => {
	console.log(colorChange.innerHTML)
	if (colorChange.innerHTML == "Booking status: Accepted") {
		colorChange.style.backgroundColor = "rgb(0, 155, 0)"
	} else if (colorChange.innerHTML == "Booking status: Declined") {
		colorChange.style.backgroundColor = "rgb (155, 0, 0)"
	}
}

const initColorToggle2 = () => {
	if (colorChange2.innerHTML == "Booking status: Accepted") {
		colorChange2.style.backgroundColor = "rgb(0, 155, 0)"
		accButton.style.display = "none";
	} else if (colorChange2.innerHTML == "Booking status: Declined") {
		colorChange2.style.backgroundColor = "rgb (155, 0, 0)"
	}
}

// const initCalendarColorToggle = () => {
// 	if (calendarColorChange.innerHTML.includes("Accepted")) {
// 		calendarColorChange.style.backgroundColor = "rgb(0, 155, 0)"
// 	} else if (calendarColorChange.innerHTML == "Declined") {
// 		calendarColorChange.style.backgroundColor = "rgb (155, 0, 0)"
// 	} else if (calendarColorChange.innerHTML == "Pending") {
// 		calendarColorChange.style.backgroundColor = "rgb(169,169,169)"
// 	}
// }
// const initIconToggle = () => {
// 	btn3.onclick = () => {
// 		if (userList.getElementsByClassName.display !== "none") {
// 			userList.style.display = "none";
// 			userCalendar.style.display = "none";
// 			iconToggles.style.display = "none";
// 		} else {
// 			userList.style.display = "none";
// 			userCalendar.style.display = "none";
// 			iconToggles.style.display = "block";

// 		}
// 	}

// const initIconToggle = () => {
// 	btn3.onclick = () => {
// 		if (iconToggles.getElementsByClassName.display !== "none") {
// 			userList.style.display = "none";
// 			// iconToggles.style.display = "none";
// 			userCalendar.style.display = "none";
// 			// btn2.style.display = "none";
// 			// btn.style.display = "block";
// 		} else {
// 			userList.style.display = "none";
// 			userCalendar.style.display = "none";
// 			iconToggles.style.display = "block";

// 		}
// 	};
// }


const initUserCalendarToggle = () => {
	btn2.onclick = () => {
		iconToggles.style.display = "none";
		userList.style.display = "none";
		userCalendar.style.display = "block";
		iconList.style.display = "none";
		iconCalendar.style.display = "none";
	}
}


const initUserListToggle = () => {
	btn.onclick = () => {
		iconToggles.style.display = "none";
		userList.style.display = "block";
		userCalendar.style.display = "none";
		iconList.style.display = "none";
		iconCalendar.style.display = "none";
	}
}


const initIconToggle = () => {
	btn3.onclick = () => {
		iconToggles.style.display = "block";
		userList.style.display = "none";
		userCalendar.style.display = "none";
		iconList.style.display = "none";
		iconCalendar.style.display = "none";
	}
}

const initIconBookingToggle = () => {
	btn6.onclick = () => {
		iconList.style.display = "block";
		iconToggles.style.display = "none";
		userList.style.display = "none";
		userCalendar.style.display = "none";
		iconCalendar.style.display = "none";
	}
}

const initIconCalendarToggle = () => {
	btn7.onclick = () => {
		iconCalendar.style.display = "block";
		iconToggles.style.display = "none";
		userList.style.display = "none";
		userCalendar.style.display = "none";
		iconList.style.display = "none";
	}
}




// ok here we have the button hide all other cards and show only their cards as list with a toggle for map

export { initUserCalendarToggle }
export { initUserListToggle }
export { initColorToggle }
export { initIconToggle }
export { initIconBookingToggle }
export { initColorToggle2 }
export { initIconCalendarToggle }