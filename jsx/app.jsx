~function () {
  'use strict'

  var Menu = React.createClass({
    render: function () {
      return (
        <div className="pure-menu pure-menu-open pure-menu-horizontal">
          <ul>
            <li><a href="#">Read</a></li>
            <li><a href="#">Save</a></li>
          </ul>
        </div>
      )
    }
  })

  var App = React.createClass({
    render: function () {
      return (
        <Menu />
      )
    }
  })

  React.render(<App />, document.body)
}()
