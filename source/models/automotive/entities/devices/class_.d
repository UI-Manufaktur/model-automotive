module models.automotive.entities.devices.class_;

@safe:
import models.automotive;

// Family of vehicles or devices for the specific brand provided by the manufacturer.
class DDeviceClassEntity : DOOPEntity {
  mixin(EntityThis!("DeviceClassEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, 
        ModifiedOnBehalfByAttribute, 
        OwnerIdAttribute, 
        StateCodeAttribute, 
        StatusCodeAttribute 
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "entityImage": StringAttribute, //
        "code": StringAttribute, // Unique number for the device class."]),
        "deviceBrandId": UUIDAttribute, // Brand that produces the device."]),
        "deviceClassId": UUIDAttribute, // Unique identifier for entity instances"]),
        "deviceTypeId": UUIDAttribute, // Type of device class."]),
      ])
      .registerPath("automotive_deviceclasses");
  }
}
mixin(EntityCalls!("DeviceClassEntity"));

version(test_library) {
  unittest {
    assert(DeviceClassEntity);
  
    auto entity = DeviceClassEntity;
  }
}