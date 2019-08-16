import React, { Component } from 'react';
import Home from '../components/Home';
import CiclosList from './ciclos/CicloList';
import {HashRouter as Router, Route, NavLink, Switch} from 'react-router-dom'
class App extends Component{
    render() {
        return(
            <Router>
                <Navigation />
                <Main />
            </Router>
        );
    }
}

const Navigation = () => (
    <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
        <ul className="navbar-nav mr-auto">
            <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/">Home</NavLink></li>
            <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/ciclos">Home</NavLink></li>
        </ul>
    </nav>
);

const Main = () => (
    <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/ciclos" component={CiclosList} />
    </Switch>
);

export default App;