# README

## Project Description
For week 10 we were tasked to do test driven development on our rails application, then search and fix security issues in our site.
For week 9 our task was to implement some of things we've gone over since the Genesis week, all on our own instead of in teams.
We created a new form for interventions, added a table for said form in our own databases, used a Zendesk API to create a ticket for each submission,
and made some changes to the REST API from the previous week to work with our new interventions table.

### Instructional Video - Week 9
The following video gives a brief overview of everything I implemented during the week.<br />
<a href="https://youtu.be/5n7PS9SMAXw">Click here!</a>

### Instructional Video - Week 10
The following video gives a brief overview of everything I implemented during the week.<br />
<a href="https://youtu.be/vABbr4kFejU">Click here!</a>

### Security Document
This lists a few security flaws within the application and what I did to fix them.
https://docs.google.com/document/d/1zZP-B8dzG8aR1FxfBDooWKcGiOu0LdPQQk25EoU0NTM/edit?usp=sharing

### Back Office Admin Logins
Nicolas Genest | CEO | nicolas.genest@codeboxx.biz | password: password

Nadya Fortier | Director | nadya.fortier@codeboxx.biz | password: password

Martin Chantal | Director Assistant | martin.chantal@codeboxx.biz | password: password

Mathieu Houde | Captain | mathieu.houde@codeboxx.biz | password: password

Abdul Akeeb | Developer | abdul.akeeb@codeboxx.biz | password: password

Timothy Wever | Developer | timothy.wever@codeboxx.biz | password: password

Krista Sheely | Developer | krista.sheely@codeboxx.biz | password: password 

### Running TDD tests
<ol>
  <li>Checking if the ElevatorMedia Streamer is successful</li>
  In your terminal, run the command ``` rspec spec/ElevatorMedia_spec.rb ```
  <li>Checking if the interventions are successful</li>
  In your terminal, run the command ``` rspec spec/intervention_spec.rb ```
  <li>Checking if the quote form has valid attributes and what cannot be done</li>
  In your terminal, run the command ``` rspec spec/quote_spec.rb ```
</ol>

### REST API Endpoint (Week 9)
<ol>
  <li>Retrieving a list of pending interventions</li>
  Visit this site: https://tyler-rocket-elevator.azurewebsites.net/interventions
  <li>Changing the status of an intervention to "InProgress"</li>
  In Postman body: {"id": "1", "status": "InProgress"}<br />
  <strong>Method:</strong> PUT
  <li>Changing the status of an intervnetion to "Completed"</li>
  In Postman body: {"id": "1", "status": "Completed"}<br />
  <strong>Method:</strong> PUT
</ol>

### Gems we used
- Google Maps: We used ``` gem 'geocoder' ``` m to convert the addresses to latitude and longitude
- Twilio: We used gem ``` 'gem 'twilio-ruby', '~> 5.61.0' ``` to integrate twilio to our apps
- Slack: We used gem ``` gem 'slack-notifier' ``` to integrate slack to our apps
- Dropbox: We used gem ``` gem 'dropbox_api' ``` to integrate slack to our apps
- SendGrid: We used gem ``` gem 'sendgrid-ruby' ``` and ``` gem 'sendgrid-actionmailer' ```  to integrate Sendgrid to our apps
- Amazon Polly: We used gem ``` gem 'aws-sdk-polly' ``` to integrate Amazon Polly to our apps
- Zendesk: We used gem ``` gem "zendesk_api" ``` to integrate slack to our apps
- Security: We used gem ```gem "recaptcha" ``` to better secure the sign in/up pages.
- TDD: 'rspec', '~> 3.0'
- TDD: 'rspec-rails', '~> 5.0', '>= 5.0.2'


### Ruby / Rails version
We used Ruby 2.6.6 and Ruby on Rails 5.2.6

### Author
<strong>Tyler Calderon</strong>
