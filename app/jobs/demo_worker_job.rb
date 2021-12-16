# frozen_string_literal: true

class DemoWorkerJob
  include ::Cloudmunda::Worker

  type 'webhook-slack-announce'
  max_jobs_to_activate 20
  poll_interval 1
  timeout 45

  attr_reader :variables

  def process(job)
    slack_client.chat_postMessage(channel: '#general', text: 'a message', as_user: true)
  end

  private

  def slack_client
    @slack_client ||= ::Slack::Web::Client.new
  end
end
