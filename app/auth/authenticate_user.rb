class AuthenticateUser
    def initialize(email, password)
        @email = email
        @password = password
    end

    # Service entry point
    def call
        JsonWebToken.encode(user_id: user.id) if user
    end

    private

    attr_reader :email, :password

    # Verify credentials
    def user
        user = User.find_by(email: email)
        return user if user && user.authenticate(password)
        # Invalid credentials
        raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
    end
end