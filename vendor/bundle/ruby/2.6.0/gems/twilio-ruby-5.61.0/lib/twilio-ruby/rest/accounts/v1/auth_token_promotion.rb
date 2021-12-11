##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Accounts < Domain
      class V1 < Version
        class AuthTokenPromotionList < ListResource
          ##
          # Initialize the AuthTokenPromotionList
          # @param [Version] version Version that contains the resource
          # @return [AuthTokenPromotionList] AuthTokenPromotionList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Accounts.V1.AuthTokenPromotionList>'
          end
        end

        class AuthTokenPromotionPage < Page
          ##
          # Initialize the AuthTokenPromotionPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [AuthTokenPromotionPage] AuthTokenPromotionPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of AuthTokenPromotionInstance
          # @param [Hash] payload Payload response from the API
          # @return [AuthTokenPromotionInstance] AuthTokenPromotionInstance
          def get_instance(payload)
            AuthTokenPromotionInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Accounts.V1.AuthTokenPromotionPage>'
          end
        end

        class AuthTokenPromotionContext < InstanceContext
          ##
          # Initialize the AuthTokenPromotionContext
          # @param [Version] version Version that contains the resource
          # @return [AuthTokenPromotionContext] AuthTokenPromotionContext
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/AuthTokens/Promote"
          end

          ##
          # Update the AuthTokenPromotionInstance
          # @return [AuthTokenPromotionInstance] Updated AuthTokenPromotionInstance
          def update
            payload = @version.update('POST', @uri)

            AuthTokenPromotionInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Accounts.V1.AuthTokenPromotionContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Accounts.V1.AuthTokenPromotionContext #{context}>"
          end
        end

        class AuthTokenPromotionInstance < InstanceResource
          ##
          # Initialize the AuthTokenPromotionInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [AuthTokenPromotionInstance] AuthTokenPromotionInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {
                'account_sid' => payload['account_sid'],
                'auth_token' => payload['auth_token'],
                'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                'url' => payload['url'],
            }

            # Context
            @instance_context = nil
            @params = {}
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [AuthTokenPromotionContext] AuthTokenPromotionContext for this AuthTokenPromotionInstance
          def context
            unless @instance_context
              @instance_context = AuthTokenPromotionContext.new(@version, )
            end
            @instance_context
          end

          ##
          # @return [String] The SID of the Account that the secondary Auth Token was created for
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [String] The promoted Auth Token
          def auth_token
            @properties['auth_token']
          end

          ##
          # @return [Time] The ISO 8601 formatted date and time in UTC when the resource was created
          def date_created
            @properties['date_created']
          end

          ##
          # @return [Time] The ISO 8601 formatted date and time in UTC when the resource was last updated
          def date_updated
            @properties['date_updated']
          end

          ##
          # @return [String] The URI for this resource, relative to `https://accounts.twilio.com`
          def url
            @properties['url']
          end

          ##
          # Update the AuthTokenPromotionInstance
          # @return [AuthTokenPromotionInstance] Updated AuthTokenPromotionInstance
          def update
            context.update
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Accounts.V1.AuthTokenPromotionInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Accounts.V1.AuthTokenPromotionInstance #{values}>"
          end
        end
      end
    end
  end
end