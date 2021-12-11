##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Trusthub < Domain
      class V1 < Version
        class CustomerProfilesContext < InstanceContext
          class CustomerProfilesEvaluationsList < ListResource
            ##
            # Initialize the CustomerProfilesEvaluationsList
            # @param [Version] version Version that contains the resource
            # @param [String] customer_profile_sid The unique string that we created to
            #   identify the customer_profile resource.
            # @return [CustomerProfilesEvaluationsList] CustomerProfilesEvaluationsList
            def initialize(version, customer_profile_sid: nil)
              super(version)

              # Path Solution
              @solution = {customer_profile_sid: customer_profile_sid}
              @uri = "/CustomerProfiles/#{@solution[:customer_profile_sid]}/Evaluations"
            end

            ##
            # Create the CustomerProfilesEvaluationsInstance
            # @param [String] policy_sid The unique string of a policy that is associated to
            #   the customer_profile resource.
            # @return [CustomerProfilesEvaluationsInstance] Created CustomerProfilesEvaluationsInstance
            def create(policy_sid: nil)
              data = Twilio::Values.of({'PolicySid' => policy_sid, })

              payload = @version.create('POST', @uri, data: data)

              CustomerProfilesEvaluationsInstance.new(
                  @version,
                  payload,
                  customer_profile_sid: @solution[:customer_profile_sid],
              )
            end

            ##
            # Lists CustomerProfilesEvaluationsInstance records from the API as a list.
            # Unlike stream(), this operation is eager and will load `limit` records into
            # memory before returning.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit.  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records.  If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Array] Array of up to limit results
            def list(limit: nil, page_size: nil)
              self.stream(limit: limit, page_size: page_size).entries
            end

            ##
            # Streams CustomerProfilesEvaluationsInstance records from the API as an Enumerable.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit. Default is no limit.
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records. If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Enumerable] Enumerable that will yield up to limit results
            def stream(limit: nil, page_size: nil)
              limits = @version.read_limits(limit, page_size)

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
            end

            ##
            # When passed a block, yields CustomerProfilesEvaluationsInstance records from the API.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            def each
              limits = @version.read_limits

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page,
                              limit: limits[:limit],
                              page_limit: limits[:page_limit]).each {|x| yield x}
            end

            ##
            # Retrieve a single page of CustomerProfilesEvaluationsInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of CustomerProfilesEvaluationsInstance
            def page(page_token: :unset, page_number: :unset, page_size: :unset)
              params = Twilio::Values.of({
                  'PageToken' => page_token,
                  'Page' => page_number,
                  'PageSize' => page_size,
              })

              response = @version.page('GET', @uri, params: params)

              CustomerProfilesEvaluationsPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of CustomerProfilesEvaluationsInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of CustomerProfilesEvaluationsInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              CustomerProfilesEvaluationsPage.new(@version, response, @solution)
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Trusthub.V1.CustomerProfilesEvaluationsList>'
            end
          end

          class CustomerProfilesEvaluationsPage < Page
            ##
            # Initialize the CustomerProfilesEvaluationsPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [CustomerProfilesEvaluationsPage] CustomerProfilesEvaluationsPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of CustomerProfilesEvaluationsInstance
            # @param [Hash] payload Payload response from the API
            # @return [CustomerProfilesEvaluationsInstance] CustomerProfilesEvaluationsInstance
            def get_instance(payload)
              CustomerProfilesEvaluationsInstance.new(
                  @version,
                  payload,
                  customer_profile_sid: @solution[:customer_profile_sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Trusthub.V1.CustomerProfilesEvaluationsPage>'
            end
          end

          class CustomerProfilesEvaluationsContext < InstanceContext
            ##
            # Initialize the CustomerProfilesEvaluationsContext
            # @param [Version] version Version that contains the resource
            # @param [String] customer_profile_sid The unique string that we created to
            #   identify the customer_profile resource.
            # @param [String] sid The unique string that identifies the Evaluation resource.
            # @return [CustomerProfilesEvaluationsContext] CustomerProfilesEvaluationsContext
            def initialize(version, customer_profile_sid, sid)
              super(version)

              # Path Solution
              @solution = {customer_profile_sid: customer_profile_sid, sid: sid, }
              @uri = "/CustomerProfiles/#{@solution[:customer_profile_sid]}/Evaluations/#{@solution[:sid]}"
            end

            ##
            # Fetch the CustomerProfilesEvaluationsInstance
            # @return [CustomerProfilesEvaluationsInstance] Fetched CustomerProfilesEvaluationsInstance
            def fetch
              payload = @version.fetch('GET', @uri)

              CustomerProfilesEvaluationsInstance.new(
                  @version,
                  payload,
                  customer_profile_sid: @solution[:customer_profile_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Trusthub.V1.CustomerProfilesEvaluationsContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Trusthub.V1.CustomerProfilesEvaluationsContext #{context}>"
            end
          end

          class CustomerProfilesEvaluationsInstance < InstanceResource
            ##
            # Initialize the CustomerProfilesEvaluationsInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] customer_profile_sid The unique string that we created to
            #   identify the customer_profile resource.
            # @param [String] sid The unique string that identifies the Evaluation resource.
            # @return [CustomerProfilesEvaluationsInstance] CustomerProfilesEvaluationsInstance
            def initialize(version, payload, customer_profile_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'account_sid' => payload['account_sid'],
                  'policy_sid' => payload['policy_sid'],
                  'customer_profile_sid' => payload['customer_profile_sid'],
                  'status' => payload['status'],
                  'results' => payload['results'],
                  'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'customer_profile_sid' => customer_profile_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [CustomerProfilesEvaluationsContext] CustomerProfilesEvaluationsContext for this CustomerProfilesEvaluationsInstance
            def context
              unless @instance_context
                @instance_context = CustomerProfilesEvaluationsContext.new(
                    @version,
                    @params['customer_profile_sid'],
                    @params['sid'],
                )
              end
              @instance_context
            end

            ##
            # @return [String] The unique string that identifies the Evaluation resource
            def sid
              @properties['sid']
            end

            ##
            # @return [String] The SID of the Account that created the resource
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The unique string of a policy
            def policy_sid
              @properties['policy_sid']
            end

            ##
            # @return [String] The unique string that identifies the resource
            def customer_profile_sid
              @properties['customer_profile_sid']
            end

            ##
            # @return [customer_profiles_evaluations.Status] The compliance status of the Evaluation resource
            def status
              @properties['status']
            end

            ##
            # @return [Array[Hash]] The results of the Evaluation resource
            def results
              @properties['results']
            end

            ##
            # @return [Time] The date_created
            def date_created
              @properties['date_created']
            end

            ##
            # @return [String] The url
            def url
              @properties['url']
            end

            ##
            # Fetch the CustomerProfilesEvaluationsInstance
            # @return [CustomerProfilesEvaluationsInstance] Fetched CustomerProfilesEvaluationsInstance
            def fetch
              context.fetch
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Trusthub.V1.CustomerProfilesEvaluationsInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Trusthub.V1.CustomerProfilesEvaluationsInstance #{values}>"
            end
          end
        end
      end
    end
  end
end