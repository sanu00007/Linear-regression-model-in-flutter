# ML Prediction App

This Flutter project demonstrates how to integrate a Machine Learning model, specifically trained using linear regression, into a mobile application for predictive purposes.
The model predicts the output by training on a set of input-output pairs.

->input values (x) are [-1.0, 0.0, 1.0, 2.0, 3.0, 4.0].

->output values (y) are [-3.0, -1.0, 1.0, 3.0, 5.0, 7.0]. 

The model learns from these pairs using linear regression to establish a relationship between the input and output values.

In linear regression, the model fits a line to the input-output pairs by finding the line equation that best describes the relationship between the input and output variables. Once trained, this line equation can be used to predict output values for new input values that the model hasn't seen before.

So, in this Flutter project, the integrated Machine Learning model, trained using linear regression, utilizes this learned relationship to predict output values based on user-provided input values.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have the following software installed on your system:

- Flutter SDK
- Android Studio or Xcode (for iOS development)
- Text editor or IDE of your choice (e.g., Visual Studio Code)

### Installation

1. Clone the repository to your local machine:
     ```
      git clone https://github.com/sanu00007/Linear-regression-model-in-flutter.git
     ```
2. Navigate to the project directory:
   
  ```
     cd Linear-regression-model-in-flutter
  ```
3. Run the following command to get the dependencies:

    ```
     flutter pub get
   ```

4. ### Running the App

Connect a device/emulator and run the app using the following command:
```
flutter run
```

## Usage

1. Enter a numerical value in the provided text field.
2. Tap on the "Predict" button to calculate the output using the integrated Machine Learning model.
3. The result will be displayed below the button, showing the predicted value.

## Built With

- [Flutter](https://flutter.dev/) - The UI framework used
- [TFLite Flutter Plugin](https://pub.dev/packages/tflite_flutter) - For integrating TensorFlow Lite models into Flutter apps

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the project
2. Create your feature branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/YourFeature`)
5. Open a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspiration: This project was inspired by the need to integrate Machine Learning models into mobile applications seamlessly.
- TensorFlow Lite: Special thanks to the TensorFlow team for providing tools and plugins to make ML integration in mobile apps easier.


