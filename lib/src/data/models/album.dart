/// albumId : 1
/// id : 1
/// title : "accusamus beatae ad facilis cum similique qui sunt"
/// url : "https://via.placeholder.com/600/92c952"
/// thumbnailUrl : "https://via.placeholder.com/150/92c952"

class Album {
  Album({
    required num albumId,
    required num id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) {
    _albumId = albumId;
    _id = id;
    _title = title;
    _url = url;
    _thumbnailUrl = thumbnailUrl;
  }

  Album.fromJson(dynamic json) {
    _albumId = json['albumId'];
    _id = json['id'];
    _title = json['title'];
    _url = json['url'];
    _thumbnailUrl = json['thumbnailUrl'];
  }
  num _albumId = 0;
  num _id = 0;
  String _title = '';
  String _url = '';
  String _thumbnailUrl = '';
  Album copyWith({
    required num albumId,
    required num id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) =>
      Album(
        albumId: albumId ?? _albumId,
        id: id ?? _id,
        title: title ?? _title,
        url: url ?? _url,
        thumbnailUrl: thumbnailUrl ?? _thumbnailUrl,
      );
  num get albumId => _albumId;
  num get id => _id;
  String get title => _title;
  String get url => _url;
  String get thumbnailUrl => _thumbnailUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['albumId'] = _albumId;
    map['id'] = _id;
    map['title'] = _title;
    map['url'] = _url;
    map['thumbnailUrl'] = _thumbnailUrl;
    return map;
  }
}
