class HomesController < ApplicationController
  # helper_method :current_user, :logged_in?
  #before_filter :ensure_logged_in, except: :index
  def index
    # @current_user ||= User.find_by_id(session[:user])

    # client = Octokit::Client.new(:access_token => "")
    #
    #
    #
    # user = Octokit.user client.login
    #
    # # Get the repos rel, returned from the API
    # # as repos_url in the resource
    # user.rels[:repos].href
    # # => "https://api.github.com/users/technoweenie/repos"
    #
    # repos = user.rels[:repos].get.data
    # repos.last.name
    # # => "faraday-zeromq"


    # @github_response = repos
  end
end
