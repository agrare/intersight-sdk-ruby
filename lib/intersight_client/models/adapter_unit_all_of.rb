=begin
#Cisco Intersight

#Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-10-20T11:22:53Z.

The version of the OpenAPI document: 1.0.9-4870
Contact: intersight@cisco.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'date'
require 'time'

module IntersightClient
  # Definition of the list of properties defined in 'adapter.Unit', excluding properties defined in parent classes.
  class AdapterUnitAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Unique Identifier of an adapter Unit within a Rack Interface.
    attr_accessor :adapter_id

    # Original Base Mac address of an adapter unit.
    attr_accessor :base_mac_address

    # Connectivity Status of adapter - A or B or AB.
    attr_accessor :connection_status

    # Cisco Integrated adapter or other type.
    attr_accessor :integrated

    # Operational state of an adapter unit.
    attr_accessor :oper_state

    # Operability state of an adapter unit.
    attr_accessor :operability

    # Part number of an adapter unit.
    attr_accessor :part_number

    # PCIe slot of the adapter in the server.
    attr_accessor :pci_slot

    # Power state of an adapter unit.
    attr_accessor :power

    # Thermal state of an adapter unit.
    attr_accessor :thermal

    # Virtual Id of the adapter in the server.
    attr_accessor :vid

    attr_accessor :adapter_unit_expander

    attr_accessor :compute_blade

    attr_accessor :compute_rack_unit

    attr_accessor :controller

    # An array of relationships to adapterExtEthInterface resources.
    attr_accessor :ext_eth_ifs

    # An array of relationships to adapterHostEthInterface resources.
    attr_accessor :host_eth_ifs

    # An array of relationships to adapterHostFcInterface resources.
    attr_accessor :host_fc_ifs

    # An array of relationships to adapterHostIscsiInterface resources.
    attr_accessor :host_iscsi_ifs

    attr_accessor :inventory_device_info

    attr_accessor :registered_device

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
        :'adapter_id' => :'AdapterId',
        :'base_mac_address' => :'BaseMacAddress',
        :'connection_status' => :'ConnectionStatus',
        :'integrated' => :'Integrated',
        :'oper_state' => :'OperState',
        :'operability' => :'Operability',
        :'part_number' => :'PartNumber',
        :'pci_slot' => :'PciSlot',
        :'power' => :'Power',
        :'thermal' => :'Thermal',
        :'vid' => :'Vid',
        :'adapter_unit_expander' => :'AdapterUnitExpander',
        :'compute_blade' => :'ComputeBlade',
        :'compute_rack_unit' => :'ComputeRackUnit',
        :'controller' => :'Controller',
        :'ext_eth_ifs' => :'ExtEthIfs',
        :'host_eth_ifs' => :'HostEthIfs',
        :'host_fc_ifs' => :'HostFcIfs',
        :'host_iscsi_ifs' => :'HostIscsiIfs',
        :'inventory_device_info' => :'InventoryDeviceInfo',
        :'registered_device' => :'RegisteredDevice'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Returns the key-value map of all the JSON attributes this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'adapter_id' => :'String',
        :'base_mac_address' => :'String',
        :'connection_status' => :'String',
        :'integrated' => :'String',
        :'oper_state' => :'String',
        :'operability' => :'String',
        :'part_number' => :'String',
        :'pci_slot' => :'String',
        :'power' => :'String',
        :'thermal' => :'String',
        :'vid' => :'String',
        :'adapter_unit_expander' => :'AdapterUnitExpanderRelationship',
        :'compute_blade' => :'ComputeBladeRelationship',
        :'compute_rack_unit' => :'ComputeRackUnitRelationship',
        :'controller' => :'ManagementControllerRelationship',
        :'ext_eth_ifs' => :'Array<AdapterExtEthInterfaceRelationship>',
        :'host_eth_ifs' => :'Array<AdapterHostEthInterfaceRelationship>',
        :'host_fc_ifs' => :'Array<AdapterHostFcInterfaceRelationship>',
        :'host_iscsi_ifs' => :'Array<AdapterHostIscsiInterfaceRelationship>',
        :'inventory_device_info' => :'InventoryDeviceInfoRelationship',
        :'registered_device' => :'AssetDeviceRegistrationRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ext_eth_ifs',
        :'host_eth_ifs',
        :'host_fc_ifs',
        :'host_iscsi_ifs',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::AdapterUnitAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `#{self.class.name}`. Please check the name to make sure it's valid. List of attributes: " + self.class.acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'adapter.Unit'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'adapter.Unit'
      end

      if attributes.key?(:'adapter_id')
        self.adapter_id = attributes[:'adapter_id']
      end

      if attributes.key?(:'base_mac_address')
        self.base_mac_address = attributes[:'base_mac_address']
      end

      if attributes.key?(:'connection_status')
        self.connection_status = attributes[:'connection_status']
      end

      if attributes.key?(:'integrated')
        self.integrated = attributes[:'integrated']
      end

      if attributes.key?(:'oper_state')
        self.oper_state = attributes[:'oper_state']
      end

      if attributes.key?(:'operability')
        self.operability = attributes[:'operability']
      end

      if attributes.key?(:'part_number')
        self.part_number = attributes[:'part_number']
      end

      if attributes.key?(:'pci_slot')
        self.pci_slot = attributes[:'pci_slot']
      end

      if attributes.key?(:'power')
        self.power = attributes[:'power']
      end

      if attributes.key?(:'thermal')
        self.thermal = attributes[:'thermal']
      end

      if attributes.key?(:'vid')
        self.vid = attributes[:'vid']
      end

      if attributes.key?(:'adapter_unit_expander')
        self.adapter_unit_expander = attributes[:'adapter_unit_expander']
      end

      if attributes.key?(:'compute_blade')
        self.compute_blade = attributes[:'compute_blade']
      end

      if attributes.key?(:'compute_rack_unit')
        self.compute_rack_unit = attributes[:'compute_rack_unit']
      end

      if attributes.key?(:'controller')
        self.controller = attributes[:'controller']
      end

      if attributes.key?(:'ext_eth_ifs')
        if (value = attributes[:'ext_eth_ifs']).is_a?(Array)
          self.ext_eth_ifs = value
        end
      end

      if attributes.key?(:'host_eth_ifs')
        if (value = attributes[:'host_eth_ifs']).is_a?(Array)
          self.host_eth_ifs = value
        end
      end

      if attributes.key?(:'host_fc_ifs')
        if (value = attributes[:'host_fc_ifs']).is_a?(Array)
          self.host_fc_ifs = value
        end
      end

      if attributes.key?(:'host_iscsi_ifs')
        if (value = attributes[:'host_iscsi_ifs']).is_a?(Array)
          self.host_iscsi_ifs = value
        end
      end

      if attributes.key?(:'inventory_device_info')
        self.inventory_device_info = attributes[:'inventory_device_info']
      end

      if attributes.key?(:'registered_device')
        self.registered_device = attributes[:'registered_device']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["adapter.Unit"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["adapter.Unit"])
      return false unless object_type_validator.valid?(@object_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["adapter.Unit"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["adapter.Unit"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          adapter_id == o.adapter_id &&
          base_mac_address == o.base_mac_address &&
          connection_status == o.connection_status &&
          integrated == o.integrated &&
          oper_state == o.oper_state &&
          operability == o.operability &&
          part_number == o.part_number &&
          pci_slot == o.pci_slot &&
          power == o.power &&
          thermal == o.thermal &&
          vid == o.vid &&
          adapter_unit_expander == o.adapter_unit_expander &&
          compute_blade == o.compute_blade &&
          compute_rack_unit == o.compute_rack_unit &&
          controller == o.controller &&
          ext_eth_ifs == o.ext_eth_ifs &&
          host_eth_ifs == o.host_eth_ifs &&
          host_fc_ifs == o.host_fc_ifs &&
          host_iscsi_ifs == o.host_iscsi_ifs &&
          inventory_device_info == o.inventory_device_info &&
          registered_device == o.registered_device
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, adapter_id, base_mac_address, connection_status, integrated, oper_state, operability, part_number, pci_slot, power, thermal, vid, adapter_unit_expander, compute_blade, compute_rack_unit, controller, ext_eth_ifs, host_eth_ifs, host_fc_ifs, host_iscsi_ifs, inventory_device_info, registered_device].hash
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
      AdapterUnitAllOf.openapi_types.each_pair do |key, type|
        if attributes[AdapterUnitAllOf.attribute_map[key]].nil? && AdapterUnitAllOf.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[AdapterUnitAllOf.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[AdapterUnitAllOf.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[AdapterUnitAllOf.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[AdapterUnitAllOf.attribute_map[key]]))
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
      AdapterUnitAllOf.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = AdapterUnitAllOf.openapi_nullable.include?(attr)
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
