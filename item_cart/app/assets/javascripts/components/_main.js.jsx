var Main = React.createClass({
  getInitialState(){
      return { items: []}
  },
  componentDidMount(){
      //console.log('Component Mounted');
      $.getJSON('/api/v1/items.json', (response) => { this.setState({items: response})} )
  },
  onAddItem(item){

    var that = this;
    $.ajax({
        url: '/api/v1/items',
        type: 'POST',
        data: {item:item},
        /*success: (item) => {
            this.props.handleSubmit(item);
        */
        success: function(response){
          that.state.items.push(response)
          that.setState({items:that.state.items});
          //console.log('ajax post input sukses', response)
        }
    });

  },

  render(){
      return (
          <div id= "main_page">
              <div id = "header_container">
                  <div id = "header_logo">LOGO HEADER</div>
                  <div id = "menubar">Menu Bar</div>
              </div>

              <div id = "body_container">
                  <div className="body_slice_container sidebar" id="sidebar_left">sidebar_left</div>
                  <div className="body_slice_container" id="body_page">
                      <Body />
                      <NewItem onAddItem={this.onAddItem}/>
                      <Allitems items={this.state.items}/>
                  </div>
                  <div className="body_slice_container sidebar" id="sidebar_right">sidebar_right</div>
              </div>

              <div id = "footer_container">
                  footer
              </div>
          </div>
      )
  }
});
