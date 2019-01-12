require 'rails_helper'

RSpec.configure do |config|
  # Specify a root folder where Swagger JSON files are generated
  # NOTE: If you're using the rswag-api to serve API descriptions, you'll need
  # to ensure that it's configured to serve Swagger from the same folder
  config.swagger_root = Rails.root.to_s + '/public/api-docs'

  # Define one or more Swagger documents and provide global metadata for each one
  # When you run the 'rswag:specs:to_swagger' rake task, the complete Swagger will
  # be generated at the provided relative path under swagger_root
  # By default, the operations defined in spec files are added to the first
  # document below. You can override this behavior by adding a swagger_doc tag to the
  # the root example_group in your specs, e.g. describe '...', swagger_doc: 'v2/swagger.json'
  config.swagger_docs = {
    'swagger.json' => {
      swagger: '2.0',
      info: {
        title: 'My Vinyl API',
        version: 'v1',
        description: 'This is the API component for a simple application that can manage a user\'s record collection.',
        contact: {
          email: 'jwdepetro@gmail.com'
        }
      },
      securityDefinitions: {
        apiKey: {
          type: :apiKey,
          name: 'api_key',
          in: :header
        }
      },
      externalDocs: {
        description: 'GitHub',
        url: 'https://github.com/jwdepetro/my-vinyl-api'
      }
    }
  }
end
