import AppIntents
import CoreSpotlight

enum EntityDonator {
    static func donateLandmarks(modelData: ModelData) async throws {
        let landmarkEntities = await modelData.landmarkEntities
        try await CSSearchableIndex.default().indexAppEntities(landmarkEntities)
    }
}
