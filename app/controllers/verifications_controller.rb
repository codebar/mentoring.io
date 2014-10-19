class VerificationsController < ApplicationController

  def show
    @verifier = current_member.verifier || Verifier.new
  end

  def create
    @verifier = current_member.verifier || current_member.create_verifier(verifier_params)
    client.messages.create(
      from: ENV["TWILIO_NO"],
      to: @verifier.mobile,
      body: "Hey there! Your verification code is #{@verifier.code}"
    )

    redirect_to :back
  end

  def update
    @verifier = current_member.verifier
    puts verifier_params[:authentication_code]
    puts @verifier.code

    if  @verifier.code.eql?(verifier_params[:authentication_code])
      @verifier.confirm!
      redirect_to dashboard_index_path, notice: "Your account has been verified!"
      else
    redirect_to :back, notice: "That's not the right code!"

    end
  end

  private

  def verifier_params
    params.require(:verifier).permit(:mobile, :authentication_code)
  end

  def client
    @client ||= Twilio::REST::Client.new
  end
end
