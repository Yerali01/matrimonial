import 'dart:io';
import 'package:anm_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_screen_controller.dart';

class FormScreenView extends GetView<FormScreenController> {
  FormScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Create a Form",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Form(
              key: Get.find<FormScreenController>().formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //about me and profile type
                  const Text(
                    "Who is this profile for?",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().profile_type,
                          items: <String>[
                            "Self",
                            "Relatives",
                            "Son",
                            "Daughter",
                            "Brother",
                            "Sister",
                            "Client",
                            "Friend",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            Get.find<FormScreenController>().profile_type =
                                value!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Salutation",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().salutation,
                          items: <String>[
                            "Mr",
                            "Mrs",
                            "Miss",
                            "Ms",
                            "Master",
                            "Pastor",
                            "Evng.",
                            "Rev.",
                            "Fr.",
                            "Sr.",
                            "Bro.",
                            "Sis.",
                            "Adv.",
                            "Dr.",
                            "Bishop",
                            "Apostle",
                            "Prop.",
                            "Baby",
                            "Late.",
                            "Dr.(Mr.)",
                            "Dr.(Mrs.)",
                            "Dr.(Miss.)",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            Get.find<FormScreenController>().salutation =
                                value!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "First Name",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .firstNameEditingController,
                      validator: (value) {
                        return Get.find<FormScreenController>()
                            .validateFirstName(value!);
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Middle Name",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .middleNameEditingController,
                      validator: (value) {
                        return Get.find<FormScreenController>()
                            .validateMiddleName(value!);
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Last Name",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .lastNameEditingController,
                      validator: (value) {
                        return Get.find<FormScreenController>()
                            .validateLastName(value!);
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Gender",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().gender,
                          items: <String>[
                            "Male",
                            "Female",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            Get.find<FormScreenController>().gender = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // const Text(
                  //   "Phone Number",
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  // const SizedBox(height: 10),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xFFD3D3D3),
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   child: TextField(
                  //     decoration: const InputDecoration(
                  //       border: InputBorder.none,
                  //     ),
                  //     controller: controller.phoneNumber,
                  //     onSubmitted: (val) {
                  //       controller.phoneNumber = val!;
                  //     },
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .emailEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateEmail(value!),
                    ),
                  ),
                  const SizedBox(height: 15),

                  //personal details

                  const Text(
                    "Age",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller:
                          Get.find<FormScreenController>().ageEditingController,
                      validator: (value) {
                        return Get.find<FormScreenController>()
                            .validateAge(value!);
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Birth Place",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .birthPlaceEditingController,
                      validator: (value) {
                        return Get.find<FormScreenController>()
                            .validateBirthPlace(value!);
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Height",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().height,
                          items: <String>[
                            '4"0',
                            '4"1',
                            '4"2',
                            '4"3',
                            '4"4',
                            '4"5',
                            '4"6',
                            '4"7',
                            '4"8',
                            '4"9',
                            '5"0',
                            '5"1',
                            '5"2',
                            '5"3',
                            '5"4',
                            '5"5',
                            '5"6',
                            '5"7',
                            '5"8',
                            '5"9',
                            '6"0',
                            '6"1',
                            '6"2',
                            '6"3',
                            '6"4',
                            '6"5',
                            '6"7',
                            '6"8',
                            '6"9',
                            '7"0',
                            '7"1',
                            '7"2',
                            '7"3',
                            '7"4',
                            '7"5',
                            '7"6',
                            '7"8',
                            '7"9',
                            '8"0',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().height = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Weight",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().weight,
                          items: <String>[
                            '30kg',
                            '31kg',
                            '32kg',
                            '34kg',
                            '35kg',
                            '36kg',
                            '37kg',
                            '38kg',
                            '39kg',
                            '40kg',
                            '41kg',
                            '42kg',
                            '43kg',
                            '44kg',
                            '45kg',
                            '46kg',
                            '47kg',
                            '48kg',
                            '49kg',
                            '50kg',
                            '51kg',
                            '52kg',
                            '53kg',
                            '54kg',
                            '55kg',
                            '56kg',
                            '57kg',
                            '58kg',
                            '59kg',
                            '60kg',
                            '61kg',
                            '62kg',
                            '63kg',
                            '64kg',
                            '65kg',
                            '66kg',
                            '67kg',
                            '68kg',
                            '69kg',
                            '70kg',
                            '71kg',
                            '72kg',
                            '73kg',
                            '74kg',
                            '75kg',
                            '76kg',
                            '77kg',
                            '78kg',
                            '79kg',
                            '80kg',
                            '81kg',
                            '82kg',
                            '83kg',
                            '84kg',
                            '85kg',
                            '86kg',
                            '87kg',
                            '88kg',
                            '89kg',
                            '90kg',
                            '91kg',
                            '92kg',
                            '93kg',
                            '94kg',
                            '95kg',
                            '96kg',
                            '97kg',
                            '98kg',
                            '99kg',
                            '100kg',
                            '101kg',
                            '102kg',
                            '103kg',
                            '104kg',
                            '105kg',
                            '106kg',
                            '107kg',
                            '108kg',
                            '109kg',
                            '110kg',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().weight = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Body Type",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().bodyType,
                          items: <String>[
                            'Average',
                            'Slim',
                            'Athletic',
                            'Heavy',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().bodyType =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Skin Tone",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().skinTone,
                          items: <String>[
                            'white',
                            'black',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().skinTone =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Any Disability",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .anyDisabilityEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateAnyDisability(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Blood Group",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().bloodGroup,
                          items: <String>[
                            '1',
                            '2',
                            '3',
                            '4',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().bloodGroup =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  //current location

                  const Text(
                    "Address",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .addressEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateAddress(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Flat/Building No/ House No/ ",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .buildingEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateBuilding(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Country",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().country,
                          items: <String>['India']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().country =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "State",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().state,
                          items: <String>[
                            'Andhra Pradesh',
                            'Andaman and Nicobar Islands',
                            'Arunachal Pradesh',
                            'Assam',
                            'Bihar',
                            'Chandigarh',
                            'Chhattisgarh',
                            'Dadra and Nagar Haveli',
                            'Daman & Diu',
                            'Delhi',
                            'Goa',
                            'Gujarat',
                            'Haryana',
                            'Himachal Pradesh',
                            'Jammu & Kashmir',
                            'Jharkhand',
                            'Karnataka',
                            'Kerala',
                            'Ladakh',
                            'Lakshadweep',
                            'Madhya Pradesh',
                            'Maharashtra',
                            'Manipur',
                            'Meghalaya',
                            'Mizoram',
                            'Nagaland',
                            'Odisha',
                            'Puducherry',
                            'Punjab',
                            'Rajasthan',
                            'Sikkim',
                            'Tamil Nadu',
                            'Telangana',
                            'Tripura',
                            'Uttarakhand',
                            'Uttar Pradesh',
                            'West Bengal',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().state = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "City",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .cityEditingController,
                      validator: (value) =>
                          Get.find<FormScreenController>().validateCity(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Zip/PIN Code",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .zipCodeEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateZipCode(value!),
                    ),
                  ),
                  const SizedBox(height: 15),

                  //pastor details

                  const Text(
                    "Pastor/Priest name",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .pastorNameEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validatePastorName(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Church name",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .churchNameEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateChurchName(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // const Text(
                  //   "City name",
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  // const SizedBox(height: 10),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xFFD3D3D3),
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   width: double.infinity,
                  //   child: TextField(
                  //     decoration: const InputDecoration(
                  //       border: InputBorder.none,
                  //     ),
                  //     onSubmitted: (val) {
                  //       setState(() {
                  //         city_name = val;
                  //       });
                  //     },
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  // Text(
                  //   "Contact number (Optional)",
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xFFD3D3D3),
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   width: double.infinity,
                  //   child: TextField(
                  //     decoration: const InputDecoration(
                  //       border: InputBorder.none,
                  //     ),
                  //     onSubmitted: (val) {
                  //       setState(() {
                  //         contact_number = val;
                  //       });
                  //     },
                  //   ),
                  // ),
                  const SizedBox(height: 10),

                  //career details

                  const Text(
                    "Education",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().education,
                          items: <String>[
                            'High School',
                            'Less Than High School',
                            'Diploma in ITI',
                            'Diploma in AMIE',
                            'Bachelors in Arts',
                            'Bachelors in Science',
                            'Bachelors in Commerce',
                            'Bachelors in Computers',
                            'Bachelors in Engineering',
                            'Bachelors in Education',
                            'Bachelors in Technology',
                            'Masters in Arts',
                            'Masters in Science',
                            'Masters in Commerce',
                            'Masters in Computers',
                            'Masters in Engineering',
                            'Masters in Education',
                            'Masters in Technology',
                            'Management- BBA/MBA/Others',
                            'Legal(Law)- BL/ML/LLB/Others',
                            'Medicine(Any)',
                            'ACA/FCA/Chartered Accountant',
                            'ACA/FCA- Company Secretary',
                            'ICWA',
                            'PhD',
                            'Services- IAS/IPS/Others',
                            'Other Education',
                            'Under Graduate',
                            'Mechanical Engineering',
                            'Diploma in Teaching(DED)',
                            'Masters in Architecture',
                            'General Nursing',
                            'Higher Secondary Education',
                            'Diploma in Computer Engineering',
                            'Bachelors of Mass Media',
                            'Post Graduation in HR',
                            'Post Graduation in Marketing',
                            'Master in Psychology',
                            'BSc in Nursing',
                            'Diploma in Real Estate',
                            // 'Advanced Diploma in Cosmetology',
                            'Diploma in Civil Engineering',
                            // 'Less than Higher Secondary Education',
                            'Diploma in Beautician',
                            'Master of Financial Management',
                            // // 'Master of Journalism and Mass Communication',
                            'B.Sc. of Marketing Management',
                            'Textile Engineering',
                            // 'Diploma in Electrical Engineering',
                            'Hotel Management',
                            'Bachelor of Science in Nursing',
                            'Diploma in Food Production',
                            'Diploma in Medical Technology',
                            'ECCED',
                            'Bachelor in Physiotherapy',
                            'Bachelor of Theology',
                            'Master of Social Work',
                            'B.Sc. in Perfusion Technology',
                            'Master of Divinity',
                            'Textile Designing',
                            'Diploma in Theology',
                            'Master of Science in Nursing',
                            'Diploma in Pharmacy',
                            'M.A English Literature',
                            'Mining engineering',
                            'Diploma as Executive Assistant',
                            'Diploma in Import & Export',
                            'Diploma in Fashion Designing',
                            'B.SC. Horticulture',
                            'B.SC. Psychology',
                            "Master's Diploma in Multimedia",
                            // 'PG Diploma in Mass Communication',
                            'B.A. English Literature',
                            'Diploma in Fire and Safety',
                            'B.Sc. Business Administration',
                            'Bachelor in Optometry',
                            // 'Diploma in Aviation Hospitality & Travel Management',
                            // 'Diploma in Medical Laboratory Technology (DMLT)',
                            'M.Sc. (Electronics)',
                            'Media Arts',
                            'Degree in interior design',
                            'Nutritionist',
                            'B.Sc. (IT)',
                            // 'The Bachelor of Science in Hotel & Restaurant Management',
                            // 'Diploma in Electrical and Electronics Engineering',
                            'Bachelor of Physical Education',
                            'Bachelor of Physical Education',
                            // "Bachelor's Degree (B.E.)- Electronics and Communications Engineering",
                            'Diploma in Automobile',
                            'Master in Computer Science',
                            // 'Diploma in Accounting and Finance',
                            'Diploma in Visual Arts and Design',
                            'B.Sc. Operation Theatre',
                            'Diploma in Animation',
                            'Master of Fine Arts',
                            // 'Diploma in information Technology',
                            'Medical Laboratory Technology',
                            'Master in Hospital Administration',
                            'Diploma in ANM',
                            'Diploma in IATA',
                            'Bachelors of Management Studio',
                            'Bachelor of Divinity',
                            'D.ED',
                            'Masters in Banking and Finance',
                            'Diploma in Nursing',
                            'Diploma in Nautical Science',
                            'B.Sc. in Industrial Microbiology',
                            'Diploma in Animal Husbandry',
                            'M.Lib.Sc.',
                            // 'Diploma in Computer & Commercial Practice',
                            'Aeronautical Engineering',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().education =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "College",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .collegeEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateCollege(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text("Other College (Name, Location, City)",
                      style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .otherCollegeEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateOtherCollege(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Occupation",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().occupation,
                          items: <String>[
                            'Not Working',
                            'Non- Mainstream Professional',
                            'Accountant',
                            'Actor',
                            'Administration Professional',
                            'Advertising Professional',
                            'Air Hostess',
                            'Architect',
                            'Artisan',
                            'Audiologist',
                            'Banker',
                            'Beautician',
                            'Biologist/Botanist',
                            'Chartered Accountant',
                            'Civil Engineer',
                            'Clerical Officer',
                            'Commercial Pilot',
                            'Company Secretary',
                            'Computer Professional',
                            'Consultant',
                            'Contractor',
                            'Cost Accountant',
                            'Creative Person',
                            'Customer Support Professional',
                            'Défense Employee',
                            'Dentist',
                            'Designer',
                            'Doctor',
                            'Economist',
                            'Engineer',
                            'Engineer (Mechanical)',
                            'Engineer (Project)',
                            'Entertainment Professional',
                            'Event Manager',
                            'Executive',
                            'Factory Worker',
                            'Farmer',
                            'Fashion Designer',
                            'Finance Professional',
                            'Flight Attendant',
                            'Government Employee',
                            'Health Care Professional',
                            'Home Maker',
                            'Hotel & Restaurant Professional',
                            'Human Resources Professional',
                            'Interior Designer',
                            'Investment Designer',
                            'Investment Professional',
                            'IT or Telecom Professional',
                            'Journalist',
                            'Lawyer',
                            'Lecture',
                            'Legal Profession',
                            'Manager',
                            'Marketing Professional',
                            'Media Professional',
                            'Medical Professional',
                            'Medical Transcriptionist',
                            'Merchant Naval Officer',
                            'Nurse',
                            'Occupational Therapist',
                            'Optician',
                            'Pharmacist',
                            'Physician Assistant',
                            'Pilot',
                            'Politician',
                            'Production Professional',
                            'Professor',
                            'Psychologist',
                            'Public Relations Professional',
                            'Real Estate Professional',
                            'Research Scholar',
                            'Retired Person',
                            'Retail Professional',
                            'Sales Professional',
                            'Scientist',
                            'Self-Employed Person',
                            'Social Worker',
                            'Software Consultant',
                            'Sportsman',
                            'Student',
                            'Teacher',
                            'Technician',
                            'Training Professional',
                            'Transportation Professional',
                            'Veterinary Doctor',
                            'Volunteer',
                            'Zoologist',
                            'President',
                            'Assistant President',
                            'Business Analyst',
                            'Computer Operator',
                            'CEO',
                            'Vice President',
                            'Assistant Manager',
                            'Brand Manager',
                            'Manager Operations',
                            'Manager Administration',
                            'Driver',
                            'Domestic Help',
                            'Office Assistant',
                            'Pastor',
                            'Research Analyst',
                            'Coordinator',
                            'Senior Operation Manager',
                            'Physiotherapist',
                            'Video Technician',
                            'Ticketing',
                            'Stylist',
                            'Jewellery Designer',
                            'Tour Manager',
                            'Restaurant Department',
                            'Shipping',
                            'Housemaid',
                            'Fundraiser',
                            'Evangelist',
                            'Carpenter',
                            'Sales Executive',
                            'Network Marketing',
                            'Assistant Case Manager',
                            'Senior Analyst',
                            'Associate Consultant',
                            'Electrician',
                            'Principal',
                            'Vice-Principal',
                            'Compounder',
                            'Dental Assistant',
                            'Content Writer',
                            'Loco Pilot',
                            'Fitness Consultant',
                            'Counsellor',
                            'Campaign Manager',
                            'Lab Assistant',
                            'Librarian',
                            'Coach',
                            'Store Keeper',
                            'Team Leader',
                            'Airline Professional',
                            'Front Desk Cum Administrator',
                            'Civil Enforcement Officer',
                            'Scrub Nurse',
                            'Field Representative',
                            'Quality Checker',
                            'Transcriber',
                            'Baby Sitting',
                            'Land Surveyor',
                            'Software Developer',
                            'Technical Asst.',
                            'Quality Analyst',
                            'Looking For Job',
                            'Skilled Worker',
                            'Full Time Ministry',
                            'Safety Officer',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().occupation =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Annual Income",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().annualIncome,
                          items: <String>[
                            'Less Than 2 Lakhs',
                            '2-3 Lakhs',
                            '3-5 Lakhs',
                            '5-7 Lakhs',
                            '7-8 Lakhs',
                            '8-10 Lakhs',
                            '10-12 Lakhs',
                            '12-14 Lakhs',
                            '14-16 Lakhs',
                            '16-18 Lakhs',
                            '18-20 Lakhs',
                            'More Than 20 Lakhs',
                            'None',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().annualIncome =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  //social details

                  const Text(
                    "Marital Status",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value:
                              Get.find<FormScreenController>().maritial_status,
                          items: <String>[
                            'Never Married',
                            'Widowed',
                            'Divorced',
                            'Separated',
                            'Awaiting Divorce',
                            'Annulled',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().maritial_status =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "No of Children",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value:
                              Get.find<FormScreenController>().no_of_children,
                          items: <String>[
                            'None',
                            '1',
                            '2',
                            '3',
                            '4',
                            'More Than 4',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().no_of_children =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Mother Tongue",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().mother_tongue,
                          items: <String>[
                            'Assamese',
                            'Bengali',
                            'Bhojpuri',
                            'Bodo',
                            'Chhattisgarhi',
                            'Dogri',
                            'East India',
                            'English',
                            'Garo',
                            'Gujarati',
                            'Hindi',
                            'Kannada',
                            'Khasi',
                            'Kashmiri',
                            'Kokborok',
                            'Konkani',
                            'Maithili',
                            'Malayalam',
                            'Manipuri',
                            'Marathi',
                            'Mizo',
                            'Nepali',
                            'Oriya',
                            'Punjabi',
                            'Rajasthani',
                            'Sanskrit',
                            'Santali',
                            'Sindhi',
                            'Tamil',
                            'Telugu',
                            'Urdu',
                            'Tulu',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().mother_tongue =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Denomination",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .denominationEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateDenomination(value!),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Sub Castle(Optional)",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .subCastleEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateSubCastle(value!),
                    ),
                  ),
                  const SizedBox(height: 15),

                  //family details

                  const Text(
                    "Family Values",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().family_values,
                          items: <String>[
                            'Traditional',
                            'Moderate',
                            'Liberal',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().family_values =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Family Type",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().family_type,
                          items: <String>[
                            'Joint Family',
                            'Nuclear Family',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().family_type =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Family Income(Optional)",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().family_income,
                          items: <String>[
                            'Less Than 2 Lakhs',
                            '2-3 Lakhs',
                            '3-5 Lakhs',
                            '5-7 Lakhs',
                            '7-8 Lakhs',
                            '8-10 Lakhs',
                            '10-12 Lakhs',
                            '12-14 Lakhs',
                            '14-16 Lakhs',
                            '16-18 Lakhs',
                            '18-20 Lakhs',
                            'More Than 20 Lakhs',
                            'None',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().family_income =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Father Status",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().father_status,
                          items: <String>[
                            'Service-Private',
                            'Not Employed',
                            'Business/Entrepreneur',
                            'Retired',
                            'Service- Govt./PSU',
                            'Army/Armed Forces',
                            'Civil Services',
                            'Passed Away',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().father_status =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Mother Status",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().mother_status,
                          items: <String>[
                            'Service-Private',
                            'Housewife',
                            'Business/Entrepreneur',
                            'Retired',
                            'Service- Govt./PSU',
                            'Civil Services',
                            'Passed Away',
                            'Teacher',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().mother_status =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "No of Brothers",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value:
                              Get.find<FormScreenController>().no_of_brothers,
                          items: <String>[
                            'None',
                            '1',
                            '2',
                            '3',
                            '4',
                            'More Than 4',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().no_of_brothers =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "No of Sisters",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().no_of_sisters,
                          items: <String>[
                            'None',
                            '1',
                            '2',
                            '3',
                            '4',
                            'More Than 4',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().no_of_sisters =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Religious Value",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value:
                              Get.find<FormScreenController>().religious_value,
                          items: <String>[
                            'Average Christian',
                            'Believe in Jesus, not in religion',
                            'Not Given it a thought',
                            'Not religious',
                            'Sunday Church Goer',
                            'Very religious',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().religious_value =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  //lifestyle

                  const Text(
                    "Diet",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().diet,
                          items: <String>[
                            'Veg',
                            'Non-Veg',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().diet = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Drink",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().drink,
                          items: <String>[
                            'Yes',
                            'No',
                            'Occasionally',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().drink = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Smoke",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Get.find<FormScreenController>().smoke,
                          items: <String>[
                            'Yes',
                            'No',
                            'Occasionally',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().smoke = newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Languages Known",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value:
                              Get.find<FormScreenController>().languages_known,
                          items: <String>[
                            'English',
                            'Hindi',
                            'Bengali',
                            'Telgu',
                            'Marathi',
                            'Tamil',
                            'Urdu',
                            'Gujarati',
                            'Kannada',
                            'Bhojpuri',
                            'Malayalam',
                            'Odia',
                            'Punjabi',
                            'Rajsthani',
                            'Magadhi',
                            'Chhattisgari',
                            'Assamese',
                            'Maithili',
                            ' Haryanvi',
                            'Marwari',
                            'Santali',
                            'Malvi',
                            'Kashmiri',
                            'Mewari',
                            'Khortha',
                            'Bhili',
                            'Bundeli',
                            'Nepali',
                            'Bagheli',
                            'Pahari',
                            'Lamani',
                            'Awadhi',
                            'Wagdi',
                            'Gondi',
                            'Harauti',
                            'Konkani',
                            'Dogri',
                            'Nimadi',
                            'Sudan',
                            'Kumaoni',
                            'Dhundhari',
                            'Ahirani',
                            'Kurukh',
                            'Tulu',
                            'Sindhi',
                            'Meitei',
                            'Surgujia',
                            'Bagri',
                            'Bodo',
                            'Banjari',
                            'Nagpuria',
                            'Surjapuri',
                            'Kangri',
                            'Mundari',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            Get.find<FormScreenController>().languages_known =
                                newValue!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Hobbies",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: Get.find<FormScreenController>()
                          .hobbiesEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateHobbies(value!),
                    ),
                  ),
                  const SizedBox(height: 15),

                  //about me fav thing

                  const Text(
                    "About me",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "e.g. I love to drive"),
                      maxLines: 5,
                      controller: Get.find<FormScreenController>()
                          .aboutMeFavThingsEditingController,
                      validator: (value) => Get.find<FormScreenController>()
                          .validateAboutMeFavThings(value!),
                    ),
                  ),

                  //validating and verification

                  //upload photo minimum 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Get.find<FormScreenController>()
                                    .imagePathFirst
                                    .value ==
                                ''
                            ? const Text("Select image from gallery")
                            : Container(
                                height: (Helper.getScreenWidth(context)) / 2,
                                width: (Helper.getScreenWidth(context)) / 2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD3D3D3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                  image: FileImage(
                                    File(Get.find<FormScreenController>()
                                        .imagePathFirst
                                        .value),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.find<FormScreenController>().selectFirstImage();
                        },
                        icon: const Icon(Icons.image),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Get.find<FormScreenController>()
                                    .imagePathSecond
                                    .value ==
                                ''
                            ? const Text("Select image from gallery")
                            : Container(
                                height: (Helper.getScreenWidth(context)) / 2,
                                width: (Helper.getScreenWidth(context)) / 2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD3D3D3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                  image: FileImage(
                                    File(Get.find<FormScreenController>()
                                        .imagePathSecond
                                        .value),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.find<FormScreenController>().selectSecondImage();
                        },
                        icon: const Icon(Icons.image),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Get.find<FormScreenController>()
                                    .imagePathThird
                                    .value ==
                                ''
                            ? const Text("Select image from gallery")
                            : Container(
                                height: (Helper.getScreenWidth(context)) / 2,
                                width: (Helper.getScreenWidth(context)) / 2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD3D3D3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                  image: FileImage(
                                    File(Get.find<FormScreenController>()
                                        .imagePathThird
                                        .value),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.find<FormScreenController>().selectThirdImage();
                        },
                        icon: const Icon(Icons.image),
                      ),
                    ],
                  ),
                  //upload document
                  const SizedBox(height: 15),
                  const Text(
                      "Upload any one  document for photo and address verification"),
                  const Text("-Aadhar Card(front and back) or"),
                  const Text("-Passport(front and back) or"),
                  const Text("Driving License(front and back)"),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Get.find<FormScreenController>()
                                    .verificationFrontDocument
                                    .value ==
                                ''
                            ? const Text("Select image from gallery")
                            : Container(
                                height: (Helper.getScreenWidth(context)) / 2,
                                width: (Helper.getScreenWidth(context)) / 2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD3D3D3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                  image: FileImage(
                                    File(Get.find<FormScreenController>()
                                        .verificationFrontDocument
                                        .value),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.find<FormScreenController>()
                              .selectVerificationFrontDocument();
                        },
                        icon: const Icon(Icons.image),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Get.find<FormScreenController>()
                                    .verificationBackDocument
                                    .value ==
                                ''
                            ? const Text("Select image from gallery")
                            : Container(
                                height: (Helper.getScreenWidth(context)) / 2,
                                width: (Helper.getScreenWidth(context)) / 2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD3D3D3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                  image: FileImage(
                                    File(Get.find<FormScreenController>()
                                        .verificationBackDocument
                                        .value),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.find<FormScreenController>()
                              .selectVerificationBackDocument();
                        },
                        icon: const Icon(Icons.image),
                      ),
                    ],
                  ),

                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: context.width),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(14),
                        ),
                      ),
                      child: const Text("Finish Form"),
                      onPressed: () {
                        Get.find<FormScreenController>().validateAndSave(
                          email: Get.find<FormScreenController>().email,
                          profile_type:
                              Get.find<FormScreenController>().profile_type,
                          salutation:
                              Get.find<FormScreenController>().salutation,
                          first_name: Get.find<FormScreenController>()
                              .firstNameEditingController
                              .text,
                          middle_name: Get.find<FormScreenController>()
                              .middleNameEditingController
                              .text,
                          last_name: Get.find<FormScreenController>()
                              .lastNameEditingController
                              .text,
                          gender: Get.find<FormScreenController>().gender,
                          country: Get.find<FormScreenController>().country,
                          state: Get.find<FormScreenController>().state,
                          zip_code: Get.find<FormScreenController>()
                              .zipCodeEditingController
                              .text,
                          city: Get.find<FormScreenController>().city,
                          address: Get.find<FormScreenController>()
                              .addressEditingController
                              .text,
                          building: Get.find<FormScreenController>()
                              .buildingEditingController
                              .text,
                          pastor_name: Get.find<FormScreenController>()
                              .pastorNameEditingController
                              .text,
                          church_name: Get.find<FormScreenController>()
                              .churchNameEditingController
                              .text,
                          education: Get.find<FormScreenController>().education,
                          college: Get.find<FormScreenController>()
                              .collegeEditingController
                              .text,
                          other_college: Get.find<FormScreenController>()
                              .otherCollegeEditingController
                              .text,
                          occupation:
                              Get.find<FormScreenController>().occupation,
                          annual_income:
                              Get.find<FormScreenController>().annualIncome,
                          maritial_status:
                              Get.find<FormScreenController>().maritial_status,
                          no_of_children:
                              Get.find<FormScreenController>().no_of_children,
                          mother_tongue:
                              Get.find<FormScreenController>().mother_tongue,
                          denomination: Get.find<FormScreenController>()
                              .denominationEditingController
                              .text,
                          sub_castle: Get.find<FormScreenController>()
                              .subCastleEditingController
                              .text,
                          family_values:
                              Get.find<FormScreenController>().family_values,
                          family_type:
                              Get.find<FormScreenController>().family_type,
                          family_income:
                              Get.find<FormScreenController>().family_income,
                          father_status:
                              Get.find<FormScreenController>().father_status,
                          mother_status:
                              Get.find<FormScreenController>().mother_status,
                          no_of_brothers:
                              Get.find<FormScreenController>().no_of_brothers,
                          no_of_sisters:
                              Get.find<FormScreenController>().no_of_sisters,
                          religious_value:
                              Get.find<FormScreenController>().religious_value,
                          diet: Get.find<FormScreenController>().diet,
                          drink: Get.find<FormScreenController>().drink,
                          smoke: Get.find<FormScreenController>().smoke,
                          languages_known:
                              Get.find<FormScreenController>().languages_known,
                          hobbies: Get.find<FormScreenController>()
                              .hobbiesEditingController
                              .text,
                          age: Get.find<FormScreenController>()
                              .ageEditingController
                              .text,
                          birth_place: Get.find<FormScreenController>()
                              .birthPlaceEditingController
                              .text,
                          height: Get.find<FormScreenController>().height,
                          weight: Get.find<FormScreenController>().weight,
                          body_type: Get.find<FormScreenController>().bodyType,
                          skin_tone: Get.find<FormScreenController>().skinTone,
                          any_disability: Get.find<FormScreenController>()
                              .anyDisabilityEditingController
                              .text,
                          blood_group:
                              Get.find<FormScreenController>().bloodGroup,
                          about_me_fav_thing: Get.find<FormScreenController>()
                              .aboutMeFavThingsEditingController
                              .text,
                          first_image: Get.find<FormScreenController>()
                              .imagePathFirst
                              .value,
                          second_image: Get.find<FormScreenController>()
                              .imagePathSecond
                              .value,
                          third_image: Get.find<FormScreenController>()
                              .imagePathThird
                              .value,
                          verificationFrontDocument:
                              Get.find<FormScreenController>()
                                  .verificationFrontDocument
                                  .value,
                          verificationBackDocument:
                              Get.find<FormScreenController>()
                                  .verificationBackDocument
                                  .value,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
