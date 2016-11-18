// _all_items.js.jsx
var AllItems = React.createClass({
	handleDelete(id){
		console.log('delete item clicked');
		this.props.handleDelete(id);
	},
	handleEdit(){
		console.log('edit button clicked')
	},

	render(){
		var items = this.props.items.map((item) =>{
			return (
				<div>
					<h3>{this.props.item.name}</h3>
					<p>{this.props.item.description}</p>
					<button onClick={this.props.handleDelete}>Delete</button>
					<button onClick={this.props.handleEdit}>Edit</button>

				</div>
			)
		});

		return(
			<div>
				{items}
			</div>
		)
	}
});
