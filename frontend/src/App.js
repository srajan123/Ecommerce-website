import { Container } from 'react-bootstrap'
import { HashRouter, Route, Routes, Navigate} from 'react-router-dom'
import { Provider } from 'react-redux'
import Header from './components/Header'
import Footer from './components/Footer'
import HomeScreen from './screens/HomeScreen'
import ProductScreen from './screens/ProductScreen'
import LoginScreen from './screens/LoginScreen'
import RegisterScreen from './screens/RegisterScreen'
import OrderScreen from './screens/OrderScreen'
import { useLocalState } from './useLocalStorage'

import store from'./store'

const PrivateRoute = ({ children }) => {
  const [jwt, setJwt] = useLocalState("", "userInfo")
  return jwt ? children: <Navigate to="/login" />;
};

function App() {
  return (
    <Provider store={store}>
      <HashRouter>
        <Header />
        <main>
          <Container className="py-3">
            <Routes>
              <Route path='/' element={< HomeScreen />} exact />
              <Route path='/login' element={< LoginScreen />} />
              <Route path='/register' element={< RegisterScreen />} />
              <Route path='/product/:id' element={< ProductScreen />} />
              <Route
                  path="/cart"
                  element={
                    <PrivateRoute>
                      <OrderScreen />
                    </PrivateRoute>
                  }
              />
              // <Route path='/cart' element={< OrderScreen />} />
            </Routes>
          </Container>
        </main>
        <Footer />
      </HashRouter>
    </Provider>
  );
}

export default App;
