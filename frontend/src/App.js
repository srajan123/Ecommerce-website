import { Container } from 'react-bootstrap'
import { BrowserRouter, Route, Routes, } from 'react-router-dom'
import { Provider } from 'react-redux'
import Header from './components/Header'
import Footer from './components/Footer'
import HomeScreen from './screens/HomeScreen'
import ProductScreen from './screens/ProductScreen'
import LoginScreen from './screens/LoginScreen'
import RegisterScreen from './screens/RegisterScreen'
import OrderScreen from './screens/OrderScreen'

import store from'./store'

const PrivateRoute = ({ auth: { isAuthenticated }, children }) => {
  return isAuthenticated ? <Navigate to="/" /> : <Navigate to="/login" />;
};

function App() {
  return (
    <Provider store={store}>
      <BrowserRouter>
        <Header />
        <main>
          <Container className="py-3">
            <Routes>
              <Route path='/' element={< HomeScreen />} exact />
              <Route path='/login' element={< LoginScreen />} />
              <Route path='/register' element={< RegisterScreen />} />
              <Route path='/product/:id' element={< ProductScreen />} />
              <Route
                path='/cart/:id/:price'
                element={
                  <PrivateRoute>
                    <OrderScreen />
                  </PrivateRoute>
                  }
              />

            </Routes>
          </Container>
        </main>
        <Footer />
      </BrowserRouter>
    </Provider>
  );
}

export default App;
