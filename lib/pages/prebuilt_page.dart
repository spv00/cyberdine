import 'package:cyberdine/objects/prebuilt_pc_objects.dart';
import 'package:cyberdine/prebuilt_pc_card.dart';
import 'package:flutter/material.dart';

class PrebuiltPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [
      PrebuiltPCCard(productName: "Test", productDetails: "Insert text here", pcSpecs: PrebuiltPCObject(name: "Pc 1", price: 299, image: 'images/pc.jpg', specs: ["Intel Core i9 9900k", "Nvidia RTX 3060 ti", "64GB DDR4 Ram", "2TB HDD", "1TB M.2 SSD"])),
      PrebuiltPCCard(productName: "Prebuilt 1", productDetails: "First prebuilt", pcSpecs: new PrebuiltPCObject(name: "testpc1", price: 5896.13, image: 'images/pc_build.jpg', specs: ["Intel i99900k", "Nvidia RTX 3090 Ti Founders Edition", "64 GB DDR4"])),
      PrebuiltPCCard(productName: "Prebuilt nr 2", productDetails: "Imma try the description thingy on here just for fun yk", pcSpecs: new PrebuiltPCObject(name: "testpc2", price: 0.13, image: 'images/pc_upgrade.jpg', specs: ["Intel i79900", "Nvidia RTX 2070 Ti", "16 GB DDR4"])),
      PrebuiltPCCard(productName: "Pc 3.0", productDetails: "yay, another great pc for a great price", pcSpecs: new PrebuiltPCObject(name: "testpc3", price: 420.69, image: 'images/setup.jpg', specs: ["Intel i57500", "Nvidia GTX 1050", "8 GB DDR4"])),
    ],),);
  }
}

//ProductCard(productName: "Prebuilt 1", productDetails: "First prebuilt", pcSpecs: new PrebuiltPCObject(name: "testpc1", price: 5896.13, image: 'images/pc.jpg', specs: ["Intel i99900k", "Nvidia RTX 3090 Ti Founders Edition", "64 GB DDR4"])),
//ProductCard(productName: "Prebuilt nr 2", productDetails: "Imma try the description thingy on here just for fun yk", pcSpecs: new PrebuiltPCObject(name: "testpc2", price: 0.13, image: 'images/pc.jpg', specs: ["Intel i79900", "Nvidia RTX 2070 Ti", "16 GB DDR4"])),
//ProductCard(productName: "Cum 3.0", productDetails: "yay, another great pc for a great price", pcSpecs: new PrebuiltPCObject(name: "testpc3", price: 420.69, image: 'images/pc.jpg', specs: ["Intel i57500", "Nvidia GTX 1050", "8 GB DDR4"])),