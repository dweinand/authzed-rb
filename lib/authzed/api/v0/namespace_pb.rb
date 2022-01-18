# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: authzed/api/v0/namespace.proto

require 'google/protobuf'

require 'google/protobuf/any_pb'
require 'authzed/api/v0/core_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("authzed/api/v0/namespace.proto", :syntax => :proto3) do
    add_message "authzed.api.v0.Metadata" do
      repeated :metadata_message, :message, 1, "google.protobuf.Any", json_name: "metadataMessage"
    end
    add_message "authzed.api.v0.NamespaceDefinition" do
      optional :name, :string, 1, json_name: "name"
      repeated :relation, :message, 2, "authzed.api.v0.Relation", json_name: "relation"
      optional :metadata, :message, 3, "authzed.api.v0.Metadata", json_name: "metadata"
    end
    add_message "authzed.api.v0.Relation" do
      optional :name, :string, 1, json_name: "name"
      optional :userset_rewrite, :message, 2, "authzed.api.v0.UsersetRewrite", json_name: "usersetRewrite"
      optional :type_information, :message, 3, "authzed.api.v0.TypeInformation", json_name: "typeInformation"
      optional :metadata, :message, 4, "authzed.api.v0.Metadata", json_name: "metadata"
    end
    add_message "authzed.api.v0.TypeInformation" do
      repeated :allowed_direct_relations, :message, 1, "authzed.api.v0.AllowedRelation", json_name: "allowedDirectRelations"
    end
    add_message "authzed.api.v0.AllowedRelation" do
      optional :namespace, :string, 1, json_name: "namespace"
      oneof :relation_or_wildcard do
        optional :relation, :string, 3, json_name: "relation"
        optional :public_wildcard, :message, 4, "authzed.api.v0.AllowedRelation.PublicWildcard", json_name: "publicWildcard"
      end
    end
    add_message "authzed.api.v0.AllowedRelation.PublicWildcard" do
    end
    add_message "authzed.api.v0.UsersetRewrite" do
      oneof :rewrite_operation do
        optional :union, :message, 1, "authzed.api.v0.SetOperation", json_name: "union"
        optional :intersection, :message, 2, "authzed.api.v0.SetOperation", json_name: "intersection"
        optional :exclusion, :message, 3, "authzed.api.v0.SetOperation", json_name: "exclusion"
      end
    end
    add_message "authzed.api.v0.SetOperation" do
      repeated :child, :message, 1, "authzed.api.v0.SetOperation.Child", json_name: "child"
    end
    add_message "authzed.api.v0.SetOperation.Child" do
      oneof :child_type do
        optional :_this, :message, 1, "authzed.api.v0.SetOperation.Child.This", json_name: "This"
        optional :computed_userset, :message, 2, "authzed.api.v0.ComputedUserset", json_name: "computedUserset"
        optional :tuple_to_userset, :message, 3, "authzed.api.v0.TupleToUserset", json_name: "tupleToUserset"
        optional :userset_rewrite, :message, 4, "authzed.api.v0.UsersetRewrite", json_name: "usersetRewrite"
      end
    end
    add_message "authzed.api.v0.SetOperation.Child.This" do
    end
    add_message "authzed.api.v0.TupleToUserset" do
      optional :tupleset, :message, 1, "authzed.api.v0.TupleToUserset.Tupleset", json_name: "tupleset"
      optional :computed_userset, :message, 2, "authzed.api.v0.ComputedUserset", json_name: "computedUserset"
    end
    add_message "authzed.api.v0.TupleToUserset.Tupleset" do
      optional :relation, :string, 1, json_name: "relation"
    end
    add_message "authzed.api.v0.ComputedUserset" do
      optional :object, :enum, 1, "authzed.api.v0.ComputedUserset.Object", json_name: "object"
      optional :relation, :string, 2, json_name: "relation"
    end
    add_enum "authzed.api.v0.ComputedUserset.Object" do
      value :TUPLE_OBJECT, 0
      value :TUPLE_USERSET_OBJECT, 1
    end
  end
end

module Authzed
  module Api
    module V0
      Metadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.Metadata").msgclass
      NamespaceDefinition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.NamespaceDefinition").msgclass
      Relation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.Relation").msgclass
      TypeInformation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.TypeInformation").msgclass
      AllowedRelation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.AllowedRelation").msgclass
      AllowedRelation::PublicWildcard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.AllowedRelation.PublicWildcard").msgclass
      UsersetRewrite = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.UsersetRewrite").msgclass
      SetOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.SetOperation").msgclass
      SetOperation::Child = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.SetOperation.Child").msgclass
      SetOperation::Child::This = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.SetOperation.Child.This").msgclass
      TupleToUserset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.TupleToUserset").msgclass
      TupleToUserset::Tupleset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.TupleToUserset.Tupleset").msgclass
      ComputedUserset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ComputedUserset").msgclass
      ComputedUserset::Object = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ComputedUserset.Object").enummodule
    end
  end
end
