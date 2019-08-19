// > titleize(["Mary", "Brian", "Leo"], printCallback);

function titlize(names, callback){
    let ans = names.map( el => callback(el));
    ans.forEach(word => console.log(word));

}

function callback(name) {
    return `Mx ${name} Jingleheimer Schmidt`;
}


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}
Elephant.prototype.trumpet = function () {
    console.log(`${this.name} goes phrRRRRRRRRRRR!!!!!!!`);
}

Elephant.prototype.grow = function () {
    this.height += 2;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
    return this.tricks;
}

Elephant.prototype.play = function () {
    return (this.tricks[Math.floor(Math.random() * this.tricks.length)]);
}

Elephant.paradeHelper = function (elephant) {
    console.log(`${elephant.name} is trotting by!`);
};



function dinerBreakfast(food) {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};
