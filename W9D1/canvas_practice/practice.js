document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d');

    // draw rectangle
    ctx.lineWidth = 10;
    ctx.fillStyle = 'red';
    ctx.fillRect(130, 190, 40, 60);

    ctx.beginPath();
    // draw circle
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.strokeStyle = 'blue';
    ctx.stroke();
    ctx.fillStyle = 'red';
    ctx.fill();


});
