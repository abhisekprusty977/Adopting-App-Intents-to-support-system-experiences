import AppIntents
import GeoToolbox

struct SettingsEntity: UniqueAppEntity {

    static let typeDisplayRepresentation = TypeDisplayRepresentation(name: "Settings")

    static let defaultQuery = UniqueAppEntityProvider<Self>()

    @ComputedProperty
    var defaultPlace: PlaceDescriptor {
        UserDefaults.standard.defaultPlace
    }
}

extension UserDefaults {
    var defaultPlace: PlaceDescriptor {
        .init(
            representations: [
                .address("1 Apple Park Way, Cupertino, CA")
            ],
            commonName: "Apple Park"
        )
    }
}
