import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ML Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ML predicting'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController numberController = TextEditingController();
  var result = "results to be shown here";
  late var interpreter;

  @override
  initState() {
    loadModel();
  }

  loadModel() async {
    interpreter = await Interpreter.fromAsset('assets/linear.tflite');
  }

  performAction() {
    int x = int.parse(numberController.text);
    // For ex: if input tensor shape [1,5] and type is float32
    var input = [x];

// if output tensor shape [1,2] and type is float32
    var output = List.filled(1 * 1, 0).reshape([1, 1]);

// inference
    interpreter.run(input, output);

// print the output
    print(output);
    result = "Results= " + output[0][0].toString();
    setState(() {
      result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: numberController,
              decoration: InputDecoration(hintText: "Type Here..."),
            ),
            ElevatedButton(
              onPressed: () {
                performAction();
              },
              child: Text('Predict'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
