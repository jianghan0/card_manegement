class CardsManegementComponent extends React.Component {
  constructor() {
    super();

    const inputStates = {
      name: '',
      company: '',
      address: '',
      department: '',
      title: '',

    };

    this.state = {
      inputStates: inputStates,
      cards: []
    };

    this.onChangeText = this.onChangeText.bind(this);
    this.updateCards = this.updateCards.bind(this);

    this.updateCards(inputStates);
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

  updateCards(inputStates) {
    thisObj = this;
    console.log(inputStates)

    $.get('/api/v1/cards/index', inputStates, (data) => {
      thisObj.setState({
        inputStates: inputStates,
        cards: data
      });
    })
  }

  render() {
    return (
      <div>
        <CardsManegementSearchArea inputStates={this.state.inputStates} onChangeText={this.onChangeText}/>
        <CardsManegementTable cards={this.state.cards}/>
      </div>
    )
  }
}
