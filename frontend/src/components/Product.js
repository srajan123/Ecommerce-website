import React from 'react'
import  { Card } from 'react-bootstrap'
import { Link } from 'react-router-dom'

function Product({ product }) {
    return (
        <Card className="my-4 p-2">

            <Link to={`/product/${product._id}`}>
                <Card.Img src={product.image} />
            </Link>

            <Card.Body>

                <Link style={{ textDecoration: 'none' }} to={`/product/${product._id}`}>
                    <Card.Title className="my-2 py-2" as="div">
                       <strong>{product.name}</strong>
                    </Card.Title>
                </Link>

                <Card.Text as="div">
                    <div className="my-1 py-1">
                        {product.rating} <i style={{ color: '#ffd814' }} className="fas fa-star"></i> out of 5
                    </div>
                </Card.Text>

                <Card.Text className="py-2" as="h5">
                       ${product.price}
                </Card.Text>

            </Card.Body>

        </Card>
    )
}

export  default Product
