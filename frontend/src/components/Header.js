import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import{ Navbar, NavDropdown, Nav, Container, Row } from 'react-bootstrap'
import { LinkContainer } from 'react-router-bootstrap'
import { logout } from '../actions/userActions'

function Header() {

    const userLogin = useSelector(state => state.userLogin)
    const { userInfo } = userLogin

    const dispatch = useDispatch()

    const logoutHandler = () => {
        dispatch(logout())
    }

    return (
            <header>
                <Navbar bg="primary" variant="dark" expand="lg" collapseOnSelect>
                  <Container>
                    <Navbar.Brand href="/">Squarekart</Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                      <Nav className="mr-auto">

                         {userInfo ? (
                                <NavDropdown title={userInfo.name} id='username'>
                                <NavDropdown.Item onClick={logoutHandler}>Logout</NavDropdown.Item>
                                </NavDropdown>

                            ) : (
                                    <LinkContainer to='/login'>
                                        <Nav.Link><i className="fas fa-user"></i>Login</Nav.Link>
                                    </LinkContainer>
                                )}

                      </Nav>
                    </Navbar.Collapse>
                  </Container>
                </Navbar>
            </header>
        )
}

export  default Header
