var HelloWorld = React.createClass({
  render: function(){
    return (
      <div className = 'Hello World'>
        Hello, world!
      </div>
    );
  }
});

var ready = function(){
  React.render(
    <HelloWorld />,
    document.getElementById('comments')
  );
};

$(document).ready(ready);
