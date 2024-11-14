// lib/pages/settings_page.dart
import 'package:flutter/material.dart';
import 'package:chatorrent/model/server_config.dart';
import 'package:chatorrent/services/preferences.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();

  // Signal Server Controllers
  late TextEditingController _signalHostController;
  late TextEditingController _signalPortController;
  bool _signalUseSsl = false;

  // Chat Server Controllers
  late TextEditingController _chatHostController;
  late TextEditingController _chatPortController;
  bool _chatUseSsl = false;

  // ICE Servers
  List<IceServer> _iceServers = [];

  @override
  void initState() {
    super.initState();
    _initControllers();
    _loadSettings();
  }

  void _initControllers() {
    _signalHostController = TextEditingController();
    _signalPortController = TextEditingController();
    _chatHostController = TextEditingController();
    _chatPortController = TextEditingController();
  }

  Future<void> _loadSettings() async {
    final config = SettingsManager.getServerConfig();
    if (config != null) {
      setState(() {
        // Signal Server
        _signalHostController.text = config.signalServer.host;
        _signalPortController.text = config.signalServer.port;
        _signalUseSsl = config.signalServer.useSsl;

        // Chat Server
        _chatHostController.text = config.chatServer.host;
        _chatPortController.text = config.chatServer.port;
        _chatUseSsl = config.chatServer.useSsl;

        // ICE Servers
        _iceServers = config.webrtc.iceServers;
      });
    }
  }

  Future<void> _saveSettings() async {
    if (!_formKey.currentState!.validate()) return;

    final config = ServerConfig(
      signalServer: ServerEndpoint(
        host: _signalHostController.text,
        port: _signalPortController.text,
        useSsl: _signalUseSsl,
      ),
      chatServer: ServerEndpoint(
        host: _chatHostController.text,
        port: _chatPortController.text,
        useSsl: _chatUseSsl,
      ),
      webrtc: WebRTCConfig(
        iceServers: _iceServers,
      ),
    );

    await SettingsManager.setServerConfig(config);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Settings saved')),
      );
    }
  }

  Widget _buildIceServersList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'ICE Servers',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _iceServers.length,
          itemBuilder: (context, index) {
            final server = _iceServers[index];
            return Card(
              child: ListTile(
                title: Text(server.urls.join(', ')),
                subtitle: server.username != null
                    ? Text('Username: ${server.username}')
                    : null,
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      _iceServers.removeAt(index);
                    });
                  },
                ),
              ),
            );
          },
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add ICE Server'),
          onPressed: _showAddIceServerDialog,
        ),
      ],
    );
  }

  Future<void> _showAddIceServerDialog() async {
    final urlController = TextEditingController();
    final usernameController = TextEditingController();
    final credentialController = TextEditingController();

    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add ICE Server'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: urlController,
              decoration: const InputDecoration(
                labelText: 'URL',
                hintText: 'stun:stun.example.com:19302',
              ),
            ),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username (optional)'),
            ),
            TextField(
              controller: credentialController,
              decoration: const InputDecoration(labelText: 'Credential (optional)'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (urlController.text.isNotEmpty) {
                setState(() {
                  _iceServers.add(IceServer(
                    urls: [urlController.text],
                    username: usernameController.text.isEmpty
                        ? null
                        : usernameController.text,
                    credential: credentialController.text.isEmpty
                        ? null
                        : credentialController.text,
                  ));
                });
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Server Settings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveSettings,
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Signal Server Section
            const Text(
              'Signal Server',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _signalHostController,
              decoration: const InputDecoration(
                labelText: 'Host',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a host';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _signalPortController,
              decoration: const InputDecoration(
                labelText: 'Port',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a port';
                }
                return null;
              },
            ),
            SwitchListTile(
              title: const Text('Use SSL'),
              value: _signalUseSsl,
              onChanged: (value) {
                setState(() {
                  _signalUseSsl = value;
                });
              },
            ),

            const SizedBox(height: 32),

            // Chat Server Section
            const Text(
              'Chat Server',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _chatHostController,
              decoration: const InputDecoration(
                labelText: 'Host',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a host';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _chatPortController,
              decoration: const InputDecoration(
                labelText: 'Port',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a port';
                }
                return null;
              },
            ),
            SwitchListTile(
              title: const Text('Use SSL'),
              value: _chatUseSsl,
              onChanged: (value) {
                setState(() {
                  _chatUseSsl = value;
                });
              },
            ),

            const SizedBox(height: 32),

            // ICE Servers Section
            _buildIceServersList(),

            const SizedBox(height: 32),

            // Reset Button
            ElevatedButton(
              onPressed: () async {
                final confirm = await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Reset Settings'),
                    content: const Text('Are you sure you want to reset all server settings?'),
                    actions: [
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () => Navigator.pop(context, false),
                      ),
                      TextButton(
                        child: const Text('Reset'),
                        onPressed: () => Navigator.pop(context, true),
                      ),
                    ],
                  ),
                );

                if (confirm == true) {
                  await SettingsManager.setServerConfig(null);
                  _initControllers();
                  _loadSettings();
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Settings reset to defaults')),
                    );
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('Reset to Defaults'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _signalHostController.dispose();
    _signalPortController.dispose();
    _chatHostController.dispose();
    _chatPortController.dispose();
    super.dispose();
  }
}