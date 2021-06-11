import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {});
  flatpickr(".timepicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true
  })
}

export {initFlatpickr};
