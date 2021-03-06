module models.automotive.entities.deals.file;

@safe:
import models.automotive;

// Container for deals relating to a given opportunity.
class DATMDealFile : DOOPEntity {
  mixin(EntityThis!("ATMDealFile"));
  
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
        "dealFileId": UUIDAttribute, // Unique identifier for entity instances"]),
        "opportunityId": UUIDAttribute, // Parent opportunity of the deal."]),
      ])
      .registerPath("automotive_deals.files");
  }
}
mixin(EntityCalls!("ATMDealFile"));

version(test_library) {
  unittest {
    assert(ATMDealFile);

    auto entity = ATMDealFile;
  }
}