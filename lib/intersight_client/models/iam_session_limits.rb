=begin
#Cisco Intersight

#Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-10-20T11:22:53Z.

The version of the OpenAPI document: 1.0.9-4870
Contact: intersight@cisco.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1-SNAPSHOT

=end

require 'date'
require 'time'

module IntersightClient
  # The session related configuration limits.
  class IamSessionLimits < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The idle timeout interval for the web session in seconds. When a session is not refreshed for this duration, the session is marked as idle and removed. The minimum value is 300 seconds and the maximum value is 18000 seconds (5 hours). The system default value is 1800 seconds.
    attr_accessor :idle_time_out

    # The maximum number of sessions allowed in an account or permission. The default value is 128.
    attr_accessor :maximum_limit

    # The maximum number of sessions allowed per user. Default value is 32.
    attr_accessor :per_user_limit

    # The session expiry duration in seconds. The minimum value is 350 seconds and the maximum value is 31536000 seconds (1 year). The system default value is 57600 seconds.
    attr_accessor :session_time_out

    attr_accessor :account

    attr_accessor :permission

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'class_id' => :'ClassId',
        :'object_type' => :'ObjectType',
        :'idle_time_out' => :'IdleTimeOut',
        :'maximum_limit' => :'MaximumLimit',
        :'per_user_limit' => :'PerUserLimit',
        :'session_time_out' => :'SessionTimeOut',
        :'account' => :'Account',
        :'permission' => :'Permission'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'idle_time_out' => :'Integer',
        :'maximum_limit' => :'Integer',
        :'per_user_limit' => :'Integer',
        :'session_time_out' => :'Integer',
        :'account' => :'IamAccountRelationship',
        :'permission' => :'IamPermissionRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'IamSessionLimitsAllOf',
      :'MoBaseMo'
      ]
    end

    # discriminator's property name in OpenAPI v3
    def self.openapi_discriminator_name
      :'ClassId'
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::IamSessionLimits` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::IamSessionLimits`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'iam.SessionLimits'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'iam.SessionLimits'
      end

      if attributes.key?(:'idle_time_out')
        self.idle_time_out = attributes[:'idle_time_out']
      else
        self.idle_time_out = 1800
      end

      if attributes.key?(:'maximum_limit')
        self.maximum_limit = attributes[:'maximum_limit']
      else
        self.maximum_limit = 128
      end

      if attributes.key?(:'per_user_limit')
        self.per_user_limit = attributes[:'per_user_limit']
      else
        self.per_user_limit = 32
      end

      if attributes.key?(:'session_time_out')
        self.session_time_out = attributes[:'session_time_out']
      else
        self.session_time_out = 57600
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'permission')
        self.permission = attributes[:'permission']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @class_id.nil?
        invalid_properties.push('invalid value for "class_id", class_id cannot be nil.')
      end

      if @object_type.nil?
        invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
      end

      if !@idle_time_out.nil? && @idle_time_out > 18000
        invalid_properties.push('invalid value for "idle_time_out", must be smaller than or equal to 18000.')
      end

      if !@idle_time_out.nil? && @idle_time_out < 300
        invalid_properties.push('invalid value for "idle_time_out", must be greater than or equal to 300.')
      end

      if !@maximum_limit.nil? && @maximum_limit > 128
        invalid_properties.push('invalid value for "maximum_limit", must be smaller than or equal to 128.')
      end

      if !@maximum_limit.nil? && @maximum_limit < 1
        invalid_properties.push('invalid value for "maximum_limit", must be greater than or equal to 1.')
      end

      if !@per_user_limit.nil? && @per_user_limit > 32
        invalid_properties.push('invalid value for "per_user_limit", must be smaller than or equal to 32.')
      end

      if !@per_user_limit.nil? && @per_user_limit < 2
        invalid_properties.push('invalid value for "per_user_limit", must be greater than or equal to 2.')
      end

      if !@session_time_out.nil? && @session_time_out > 31536000
        invalid_properties.push('invalid value for "session_time_out", must be smaller than or equal to 31536000.')
      end

      if !@session_time_out.nil? && @session_time_out < 300
        invalid_properties.push('invalid value for "session_time_out", must be greater than or equal to 300.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["iam.SessionLimits"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["iam.SessionLimits"])
      return false unless object_type_validator.valid?(@object_type)
      return false if !@idle_time_out.nil? && @idle_time_out > 18000
      return false if !@idle_time_out.nil? && @idle_time_out < 300
      return false if !@maximum_limit.nil? && @maximum_limit > 128
      return false if !@maximum_limit.nil? && @maximum_limit < 1
      return false if !@per_user_limit.nil? && @per_user_limit > 32
      return false if !@per_user_limit.nil? && @per_user_limit < 2
      return false if !@session_time_out.nil? && @session_time_out > 31536000
      return false if !@session_time_out.nil? && @session_time_out < 300
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["iam.SessionLimits"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["iam.SessionLimits"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method with validation
    # @param [Object] idle_time_out Value to be assigned
    def idle_time_out=(idle_time_out)
      if !idle_time_out.nil? && idle_time_out > 18000
        fail ArgumentError, 'invalid value for "idle_time_out", must be smaller than or equal to 18000.'
      end

      if !idle_time_out.nil? && idle_time_out < 300
        fail ArgumentError, 'invalid value for "idle_time_out", must be greater than or equal to 300.'
      end

      @idle_time_out = idle_time_out
    end

    # Custom attribute writer method with validation
    # @param [Object] maximum_limit Value to be assigned
    def maximum_limit=(maximum_limit)
      if !maximum_limit.nil? && maximum_limit > 128
        fail ArgumentError, 'invalid value for "maximum_limit", must be smaller than or equal to 128.'
      end

      if !maximum_limit.nil? && maximum_limit < 1
        fail ArgumentError, 'invalid value for "maximum_limit", must be greater than or equal to 1.'
      end

      @maximum_limit = maximum_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] per_user_limit Value to be assigned
    def per_user_limit=(per_user_limit)
      if !per_user_limit.nil? && per_user_limit > 32
        fail ArgumentError, 'invalid value for "per_user_limit", must be smaller than or equal to 32.'
      end

      if !per_user_limit.nil? && per_user_limit < 2
        fail ArgumentError, 'invalid value for "per_user_limit", must be greater than or equal to 2.'
      end

      @per_user_limit = per_user_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] session_time_out Value to be assigned
    def session_time_out=(session_time_out)
      if !session_time_out.nil? && session_time_out > 31536000
        fail ArgumentError, 'invalid value for "session_time_out", must be smaller than or equal to 31536000.'
      end

      if !session_time_out.nil? && session_time_out < 300
        fail ArgumentError, 'invalid value for "session_time_out", must be greater than or equal to 300.'
      end

      @session_time_out = session_time_out
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          idle_time_out == o.idle_time_out &&
          maximum_limit == o.maximum_limit &&
          per_user_limit == o.per_user_limit &&
          session_time_out == o.session_time_out &&
          account == o.account &&
          permission == o.permission && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, idle_time_out, maximum_limit, per_user_limit, session_time_out, account, permission].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = IntersightClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
