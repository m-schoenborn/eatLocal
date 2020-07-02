class ProducerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def acceptance_email
    @producer = params[:producer]
    # @producer = producer
    @url = 'http://example.com/login'
    mail(to: @producer.email, subject: 'Your request was accepted')
  end
end
