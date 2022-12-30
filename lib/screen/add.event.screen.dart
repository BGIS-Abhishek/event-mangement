import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:winter_event/widget/common_app_bar.dart';

import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';
import '../widget/base_entry/entry_main.dart';
import '../widget/input_field.dart';
import '../widget/primary_button.dart';
import '../widget/sized_box/sized_box.dart';
class AddEventScreen extends StatefulWidget {
  static const String route = '/addEventScreen';
  const AddEventScreen({Key? key}) : super(key: key);

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  TextEditingController ?_eventTitleController,_startDateController,_endDateController,_latController, _longController;
  File? file;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    _eventTitleController = TextEditingController();
    _startDateController = TextEditingController();
    _endDateController = TextEditingController();
    _latController = TextEditingController();
    _longController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _eventTitleController!.dispose();
    _startDateController!.dispose();
    _endDateController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? file!.path.split('/').last : 'No File Selected';
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'New Event',
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child:Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(29, 194, 95, 1),
                  minimumSize: Size.fromHeight(50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.attach_file, size: 28),
                    SizedBox(width: 16),
                    Text(
                      'Select Image',
                      style: AppTheme.buttonTextStyle,
                    ),
                  ],
                ),
                onPressed: (){
                  //_getFromGallery();
                  _getFromGallery();
                },
              ),
              Text(
                fileName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Sized_8H(),
              Animator(
                child: InputField(
                  controller: _eventTitleController,
                  hintText: 'Event Title',
                  labelText: 'Event Title',
                  inputType: TextInputType.text,
                ),
              ),
              Sized_8H(),
              Row(
                children: [
                  Container(
                    width: 135.w,
                    height: 55.h,
                    margin: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.bgComparedShadeColor, width: .2),
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.bgComparedShadeColor.withOpacity(0.06),
                    ),
                    child: InputField(
                      controller: _latController,
                      hintText: 'Enter',
                      labelText: 'Latitude',
                      inputType: TextInputType.text,
                    ),
                  ),
                  Container(
                    width: 135.w,
                    height: 55.h,
                    // height: MediaQuery.of(context).size.height*0.06,
                    margin: EdgeInsets.only(left: 5.w, top: 5.h, bottom: 5.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.bgComparedShadeColor, width: .2),
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.bgComparedShadeColor.withOpacity(0.06),
                    ),
                    child: InputField(
                      controller: _longController,
                      hintText: 'Enter',
                      labelText: 'Longitude',
                      inputType: TextInputType.text,
                    ),
                  ),
                 Spacer(),
                  Container(
                    width: 60.w,
                    height: 55.h,
                    margin: EdgeInsets.only(left: 5.w),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.bgComparedShadeColor, width: .2),
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.inputTextFieldColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.my_location_sharp),
                      color: Colors.black,
                      onPressed: () {
                        // getLocation();
                      },
                    ),
                  ),
                ],
              ),
              Sized_8H(),
              Row(
                children: [
                  SizedBox(
                    width: 275.w,
                    child: InputField(
                      controller: _startDateController,
                      hintText: 'Start date',
                      labelText: 'Start Date ',
                      inputType: TextInputType.datetime,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 60.w,
                    height: 55.h,
                    margin: EdgeInsets.only(left: 5.w),
                    padding: EdgeInsets.only(
                      left: 5.w, right: 5.w, top: 5.h, ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.bgComparedShadeColor, width: .2),
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.inputTextFieldColor,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.calendar_today,
                        size: 36,
                      ),
                      color: Colors.black,
                      onPressed: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                ],
              ),
              Sized_8H(),
              Row(
                children: [
                  SizedBox(
                    width: 275.w,
                    child: InputField(
                      controller: _endDateController,
                      hintText: 'End date',
                      labelText: 'End Date ',
                      inputType: TextInputType.datetime,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 60.w,
                    height: 55.h,
                    margin: EdgeInsets.only(left: 5.w),
                    padding: EdgeInsets.only(
                      left: 5.w, right: 5.w, top: 5.h, ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.bgComparedShadeColor, width: .2),
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.inputTextFieldColor,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.calendar_today,
                        size: 36,
                      ),
                      color: Colors.black,
                      onPressed: () {
                        _selectEndDate(context);
                      },
                    ),
                  ),
                ],
              ),
              Sized_8H(),
              Animator(
                child: InputField(
                  controller: _eventTitleController,
                  hintText: 'Organizer name',
                  labelText: 'Organized name',
                  inputType: TextInputType.text,
                ),
              ),
              Sized_8H(),
              Animator(
                child: InputField(
                  controller: _eventTitleController,
                  hintText: 'Contact Person',
                  labelText: 'Contact Person',
                  inputType: TextInputType.text,
                ),
              ),
              Sized_8H(),
              Animator(
                child: InputField(
                  controller: _eventTitleController,
                  hintText: 'Enter event address',
                  labelText: 'Event Address',
                  inputType: TextInputType.text,
                  maxLines: 3,
                ),
              ),
              Sized_8H(),
              Animator(
                child: InputField(
                  controller: _eventTitleController,
                  hintText: 'Enter event description',
                  labelText: 'Description',
                  inputType: TextInputType.text,
                  maxLines: 3,
                ),
              ),
              Sized_16H(),
              Animator(
                child: PrimaryButton(
                  title: 'Submit',
                  onTap: (){

                  },
                ),
              ),
              Sized_16H(),
            ],
          ),
        )
      ),
    );
  }

  ///fetch image
  _getFromGallery() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg','png'],
    );
    if (result != null) {
      final path = result.files.single.path!;
      setState(() => file = File(path));
      print(path);
    } else {
      print("No file selected");
    }
  }

  /// Select date
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime.now(),
      lastDate: DateTime(3000),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _startDateController!.text = selectedDate.toString().substring(0, 10);
      });
    }
  }

  /// Select date
  _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime.now(),
      lastDate: DateTime(3000),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _endDateController!.text = selectedDate.toString().substring(0, 10);
      });
    }
  }

}
