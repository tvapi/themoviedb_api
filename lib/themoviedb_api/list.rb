class ThemoviedbApi::List < ThemoviedbApi::Base
  # Get Details
  def find(id)
    get("list/#{id}").params(api_key: api_key).response
  end

  # Check Item Status
  # Create List
  # Add Movie
  # Remove Movie
  # Clear List
  # Delete List
end
