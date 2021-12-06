# README

## Project Description
This week our task was to implement some of things we've gone over since the Genesis week, all on our own instead of in teams.
We created a new form for interventions, added a table for said form in our own databases, used a Zendesk API to create a ticket for each submission,
and made some changes to the REST API from the previous week to work with our new interventions table.

### Instructional Video
The following video gives a brief overview of everything I implented during the week.<br />
<a href="https://youtu.be/5n7PS9SMAXw">Click here!</a>

### Back Office Admin Logins
Nicolas Genest | CEO | nicolas.genest@codeboxx.biz | password: password

Nadya Fortier | Director | nadya.fortier@codeboxx.biz | password: password

Martin Chantal | Director Assistant | martin.chantal@codeboxx.biz | password: password

Mathieu Houde | Captain | mathieu.houde@codeboxx.biz | password: password

Abdul Akeeb | Developer | abdul.akeeb@codeboxx.biz | password: password

Timothy Wever | Developer | timothy.wever@codeboxx.biz | password: password

Krista Sheely | Developer | krista.sheely@codeboxx.biz | password: password 


### REST API Endpoint
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


### Ruby / Rails version
We used Ruby 2.6.6 and Ruby on Rails 5.2.6

### By
<strong>Tyler Calderon</strong>
