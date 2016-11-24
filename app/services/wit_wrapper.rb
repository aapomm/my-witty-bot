class WitWrapper

  def initialize
    actions = {
      :send => send_function,
      :tryToMakeUserLaugh => joke_function
    }

    @wit = Wit.new(
      :access_token => Rails.application.secrets.wit_access_token,
      :actions => actions
    )
  end

  def run_actions user_id, message
    @wit.run_actions user_id, message, {}
  end



  private

  def send_function
    lambda { |request, response| puts 'Send!' }
  end

  def joke_function
    lambda do |request|
      user_id = request['session_id']

      Facebook.new.send_message user_id, Jester.random_joke

      return request['context']
    end
  end

end
