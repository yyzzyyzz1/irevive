import 'package:flutter/material.dart';

class ErrorExplanationScreen extends StatelessWidget {
  const ErrorExplanationScreen({super.key});

  Map<String, String> get _errors => const {
        'battery_overheat': 'Устройство перегревается из-за чрезмерной нагрузки или поврежденной батареи.',
        'slow_performance': 'Часто связано с нехваткой памяти или большим количеством запущенных приложений.',
        'wifi_drops': 'Перепроверьте настройки роутера и обновите ПО устройства.',
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Частые ошибки')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: _errors.entries
            .map(
              (e) => ListTile(
                title: Text(e.key),
                subtitle: Text(e.value),
              ),
            )
            .toList(),
      ),
    );
  }
}
