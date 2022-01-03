import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class SurpriseScreen extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2e282a),
      alignment: Alignment.center,
      child: SafeArea(
        child: SimpleFoldingCell.create(
          key: _foldingCellKey,
          frontWidget: _buildFrontWidget(),
          innerWidget: _buildInnerWidget(),
          cellSize: Size(MediaQuery.of(context).size.width, 140),
          padding: const EdgeInsets.all(15),
          animationDuration: const Duration(milliseconds: 300),
          borderRadius: 10,
        ),
      ),
    );
  }

  Widget _buildFrontWidget() {
    return Container(
      color: const Color(0xFFffcd3c),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "SURPRISE",
              style: GoogleFonts.aldrich(
                color: const Color(0xFF2e282a),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 150,
            bottom: 7,
            child: TextButton(
              onPressed: () => _foldingCellKey.currentState?.toggleFold(),
              child: const Text(
                "OPEN",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red.shade400,
                  minimumSize: const Size(70, 40)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInnerWidget() {
    return Container(
      color: const Color(0xFFecf2f9),
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Hey!",
              style: GoogleFonts.poppins(
                color: const Color(0xFF2e282a),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Happy Birthday! 🎂",
              style: GoogleFonts.aldrich(
                color: Colors.amber.shade900,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey.currentState?.toggleFold(),
              child: const Text(
                "Close",
                style: TextStyle(color: Colors.black),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(80, 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
