import 'package:motivation_app/models/models.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final ModelsData data;
  const DetailsScreen({Key? key, required this.data}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20), // Add padding around the content
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  widget.data.title,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 2 / 3, // Adjust the aspect ratio as needed
                child: Hero(
                  tag: widget.data.imageName,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(widget.data.imageName),
                        fit: BoxFit
                            .cover, // Use BoxFit.cover to maintain aspect ratio
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Use Alignment to center the price text
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Said: ${widget.data.description}",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
