# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: authzed/api/v1/debug.proto

require 'google/protobuf'

require 'authzed/api/v1/core_pb'
require 'validate/validate_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("authzed/api/v1/debug.proto", :syntax => :proto3) do
    add_message "authzed.api.v1.DebugInformation" do
      optional :check, :message, 1, "authzed.api.v1.CheckDebugTrace", json_name: "check"
      optional :schema_used, :string, 2, json_name: "schemaUsed"
    end
    add_message "authzed.api.v1.CheckDebugTrace" do
      optional :resource, :message, 1, "authzed.api.v1.ObjectReference", json_name: "resource"
      optional :permission, :string, 2, json_name: "permission"
      optional :permission_type, :enum, 3, "authzed.api.v1.CheckDebugTrace.PermissionType", json_name: "permissionType"
      optional :subject, :message, 4, "authzed.api.v1.SubjectReference", json_name: "subject"
      optional :result, :enum, 5, "authzed.api.v1.CheckDebugTrace.Permissionship", json_name: "result"
      oneof :resolution do
        optional :was_cached_result, :bool, 6, json_name: "wasCachedResult"
        optional :sub_problems, :message, 7, "authzed.api.v1.CheckDebugTrace.SubProblems", json_name: "subProblems"
      end
    end
    add_message "authzed.api.v1.CheckDebugTrace.SubProblems" do
      repeated :traces, :message, 1, "authzed.api.v1.CheckDebugTrace", json_name: "traces"
    end
    add_enum "authzed.api.v1.CheckDebugTrace.PermissionType" do
      value :PERMISSION_TYPE_UNSPECIFIED, 0
      value :PERMISSION_TYPE_RELATION, 1
      value :PERMISSION_TYPE_PERMISSION, 2
    end
    add_enum "authzed.api.v1.CheckDebugTrace.Permissionship" do
      value :PERMISSIONSHIP_UNSPECIFIED, 0
      value :PERMISSIONSHIP_NO_PERMISSION, 1
      value :PERMISSIONSHIP_HAS_PERMISSION, 2
    end
  end
end

module Authzed
  module Api
    module V1
      DebugInformation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.DebugInformation").msgclass
      CheckDebugTrace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckDebugTrace").msgclass
      CheckDebugTrace::SubProblems = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckDebugTrace.SubProblems").msgclass
      CheckDebugTrace::PermissionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckDebugTrace.PermissionType").enummodule
      CheckDebugTrace::Permissionship = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckDebugTrace.Permissionship").enummodule
    end
  end
end
