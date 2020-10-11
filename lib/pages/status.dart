import 'package:flutter/material.dart';
import 'package:hello_word/services/socket_service.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Server Status: ${socketService.serverStatus}')],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.textsms),
          onPressed: () {
            socketService.socket.emit(
                'nuevo-mensaje', {'nombre:Brayan, mensaje:Hola desde flutter'});
          }),
    );
  }
}
