# frozen_string_literal: true
module DropboxApi::Endpoints
  class RpcNotify < DropboxApi::Endpoints::Rpc
    def build_connection
      @connection = @builder.build('https://notify.dropboxapi.com') do |c|
        c.headers.delete 'Authorization'

        c.response :decode_result
      end
    end
  end
end
