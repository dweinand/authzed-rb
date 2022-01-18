# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: authzed/api/v1alpha1/watchresources_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'authzed/api/v1/core_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("authzed/api/v1alpha1/watchresources_service.proto", :syntax => :proto3) do
    add_message "authzed.api.v1alpha1.WatchResourcesRequest" do
      optional :resource_object_type, :string, 1, json_name: "resourceObjectType"
      optional :permission, :string, 2, json_name: "permission"
      optional :subject_object_type, :string, 3, json_name: "subjectObjectType"
      optional :optional_subject_relation, :string, 4, json_name: "optionalSubjectRelation"
      optional :optional_start_cursor, :message, 5, "authzed.api.v1.ZedToken", json_name: "optionalStartCursor"
    end
    add_message "authzed.api.v1alpha1.PermissionUpdate" do
      optional :subject, :message, 1, "authzed.api.v1.SubjectReference", json_name: "subject"
      optional :resource, :message, 2, "authzed.api.v1.ObjectReference", json_name: "resource"
      optional :relation, :string, 3, json_name: "relation"
      optional :updated_permission, :enum, 4, "authzed.api.v1alpha1.PermissionUpdate.Permissionship", json_name: "updatedPermission"
    end
    add_enum "authzed.api.v1alpha1.PermissionUpdate.Permissionship" do
      value :PERMISSIONSHIP_UNSPECIFIED, 0
      value :PERMISSIONSHIP_NO_PERMISSION, 1
      value :PERMISSIONSHIP_HAS_PERMISSION, 2
    end
    add_message "authzed.api.v1alpha1.WatchResourcesResponse" do
      repeated :updates, :message, 1, "authzed.api.v1alpha1.PermissionUpdate", json_name: "updates"
      optional :changes_through, :message, 2, "authzed.api.v1.ZedToken", json_name: "changesThrough"
    end
  end
end

module Authzed
  module Api
    module V1alpha1
      WatchResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1alpha1.WatchResourcesRequest").msgclass
      PermissionUpdate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1alpha1.PermissionUpdate").msgclass
      PermissionUpdate::Permissionship = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1alpha1.PermissionUpdate.Permissionship").enummodule
      WatchResourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1alpha1.WatchResourcesResponse").msgclass
    end
  end
end
