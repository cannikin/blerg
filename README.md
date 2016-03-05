# Blerg

This blog is a sample app for my book [Pragmatic Rails Deployment on AWS](http://pragmaticrailsdeployment.com). This code is a functioning blog, that while awesome, probably won't do you much good if you're not following along with the book.

## Setup

Install required gems:

    bundle install

Setup and seed the database:

    bin/rails db:setup

And start the server:

    bin/rails s

Head to http://localhost:3000 and you should be ready to go.

## Branches

There are several branches in the repo that represent the state of the app after several rounds of updates outlined in the book. To get right to the final ready-to-deploy version of the app checkout the `deploy-ready` branch.

