class CardsManegementComponent extends React.Component {
  constructor() {
    super();

    this.state = {
      inputStates: {},
      isLoading: true,
      cards: []
    };

    this.onChangeText = this.onChangeText.bind(this);
    this.updateCards = this.updateCards.bind(this);
  }

  componentDidMount() {
    this.updateCards(this.state.inputStates);
  }

  updateCards(inputStates) {
    thisObj = this;

    $.get('/api/v1/cards/index', inputStates, (data) => {
      thisObj.setState({
        inputStates: inputStates,
        isLoading: false,
        cards: data
      });
    })
  }

  onChangeText(e) {
    let inputStates = this.state.inputStates;

    switch (e.target.name) {
      case 'name':
        inputStates.name = e.target.value;
        break;
      case 'company':
        inputStates.company = e.target.value;
        break;
      case 'address':
        inputStates.address = e.target.value;
        break;
      case 'department':
        inputStates.department = e.target.value;
        break;
      case 'title':
        inputStates.title = e.target.value;
        break;
    }

    this.updateCards(inputStates);
  }

  render() {
    return (
      <div>
        <CardsManegementSearchArea inputStates={this.state.inputStates} onChangeText={this.onChangeText}/>
        <LoaderComponent isLoading={this.state.isLoading}/>
        {
          (() => {
            if (this.state.isLoading === false) {
              return (<CardsManegementTable cards={this.state.cards}/>)
            }
          }())
        }
      </div>
    )
  }
}
