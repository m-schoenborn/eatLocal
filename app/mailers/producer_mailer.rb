class ProducerMailer < ApplicationMailer

  def acceptance_email
    @producer = params[:producer]
    # @producer = producer
    # @url = 'http://example.com/login'
    mail(to: @producer.email, subject: 'Your request to eatLocal was accepted')
  end
end
