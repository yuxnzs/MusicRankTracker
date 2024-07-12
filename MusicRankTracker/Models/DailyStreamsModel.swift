import Foundation

struct DailyStreams: Codable, Identifiable {
    var id = UUID()
    let artistInfo: Artist
    let date: String
    let streamData: [StreamData]
    
    enum CodingKeys: String, CodingKey {
        case artistInfo, date, streamData
    }
}

struct StreamData: Codable, Identifiable {
    let musicName: String
    let albumName: String?
    let totalTracks: Int?
    let trackNumber: Int?
    let duration: String
    let releaseDate: String
    let imageUrl: URL?
    let totalStreams: Int
    let dailyStreams: Int
    let popularity: Int
    let spotifyUrl: URL?
    let musicId: String
    let isCollaboration: Bool
    
    // Identifiable id using musicId
    var id: String { musicId }
    
    enum CodingKeys: String, CodingKey {
        case musicName, albumName, totalTracks, trackNumber, duration, releaseDate, imageUrl, totalStreams, dailyStreams, popularity, spotifyUrl, musicId, isCollaboration
    }
}
