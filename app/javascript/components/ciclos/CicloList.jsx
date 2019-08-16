import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class CicloList extends Component {
    constructor() {
        super();
        this.state = { ciclos: [] };
    }

    componentDidMount() {
        fetch('api/v1/ciclos')
            .then(response => response.json())
            .then(data => {
                this.setState({ciclos: data});
            })
            .catch(error => console.log('error', error));
    }
    render() {
        return (
            <div className="container-fluid">
                <div className="row">
                    <div className="col-lg-12">
                        <div className="table-responsive pr-2">
                            <table className="table table-sm table-bordered">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Ciclo</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                {this.state.ciclos.map((ciclo) => {
                                    return(
                                        <tr key={ciclo.id}>
                                            <td>{ciclo.id}</td>
                                            <td><Link to={`/ciclos/${ciclo.id}`}>{ciclo.año_inicio + "-" + ciclo.año_fin}</Link></td>
                                        </tr>
                                    )
                                })}
                                </tbody>
                            </table>
                            <Link to="/ciclos/new" className="btn btn-outline-primary">Create Ciclos</Link>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default CicloList;