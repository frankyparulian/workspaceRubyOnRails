// _body.js.jsx
var Body = React.createClass({
	getInitalState(){
		return { items: []}
	},

	componentDidMount(){
		$getJSON('/api/v1/items.json',(response) =>{this.setState({items: response})});
	},

	handleSubmit(item){
		var newState = this.state.items.concat(item);
		this.setState({items: newState })
	},

	handleDelete(id){
		console.log('in handle delete');
		$.ajax({
			url: '/api/v1/items/${id}',
			type: 'DELETE',
			success(response){
				this.removeItemClient(id);
				console.log('berhasil remove item');
			}
		});
	},

	removeItemClient(id){
		var newItems = this.state.items.filter((item) => {
			return item.id !=id;
		});
		this.setState({items: newItems });
	},

	render(){
		return(
			<div>
				<!-- <h1>Hello, World!</h1> -->
				<NewItem />
				<AllItems items={this.state.items}/>
			</div>
		)
	}
});
