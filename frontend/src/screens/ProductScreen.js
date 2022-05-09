import React, { useState, useEffect} from 'react'
import { Link, useParams, useNavigate } from 'react-router-dom'
import { Row, Col, Image, ListGroup, Button, Card } from 'react-bootstrap'
import axios from 'axios'

function ProductScreen() {
    const { id }=useParams();
    const [product, setProduct] = useState([])
    const navigate = useNavigate()
    useEffect(() => {

       async function fetchProduct() {
            const { data } = await axios.get(`/apis/products/${id}`)
            setProduct(data)
        }

        fetchProduct()

    }, [])

    const addToCartHandler = () => {
        navigate(`/cart/?id=${product._id}&price=${product.price}`)
    }

    return (
        <div>
            <Row>
                <Col md={6}>
                    <Image src={product.image} alt={product._id} fluid />
                </Col>

                <Col md={5}>
                    <ListGroup variant='flush'>
                      <ListGroup.Item><h4>{product.name}</h4></ListGroup.Item>
                      <ListGroup.Item>{product.rating} <i style={{ color: '#ffd814' }} className="fas fa-star"></i> out of 5</ListGroup.Item>
                      <ListGroup.Item>Price: <strong>${product.price}</strong></ListGroup.Item>
                      <ListGroup.Item>Status: <strong>{product.countInStock > 0 ? 'In Stock' : 'Out of Stock'}</strong></ListGroup.Item>
                    </ListGroup>

                    <ListGroup className='py-3'>
                      <ListGroup.Item><h5>About the Product</h5></ListGroup.Item>
                      <ListGroup.Item>{product.description}</ListGroup.Item>
                    </ListGroup>

                    <ListGroup className='py-3'>
                        <Button
                            onClick={addToCartHandler}
                            className='btn-block'
                            disabled={product.countInStock == 0}
                            type='button'>
                           Place Order
                        </Button>
                    </ListGroup>
                </Col>
            </Row>
        </div>
    )
}

export  default ProductScreen
