class CardsManegementSearchArea extends React.Component {
  render() {
    return (
      <div className="cards__search">
        <form className="form-inline">
          <div className="form-group">
            <label htmlFor="name">名前</label>
            <input className="form-control" type="text" name="name" value={this.props.name} onChange={this.props.onChangeText} />
          </div>

          <div className="form-group">
            <label htmlFor="company">会社</label>
            <input className="form-control" type="text" name="company" value={this.props.company} onChange={this.props.onChangeText} />
          </div>

          <div className="form-group">
            <label htmlFor="address">会社所在地</label>
            <input className="form-control" type="text" name="address" value={this.props.address} onChange={this.props.onChangeText} />
          </div>

          <div className="form-group">
            <label htmlFor="department">部署</label>
            <input className="form-control" type="text" name="department" value={this.props.department} onChange={this.props.onChangeText} />
          </div>

          <div className="form-group">
            <label htmlFor="title">肩書</label>
            <input className="form-control" type="text" name="title" value={this.props.title} onChange={this.props.onChangeText} />
          </div>
        </form>
      </div>
    )
  }
}
