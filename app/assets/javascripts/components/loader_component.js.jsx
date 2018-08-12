class LoaderComponent extends React.Component {
  render() {
    if(this.props.isLoading) {
      return (
        <i className="fa fa-fw fa-spinner fa-spin"></i>
      );
    } else{
      return null;
    }
  }
}
