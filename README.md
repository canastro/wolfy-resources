# Wolfy
<div style="text-align:center"><img src="https://github.com/canastro/wolfy-resources/blob/master/The-Wolf-of-Wall-Street.png?raw=true" width="300"></div>

## Goal
This is a project built for academic reasons only, and its my attempt to gather multiple sources of knowledge and make wiser decisions on when to buy/sell securities.

## How it works?
### Data collected:
At the moment this project collects the following information:
* Articles from bloomberg, cnbc, reuters, seeking-alpha, wcj and yahoo;
* Tweets;
* Ratings;
* Prices;

### Process Data:
* **Sentiment analysis:** From the articles and tweets is extracted the sentiment. The sentiment of a tweet also reflects the number of followers and the number of favorites (the ratio that this impacts the sentiment still needs some testing to reach more realistic values).
* **Technical Analysis:** From the price variations the engine will look for known patterns to trigger alerts of possible changes (WORK IN PROGRESS)
* **Neural Network:** Taking advantage of the massive amount of available data, a neural network is fed with prices and it will try to learn to predict how normally price oscillations occur.

## Technical Details
### Architecture
![Architecture](https://github.com/canastro/wolfy-resources/blob/master/Wolfy%20-%20Wolfy%20Diagram.png?raw=true "Architecture")

This project is modular and is composed by the following modules:
* [**wolfy-models**](https://github.com/canastro/wolfy-models) - Models used by all of the other modules
*  [**wolfy-engine**](https://github.com/canastro/wolfy-engine) - Engine that fetches for prices, articles, tweets, ratings and produces reports on these. It also sends a message ZMQ when a new price is fetched
*  [**wolfy-brain**](https://github.com/canastro/wolfy-brain) - Neural Network that decides if a security should sold or bought
* [**wolfy-api**](https://github.com/canastro/wolfy-api) - API built with GraphQL
*  [**wolfy-inspector**](https://github.com/canastro/wolfy-inspector) - Frontend application with react & redux

## Technology
Some of the relevant libraries used:
* **cheerio** - used for webscraping
* **commander** - Command-line interfaces
* **graffiti & graffiti-mongoose** - wrapper around graphql which remove some boilerplate reusing the models from mongoose and offering queries and mutations out of the box
* **graphql** - instead of the traditional RESTfull services
* **mongodb** - free and open-source cross-platform nosql database
* **nginx** - HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server
* **node-schedule** - job scheduler with DSL similar to unix cronjob
* **nodemailer** - to send out emails with the daily reports
* **pm2** - Production process manager for Node.js apps with a built-in load balancer
* **sentiment** - AFINN-based sentiment analysis library
* **shipit** - Universal automation and deployment tool written in JavaScript.
* **synaptic** - Architecture-free neural network library
* **twit** - use twitter API
* **winston** - logging
* **zmq** - ZeroMQ, a queue library
