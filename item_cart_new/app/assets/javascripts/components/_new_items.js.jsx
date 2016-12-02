var NewItems = React.createClass({
  handleClick(){
    var name = this.refs.name.value;
    var description = this.refs.description.value;
    console.log("name: "+ name + ",description:"+description);
    $.ajax({
        url: '/api/v1/items',
        type: 'POST',
        data: {item: {name: name, description: description}},
        success: (response) =>{
            console.log('Ajax new item response', response);
            this.props.handleSubmit(item);
        }
    });
  },
  render(){
    return (
      <div>
          <h1>Form to Add New Items</h1>
            <input ref='name' placeholder='Enter the name of item'/>
            <input ref='description' placeholder='Enter the description of item'/>
              <button onClick={this.handleClick}>Submit</button>
      </div>
    )
  }
});
