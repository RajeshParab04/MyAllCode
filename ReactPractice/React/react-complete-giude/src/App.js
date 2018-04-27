import React, { Component } from 'react';
import Radium from 'radium';
import './App.css';
import Person from './Person/Person';

class App extends Component {

  state={
    person:[
      {id:"dfgdf",name:"abc",age:"28"},
      {id:"dfgdfg",name:"pqr",age:"29"},
      {id:"dfgdfsfsdg",name:"dgdsdfafg",age:"30"}
    ],
    Showperson:false
  }
  NameHandler=(event)=>{
    this.setState({
      person:[
        {name:event.target.value,age:"28"},
        {name:"pqr",age:"30"}
       
      ]
    }); 
  }

  ToggleHandler=()=>{
    const flag=this.state.Showperson;
    this.setState({
      Showperson:!flag
    });
  }
  DeleteIndexHandler=(personIndex)=>{
     //const persondata=this.state.person.slice();
     const persondata=[...this.state.person];
     persondata.splice(personIndex,1);
     this.setState({person:persondata})
  }
  render() {
const styleval={
  backgroundColor:'green',
  color:'white',
  font:'inherit',
  padding:'8px',
  border:'1px,solid blue',
  cursor:'pointer',
  ':hover':{
    backgroundColor:'blue',
    color:'gray'
  }
}
    let persons=null;
    if(this.state.Showperson){
      persons=( 
         <div>
         {this.state.person.map((per,index)=>{
          return <Person 
          click={()=>this.DeleteIndexHandler(index)}
          name={per.name} 
          age={per.age}
          key={per.id}/>
         })
        
         }
      </div>
   );
   styleval.backgroundColor="red";
   styleval[':hover']={
     backgroundColor:'salmon',
     color:'black'
   }
    }

    const classes=[];
    if(this.state.person.length>1)
    {
      classes.push("red");
    }
    else{
      classes.push("green");

    }
    return (
      <div className="App">
        <h1 className={classes.join(' ')}>Hi,I am React </h1>
        <p>Test </p>
        <button  style={styleval} onClick={this.ToggleHandler}>Toggle Name</button>
        {persons}
       
      </div>
    );
  }
}

export default Radium(App);
