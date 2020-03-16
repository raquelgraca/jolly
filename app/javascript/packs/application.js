import "bootstrap";
import flatpickr from "flatpickr";
// import "flatpickr/dist/themes/material_green.css"

flatpickr(".datepicker", {
  disableMobile: "true",
  enableTime: true,
  dateFormat: "d/m/Y H:i",
  time_24hr: true,
  minTime: "08:00",
  maxTime: "22:00"
})
