# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: authzed/api/v1/permission_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'authzed/api/v1/core_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("authzed/api/v1/permission_service.proto", :syntax => :proto3) do
    add_message "authzed.api.v1.Consistency" do
      oneof :requirement do
        optional :minimize_latency, :bool, 1, json_name: "minimizeLatency"
        optional :at_least_as_fresh, :message, 2, "authzed.api.v1.ZedToken", json_name: "atLeastAsFresh"
        optional :at_exact_snapshot, :message, 3, "authzed.api.v1.ZedToken", json_name: "atExactSnapshot"
        optional :fully_consistent, :bool, 4, json_name: "fullyConsistent"
      end
    end
    add_message "authzed.api.v1.RelationshipFilter" do
      optional :resource_type, :string, 1, json_name: "resourceType"
      optional :optional_resource_id, :string, 2, json_name: "optionalResourceId"
      optional :optional_relation, :string, 3, json_name: "optionalRelation"
      optional :optional_subject_filter, :message, 4, "authzed.api.v1.SubjectFilter", json_name: "optionalSubjectFilter"
    end
    add_message "authzed.api.v1.SubjectFilter" do
      optional :subject_type, :string, 1, json_name: "subjectType"
      optional :optional_subject_id, :string, 2, json_name: "optionalSubjectId"
      optional :optional_relation, :message, 3, "authzed.api.v1.SubjectFilter.RelationFilter", json_name: "optionalRelation"
    end
    add_message "authzed.api.v1.SubjectFilter.RelationFilter" do
      optional :relation, :string, 1, json_name: "relation"
    end
    add_message "authzed.api.v1.ReadRelationshipsRequest" do
      optional :consistency, :message, 1, "authzed.api.v1.Consistency", json_name: "consistency"
      optional :relationship_filter, :message, 2, "authzed.api.v1.RelationshipFilter", json_name: "relationshipFilter"
    end
    add_message "authzed.api.v1.ReadRelationshipsResponse" do
      optional :read_at, :message, 1, "authzed.api.v1.ZedToken", json_name: "readAt"
      optional :relationship, :message, 2, "authzed.api.v1.Relationship", json_name: "relationship"
    end
    add_message "authzed.api.v1.Precondition" do
      optional :operation, :enum, 1, "authzed.api.v1.Precondition.Operation", json_name: "operation"
      optional :filter, :message, 2, "authzed.api.v1.RelationshipFilter", json_name: "filter"
    end
    add_enum "authzed.api.v1.Precondition.Operation" do
      value :OPERATION_UNSPECIFIED, 0
      value :OPERATION_MUST_NOT_MATCH, 1
      value :OPERATION_MUST_MATCH, 2
    end
    add_message "authzed.api.v1.WriteRelationshipsRequest" do
      repeated :updates, :message, 1, "authzed.api.v1.RelationshipUpdate", json_name: "updates"
      repeated :optional_preconditions, :message, 2, "authzed.api.v1.Precondition", json_name: "optionalPreconditions"
    end
    add_message "authzed.api.v1.WriteRelationshipsResponse" do
      optional :written_at, :message, 1, "authzed.api.v1.ZedToken", json_name: "writtenAt"
    end
    add_message "authzed.api.v1.DeleteRelationshipsRequest" do
      optional :relationship_filter, :message, 1, "authzed.api.v1.RelationshipFilter", json_name: "relationshipFilter"
      repeated :optional_preconditions, :message, 2, "authzed.api.v1.Precondition", json_name: "optionalPreconditions"
    end
    add_message "authzed.api.v1.DeleteRelationshipsResponse" do
      optional :deleted_at, :message, 1, "authzed.api.v1.ZedToken", json_name: "deletedAt"
    end
    add_message "authzed.api.v1.CheckPermissionRequest" do
      optional :consistency, :message, 1, "authzed.api.v1.Consistency", json_name: "consistency"
      optional :resource, :message, 2, "authzed.api.v1.ObjectReference", json_name: "resource"
      optional :permission, :string, 3, json_name: "permission"
      optional :subject, :message, 4, "authzed.api.v1.SubjectReference", json_name: "subject"
    end
    add_message "authzed.api.v1.CheckPermissionResponse" do
      optional :checked_at, :message, 1, "authzed.api.v1.ZedToken", json_name: "checkedAt"
      optional :permissionship, :enum, 2, "authzed.api.v1.CheckPermissionResponse.Permissionship", json_name: "permissionship"
    end
    add_enum "authzed.api.v1.CheckPermissionResponse.Permissionship" do
      value :PERMISSIONSHIP_UNSPECIFIED, 0
      value :PERMISSIONSHIP_NO_PERMISSION, 1
      value :PERMISSIONSHIP_HAS_PERMISSION, 2
    end
    add_message "authzed.api.v1.ExpandPermissionTreeRequest" do
      optional :consistency, :message, 1, "authzed.api.v1.Consistency", json_name: "consistency"
      optional :resource, :message, 2, "authzed.api.v1.ObjectReference", json_name: "resource"
      optional :permission, :string, 3, json_name: "permission"
    end
    add_message "authzed.api.v1.ExpandPermissionTreeResponse" do
      optional :expanded_at, :message, 1, "authzed.api.v1.ZedToken", json_name: "expandedAt"
      optional :tree_root, :message, 2, "authzed.api.v1.PermissionRelationshipTree", json_name: "treeRoot"
    end
    add_message "authzed.api.v1.LookupResourcesRequest" do
      optional :consistency, :message, 1, "authzed.api.v1.Consistency", json_name: "consistency"
      optional :resource_object_type, :string, 2, json_name: "resourceObjectType"
      optional :permission, :string, 3, json_name: "permission"
      optional :subject, :message, 4, "authzed.api.v1.SubjectReference", json_name: "subject"
    end
    add_message "authzed.api.v1.LookupResourcesResponse" do
      optional :looked_up_at, :message, 1, "authzed.api.v1.ZedToken", json_name: "lookedUpAt"
      optional :resource_object_id, :string, 2, json_name: "resourceObjectId"
    end
  end
end

module Authzed
  module Api
    module V1
      Consistency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.Consistency").msgclass
      RelationshipFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.RelationshipFilter").msgclass
      SubjectFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.SubjectFilter").msgclass
      SubjectFilter::RelationFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.SubjectFilter.RelationFilter").msgclass
      ReadRelationshipsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.ReadRelationshipsRequest").msgclass
      ReadRelationshipsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.ReadRelationshipsResponse").msgclass
      Precondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.Precondition").msgclass
      Precondition::Operation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.Precondition.Operation").enummodule
      WriteRelationshipsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.WriteRelationshipsRequest").msgclass
      WriteRelationshipsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.WriteRelationshipsResponse").msgclass
      DeleteRelationshipsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.DeleteRelationshipsRequest").msgclass
      DeleteRelationshipsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.DeleteRelationshipsResponse").msgclass
      CheckPermissionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckPermissionRequest").msgclass
      CheckPermissionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckPermissionResponse").msgclass
      CheckPermissionResponse::Permissionship = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.CheckPermissionResponse.Permissionship").enummodule
      ExpandPermissionTreeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.ExpandPermissionTreeRequest").msgclass
      ExpandPermissionTreeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.ExpandPermissionTreeResponse").msgclass
      LookupResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.LookupResourcesRequest").msgclass
      LookupResourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v1.LookupResourcesResponse").msgclass
    end
  end
end
