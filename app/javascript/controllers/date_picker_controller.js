// // app/javascript/controllers/date_picker_controller.js
// import { Controller } from "@hotwired/stimulus";

// export default class extends Controller {
//   static targets = ["dateDisplay", "timeslotContainer"];

//   connect() {
//     this.currentDate = new Date();
//     this.updateDateDisplay();
//   }

//   changeDate(event) {
//     const direction = parseInt(event.currentTarget.dataset.direction, 10);
//     this.currentDate.setDate(this.currentDate.getDate() + direction);
//     this.updateDateDisplay();
//   }

//   updateDateDisplay() {
//     const formattedDate = this.currentDate.toISOString().split('T')[0];
//     this.dateDisplayTarget.innerText = formattedDate;
//   }
// }
