import 'package:flutter/material.dart';

@immutable
abstract class NavigationStates {}

class InitialState extends NavigationStates {}

class ActivityState extends NavigationStates {}

class ContactState extends NavigationStates {}

class GouassouState extends NavigationStates {}

class ProfileState extends NavigationStates {}

class SettingState extends NavigationStates {}
