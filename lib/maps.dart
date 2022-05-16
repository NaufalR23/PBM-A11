import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLokasi extends StatefulWidget {
  const MapLokasi({Key? key}) : super(key: key);

  @override
  _MapLokasiState createState() => _MapLokasiState();
}

class _MapLokasiState extends State<MapLokasi> {
  late final Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};
  final LatLng _posisiToko = LatLng(-7.025587, 112.743114);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("Toko"),
        position: _posisiToko,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  static CameraPosition get _LokasiToko => const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-7.025587, 112.743114),
      tilt: 59,
      zoom: 19);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lokasi Laundry"),
        backgroundColor: Color(0xFF197BFF),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(target: _posisiToko, zoom: 14.0),
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _setLokasiToko,
        label: const Text('Lokasi Laundry'),
        backgroundColor: Color(0xFF197BFF),
        icon: const Icon(Icons.store),
      ),
    );
  }

  Future<void> _setLokasiToko() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_LokasiToko));
  }
}
