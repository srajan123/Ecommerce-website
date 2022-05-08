import React, { useState, useEffect} from 'react'
import { Link, useLocation } from 'react-router-dom'
import { Row, Col, Image, ListGroup, Button, Card, Alert} from 'react-bootstrap'
import axios from 'axios'

function OrderScreen() {

    const search = useLocation().search
    var id = search.substr(4,1)
    const price = search.split('&price=')[1]
    const order_id = Math.floor(Math.random() * (1000000 - 10000) ) + 100000

    return (
        <div>
            <Row className="justify-content-md-center">
                <Alert key="success" variant="success">
                <span><strong><h2>Congratulations!</h2></strong> Your Order has been Confirmed.</span>
            </Alert>
                <Col md={6} className="align-items-center">
                    <ListGroup >
                      <ListGroup.Item><h4>Order id: {order_id}</h4></ListGroup.Item>
                      <ListGroup.Item><h4>Product id: {id}</h4></ListGroup.Item>
                      <ListGroup.Item><h4>Price: {price}</h4></ListGroup.Item>
                      <ListGroup.Item><h4>Shipping Charge: $120</h4></ListGroup.Item>
                    </ListGroup>

                    <ListGroup className='py-3'>
                      <ListGroup.Item><h5>Total Price: </h5></ListGroup.Item>
                      <ListGroup.Item> ${parseFloat(Number(price) + 120).toFixed(2)} </ListGroup.Item>
                    </ListGroup>

                    <ListGroup className='py-3'>
                        <Button>
                           Place Order
                        </Button>
                    </ListGroup>
                </Col>
            </Row>
        </div>
    )
}

export  default OrderScreen
