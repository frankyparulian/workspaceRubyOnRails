var AllItems = React.createClass({

  render(){
    var items = this.props.items.map((item)=>{
        return (
          <div key={item.id}>
            <h3>{item.name}</h3>
            <p>{item.description}</p>
            <hr/>
          </div>
        )
    });
    return (
      <div>
          <h1>List All Items</h1>
          {items}
      </div>
    )
  }
});
