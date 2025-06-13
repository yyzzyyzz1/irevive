import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:battery_plus/battery_plus.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  final Battery _battery = Battery();
  String _deviceData = 'Loading...';
  String _batteryLevel = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadInfo();
  }

  Future<void> _loadInfo() async {
    var info = await _deviceInfo.deviceInfo;
    var battery = await _battery.batteryLevel;
    setState(() {
      _deviceData = info.data.toString();
      _batteryLevel = '$battery%';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Info')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Battery: $_batteryLevel'),
            const SizedBox(height: 12),
            Expanded(
              child: SingleChildScrollView(
                child: Text(_deviceData),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
