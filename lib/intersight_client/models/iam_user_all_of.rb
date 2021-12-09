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
  # Definition of the list of properties defined in 'iam.User', excluding properties defined in parent classes.
  class IamUserAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # IP address from which the user last logged in to Intersight.
    attr_accessor :client_ip_address

    # Email of the user. Users are added to Intersight using the email configured in the IdP.
    attr_accessor :email

    # First name of the user. This field is populated from the IdP attributes received after authentication.
    attr_accessor :first_name

    # Last successful login time for user.
    attr_accessor :last_login_time

    # Last name of the user. This field is populated from the IdP attributes received after authentication.
    attr_accessor :last_name

    # Last role modification time for user.
    attr_accessor :last_role_modified_time

    # Name as configured in the IdP.
    attr_accessor :name

    # UserID or email as configured in the IdP.
    attr_accessor :user_id_or_email

    # Type of the User. If a user is added manually by specifying the email address, or has logged in using groups, based on the IdP attributes received during authentication. If added manually, the user type will be static, otherwise dynamic.
    attr_accessor :user_type

    # Unique id of the user used by the identity provider to store the user.
    attr_accessor :user_unique_identifier

    # An array of relationships to iamApiKey resources.
    attr_accessor :api_keys

    # An array of relationships to iamAppRegistration resources.
    attr_accessor :app_registrations

    attr_accessor :idp

    attr_accessor :idpreference

    attr_accessor :local_user_password

    # An array of relationships to iamOAuthToken resources.
    attr_accessor :oauth_tokens

    # An array of relationships to iamPermission resources.
    attr_accessor :permissions

    # An array of relationships to iamSession resources.
    attr_accessor :sessions

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
        :'client_ip_address' => :'ClientIpAddress',
        :'email' => :'Email',
        :'first_name' => :'FirstName',
        :'last_login_time' => :'LastLoginTime',
        :'last_name' => :'LastName',
        :'last_role_modified_time' => :'LastRoleModifiedTime',
        :'name' => :'Name',
        :'user_id_or_email' => :'UserIdOrEmail',
        :'user_type' => :'UserType',
        :'user_unique_identifier' => :'UserUniqueIdentifier',
        :'api_keys' => :'ApiKeys',
        :'app_registrations' => :'AppRegistrations',
        :'idp' => :'Idp',
        :'idpreference' => :'Idpreference',
        :'local_user_password' => :'LocalUserPassword',
        :'oauth_tokens' => :'OauthTokens',
        :'permissions' => :'Permissions',
        :'sessions' => :'Sessions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'client_ip_address' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_login_time' => :'Time',
        :'last_name' => :'String',
        :'last_role_modified_time' => :'Time',
        :'name' => :'String',
        :'user_id_or_email' => :'String',
        :'user_type' => :'String',
        :'user_unique_identifier' => :'String',
        :'api_keys' => :'Array<IamApiKeyRelationship>',
        :'app_registrations' => :'Array<IamAppRegistrationRelationship>',
        :'idp' => :'IamIdpRelationship',
        :'idpreference' => :'IamIdpReferenceRelationship',
        :'local_user_password' => :'IamLocalUserPasswordRelationship',
        :'oauth_tokens' => :'Array<IamOAuthTokenRelationship>',
        :'permissions' => :'Array<IamPermissionRelationship>',
        :'sessions' => :'Array<IamSessionRelationship>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'api_keys',
        :'app_registrations',
        :'oauth_tokens',
        :'permissions',
        :'sessions'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::IamUserAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::IamUserAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'iam.User'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'iam.User'
      end

      if attributes.key?(:'client_ip_address')
        self.client_ip_address = attributes[:'client_ip_address']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_login_time')
        self.last_login_time = attributes[:'last_login_time']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'last_role_modified_time')
        self.last_role_modified_time = attributes[:'last_role_modified_time']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'user_id_or_email')
        self.user_id_or_email = attributes[:'user_id_or_email']
      end

      if attributes.key?(:'user_type')
        self.user_type = attributes[:'user_type']
      end

      if attributes.key?(:'user_unique_identifier')
        self.user_unique_identifier = attributes[:'user_unique_identifier']
      end

      if attributes.key?(:'api_keys')
        if (value = attributes[:'api_keys']).is_a?(Array)
          self.api_keys = value
        end
      end

      if attributes.key?(:'app_registrations')
        if (value = attributes[:'app_registrations']).is_a?(Array)
          self.app_registrations = value
        end
      end

      if attributes.key?(:'idp')
        self.idp = attributes[:'idp']
      end

      if attributes.key?(:'idpreference')
        self.idpreference = attributes[:'idpreference']
      end

      if attributes.key?(:'local_user_password')
        self.local_user_password = attributes[:'local_user_password']
      end

      if attributes.key?(:'oauth_tokens')
        if (value = attributes[:'oauth_tokens']).is_a?(Array)
          self.oauth_tokens = value
        end
      end

      if attributes.key?(:'permissions')
        if (value = attributes[:'permissions']).is_a?(Array)
          self.permissions = value
        end
      end

      if attributes.key?(:'sessions')
        if (value = attributes[:'sessions']).is_a?(Array)
          self.sessions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @class_id.nil?
        invalid_properties.push('invalid value for "class_id", class_id cannot be nil.')
      end

      if @object_type.nil?
        invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
      end

      pattern = Regexp.new(/^$|^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?)*$/)
      if !@email.nil? && @email !~ pattern
        invalid_properties.push("invalid value for \"email\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["iam.User"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["iam.User"])
      return false unless object_type_validator.valid?(@object_type)
      return false if !@email.nil? && @email !~ Regexp.new(/^$|^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?)*$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["iam.User"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["iam.User"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      pattern = Regexp.new(/^$|^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?)*$/)
      if !email.nil? && email !~ pattern
        fail ArgumentError, "invalid value for \"email\", must conform to the pattern #{pattern}."
      end

      @email = email
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          client_ip_address == o.client_ip_address &&
          email == o.email &&
          first_name == o.first_name &&
          last_login_time == o.last_login_time &&
          last_name == o.last_name &&
          last_role_modified_time == o.last_role_modified_time &&
          name == o.name &&
          user_id_or_email == o.user_id_or_email &&
          user_type == o.user_type &&
          user_unique_identifier == o.user_unique_identifier &&
          api_keys == o.api_keys &&
          app_registrations == o.app_registrations &&
          idp == o.idp &&
          idpreference == o.idpreference &&
          local_user_password == o.local_user_password &&
          oauth_tokens == o.oauth_tokens &&
          permissions == o.permissions &&
          sessions == o.sessions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, client_ip_address, email, first_name, last_login_time, last_name, last_role_modified_time, name, user_id_or_email, user_type, user_unique_identifier, api_keys, app_registrations, idp, idpreference, local_user_password, oauth_tokens, permissions, sessions].hash
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
      hash = {}
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
