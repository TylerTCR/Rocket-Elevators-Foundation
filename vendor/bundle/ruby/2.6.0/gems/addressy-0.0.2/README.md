### Addressy

Addressy makes it easy to fetch real addresses for your testing/demoing needs.

#### Installation

Add this line to your application's Gemfile:

    gem 'addressy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install addressy

#### Usage

Fetch a number of US addresses:
    
    Addressy::US.fetch(5) #=> [#<Addressy::Address:0x123 ...>, ...]

The Addressy::Address API:

    address = Addressy::US.fetch(2).first

    address.street  #=> "123 Webfoot Walk"
    address.city    #=> "Duckburg"
    address.state   #=> "CA"
    address.zip     #=> "33333-2222"
    address.country #=> "United States"

    address.zip(:simple)  #=> "33333"
    address.state(:name)  #=> "California"
    address.full          #=> "123 Webfoot Walk, Duckburg, CA 33333-2222,
    United States"
