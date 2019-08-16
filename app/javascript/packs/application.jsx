import React from 'react'
import WebpackerReact from 'webpacker-react'
import PropTypes from 'prop-types'

const Home = props => (
    <div className="jumbotron">
        <h1>Home Page</h1>
    </div>
)

WebpackerReact.setup({Home})
