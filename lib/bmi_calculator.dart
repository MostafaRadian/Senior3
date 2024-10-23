import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  int selectedGender = 0;
  double height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Color(0xFF111328),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 1; // Male selected
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedGender == 1
                              ? Colors.blue
                              : Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 80, color: Colors.white),
                            SizedBox(height: 15),
                            Text('Male',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 2; // Female selected
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedGender == 2
                              ? Colors.pink
                              : Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 80, color: Colors.white),
                            SizedBox(height: 15),
                            Text('Female',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Height Slider
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(' cm', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 100,
                      max: 220,
                      activeColor: Colors.pink,
                      inactiveColor: Colors.grey,
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Weight and Age Counters
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weight--',
                                backgroundColor: Colors.grey[600],
                                child: const Icon(Icons.remove,
                                    color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                              FloatingActionButton(
                                backgroundColor: Colors.grey[600],
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.grey[600],
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                              FloatingActionButton(
                                backgroundColor: Colors.grey[600],
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Calculate Button
            GestureDetector(
              onTap: () {
                double bmi = weight / (height / 100 * height / 100);
                String resultText;
                if (bmi < 18.5) {
                  resultText = 'Underweight';
                } else if (bmi >= 18.5 && bmi < 24.9) {
                  resultText = 'Normal';
                } else if (bmi >= 25 && bmi < 29.9) {
                  resultText = 'Overweight';
                } else {
                  resultText = 'Obese';
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResultPage(
                      bmi: bmi,
                      resultText: resultText,
                      interpretation:
                          'You have a ${resultText.toLowerCase()} body weight.',
                    ),
                  ),
                );
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
