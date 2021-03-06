import React from 'react'
import axios from 'axios'

class Product extends React.Component {
  state = { product: {} }

  componentDidMount() {
    const { id } = this.props.match.params
    axios.get(`/api/products/${id}`)
    .then( ({ data }) => this.setState({ product: data }) )
  }

  render() {
   const { product: {name, description, price, department} } = this.state
   return(
    <div>
      <h1>{name}</h1>
      <h4>{description}</h4>
      <h4>${price}</h4>
      <h3>{department}</h3>
    </div>
   )
  }
} 

export default Product