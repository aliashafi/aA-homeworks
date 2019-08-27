import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {num1: "", num2: "", result: 0}
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.addValues = this.addValues.bind(this);
    this.subtractValues = this.subtractValues.bind(this);
    this.multValues = this.multValues.bind(this);
    this.divValues = this.divValues.bind(this);
  }

  //The callback should retrieve 
  //the value from the input field and set the 
  //state of the number.
  setNum1(event) {
    this.setState({ num1: event.currentTarget.value });
  }

  setNum2(event) {
    this.setState({ num2: event.currentTarget.value });
  }

  addValues(){
    let res = parseInt(this.state.num1) + parseInt(this.state.num2);
    this.setState({result: res});
  }

  subtractValues(){
    let res = parseInt(this.state.num1) - parseInt(this.state.num2);
    this.setState({result: res});
  }

  multValues(){
    let res = parseInt(this.state.num1) * parseInt(this.state.num2);
    this.setState({result: res});
  }
  divValues(){
    let res = parseInt(this.state.num1) / parseInt(this.state.num2);
    this.setState({result: res});
  }


  //your code here

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1} />
        <input onChange={this.setNum2} value={this.state.num2} />
        <br />
        <button onClick={this.addValues}>+</button>
        <button onClick={this.subtractValues}>-</button>
        <button onClick={this.multValues}>*</button>
        <button onClick={this.divValues}>/</button>
      </div>
    );
  }
}

export default Calculator;
