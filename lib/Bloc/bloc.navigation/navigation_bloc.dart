import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigation_event.dart';
import 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  // NavigationStates get initialState => InitialState();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeViewClickedEvent:
        yield InitialState();
        break;
      case NavigationEvents.SettingViewClickedEvent:
        yield SettingState();
        break;
      case NavigationEvents.ProfileViewClickedEvent:
        yield ProfileState();
        break;
      case NavigationEvents.ActivityViewClickedEvent:
        yield ActivityState();
        break;
      case NavigationEvents.ContactViewClickedEvent:
        yield ContactState();
        break;
      case NavigationEvents.GouassouViewClickedEvent:
        yield GouassouState();
        break;
    }
  }
}
