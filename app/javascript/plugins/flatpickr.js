import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const departureDate = document.getElementById('trip_departure_date');
  const returnDate = document.getElementById('trip_return_date');

  if (departureDate) {

    flatpickr(departureDate, {
      altInput: true,
      minDate: new Date().fp_incr(1), // 1 day from now
    });

    departureDate.addEventListener('change', (event) => {
      console.log(event.target.value)
      flatpickr(returnDate, {
        altInput: true,
        minDate: new Date(event.target.value).fp_incr(1),
      });
    });
  }
}

export { initFlatpickr }
