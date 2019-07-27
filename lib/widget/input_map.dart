import 'package:flutter/material.dart';
import '../logic/virtual_map.dart';
import './map_widget.dart';
import '../ui/mapGame/uploadMap.dart';

class InputMap extends MapWidget {

  @override
  _InputMapState createState() => _InputMapState();

  VirtualMap virtualMap;

  InputMap({Key key, this.virtualMap})
    : super(key: key);
}

class _InputMapState extends MapWidgetState {

  @override
  initState() {
    super.initState();
  }

  void openPopup() {
    Navigator.of(context).pushNamed('/screenSetGameLocation');
  }

  void _handleCellTap(int x, int y) {
    if(this.mounted) {
      setState(() {
        print("Tap on cell ($x, $y)");
        widget.virtualMap.addAnchor(x, y, 'toto');
        openPopup();
      });
    }
  }

  void _handleCellDoubleTap(int x, int y) {
    if(this.mounted) {
      setState(() {
        print("Double tap on cell ($x, $y)");
        widget.virtualMap.removeAnchor(x, y);
      });
    }
  }

  @override
  Widget buildCellItem(int row, int column) {
    Object locatedObject = this.widget.virtualMap.getObject(column, row);
    Widget child = null;
    if(locatedObject is BeaconAnchor) {
      child = buildBeaconAnchorsMarker();
    }
    return buildCellButton(row, column, child);
  }

  Widget buildCellButton(row, column, child) {
    return GestureDetector(
      onTap: () => _handleCellTap(column, row),
      onDoubleTap: () => _handleCellDoubleTap(column, row),
      child: child
    ); 
  }

  Widget buildCurrentPositionMarker() {
    return buildCircle(5, Colors.red);
  }

  Widget buildBeaconAnchorsMarker() {
    return buildCircle(5, Colors.black);
  }

  @override
  void dispose() {
    super.dispose();
  }

}