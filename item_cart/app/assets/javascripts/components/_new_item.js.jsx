var NewItem = React.createClass({
  handleClick(){
      var name = this.refs.name.value;
      var description = this.refs.description.value;
      var item = {name: name, description: description}
      //console.log('name: '+name+',description:'+description+'-end-');
      this.props.onAddItem(item);

  },
  render(){
    return(
      <div>
          <h1>New Item</h1>
          <input ref='name' placeholder='enter name of item'/>

          <input ref='description' placeholder='enter description of item'/>
          <button onClick={this.handleClick}>Submit</button>
      </div>
    )
  }
});
