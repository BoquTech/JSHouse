require 'Grape'
module 
    class API < Grape::API
        format :json
        prefix "mysys"

        resource :properties do

            desc "get all visitor information"
            get do
                Property.all
            end

        end
    end
end