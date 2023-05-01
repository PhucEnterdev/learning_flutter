class Location {
  // Properties
  double _latitude; // _ : private
  double _longitude;
  
  // get value
  double get longitude => _longitude;
  double get latitude => _latitude;

  // set value
  set latitude (double value) => this._latitude = value;
  set longtitude (double value) => this._longitude = value;

  // contructor
  Location(this._latitude, this._longitude);

  @override
  String toString() {
    // TODO: implement toString
    return '($_latitude, $longitude)';
  }
}
