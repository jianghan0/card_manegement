class CardsManegementTable extends React.Component {
  render() {
    return (
      <div className="cards_table">
        <table className="table table-bordered table-hover">
          <thead>
            <tr key="table_header">
              <th>名前</th>
              <th>会社</th>
              <th>所在地</th>
              <th>部署</th>
              <th>肩書</th>
              <th>作成日</th>
            </tr>
          </thead>
          <tbody>
          {
            this.props.cards.map((card, index) => {
              return (
                <tr key={index}>
                  <td>{ card.name }</td>
                  <td>{ card.company }</td>
                  <td>{ card.address }</td>
                  <td>{ card.department }</td>
                  <td>{ card.title }</td>
                  <td>{ card.created_at }</td>
                </tr>
              )
            })
          }
          </tbody>
        </table>
      </div>
    )
  }
}
