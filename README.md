# Challage TakeAway

## Objective
Make a Takeaway system that:
* Lists dishes with prices
* Orders:
    - Place orders by giving the list of dishes, their quantities.
    - Orders should calculate their total cost. 
    - Sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".

* Message
    - The text sending functionality should be implemented using Twilio API.
    - You'll need to register for it. It’s free.
    - Use twilio-ruby gem to access the API

* Use a Gemfile to manage your gems

* Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run

##Technologies used
 - Ruby
 - Rspec
 
##How to use it
Clone the repository and enter the directory.

####In tests
Run ``rspec`` on the command line to see tests running and passing.

####In code
Open ruby console by typing ``irb`` in the command line. <br/>

Require all files "client, messages, menu, dish, order and order_item" by enter code: ``require './lib/client'``  <br/>
Create variables for all classes and interact with then. <br/>
If you want to try Twilio you must create you own account and put you secret key and token in 2 environment variables: TWILIO_SID and TWILIO_TOKEN.


