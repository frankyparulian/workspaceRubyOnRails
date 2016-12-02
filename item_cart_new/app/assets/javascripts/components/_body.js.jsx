var Body = React.createClass({
  getInitialState(){
    return { items: []}
  },
  componentDidMount(){
      console.log('Component Mount');
      $.getJSON('/api/v1/items.json',(response) => { this.setState({items: response}) });
  },
  handleSubmit(item){
    console.log(item);
    var newState = this.state.items.concat(item);
    this.setState({items: newState})
  },
  render(){
    return (
      <div>
          <h1>Hello World From Body</h1>
          <NewItems handleSubmit={this.handleSubmit}/>
          <AllItems items={this.state.items} />
      </div>
    )
  }
});
