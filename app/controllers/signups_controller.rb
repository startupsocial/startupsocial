class SignupsController < InheritedResources::Base

  def create
    @signup = Signup.new(params[:signup])

    respond_to do |format|
      if @signup.save
        format.html { redirect_to new_signup_path, notice: 'Thank you for registering!' }
        format.json { render json: @signup, status: :created, location: @signup }
      else
        format.html { render action: "new" }
        format.json { render json: @signup.errors, status: :unprocessable_entity }
      end
    end
  end

end
