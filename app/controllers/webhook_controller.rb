class WebhookController < ApplicationController
  def received
    Cloudmunda.client.create_process_instance(
      bpmnProcessId: 'cloudmunda-demo',
      version: 4,
      variables: {text: "hello"}.to_json
    )

    head :ok
  end
end