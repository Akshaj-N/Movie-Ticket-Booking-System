const container = document.querySelector('.scontainer');
const seats = document.querySelectorAll('.row .seat:not(.occupied)');
const count = document.getElementById('count');
const btn=document.getElementById("btnconfirm");
const allseats = document.querySelectorAll(".row .seat");
const seatnums=document.getElementById("seatnums");

btn.addEventListener('click',(e)=>{
    //console.log("You clicked me");
    const selectedSeats=[];
    seats.forEach((seat,index)=>{
        //console.log(seat.classList);
        if(seat.classList.contains('selected')){
            console.log(seat.id);
            selectedSeats.push(seat.id);
        }
    });
    console.log(selectedSeats.join(","));
    seatnums.value=selectedSeats.join(",").toString();
});

const updateSelectedSeatsCount = () => {
  const selectedSeats = document.querySelectorAll('.row .selected');

  const selectedSeatsCount = selectedSeats.length;

  count.value = selectedSeatsCount;
  
};

// Seat select event
container.addEventListener('click', e => {
  if (
    e.target.classList.contains('seat') &&
    !e.target.classList.contains('occupied')
  ) {
    e.target.classList.toggle('selected');

    updateSelectedSeatsCount();
  }
});

