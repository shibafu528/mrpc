# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: service.proto for package 'mrpc'

require 'grpc'
require 'service_pb'

module Mrpc
  module PluggaloidService
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'mrpc.PluggaloidService'

      rpc :Query, ::Mrpc::ProxyQuery, ::Mrpc::ProxyValue
      rpc :Subscribe, ::Mrpc::SubscribeRequest, stream(::Mrpc::Event)
      rpc :Filtering, stream(::Mrpc::FilteringPayload), stream(::Mrpc::FilteringRequest)
    end

    Stub = Service.rpc_stub_class
  end
end
