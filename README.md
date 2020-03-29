# flutter_redux_mvvm

Flutter-Redux-MVVM demo project.

This is a demo project introducing an approach to structure large scale mobile applications in Flutter build on top of REDUX state management combined with MVVM (Model View ViewModel) software architecture pattern.

MVVMs main focus is "separation of concerns". Simply put, to separate the user interface logic from the business logic or in other words, keep the UI clean so it can be easy to manage. MVVM pattern fits nicely for data-centric applications, with apps that load data from a database (CRUD) applications. Separation of concern allows us to avoid the so-called [God Objects](https://en.wikipedia.org/wiki/God_object).

## Documentation
The following description represents the general info about this project and how to set it up and run it. For more detailed information and explanations about the project check out the wiki in this repo.

### Straight into code! 🤘

#### Environment
This project is build using only a set of necessary/bare-minimum utils that can be utilized for setting up a scalable app architecture. In the flutter projects `pubspec.yaml` file and add the following dependencies.

```
environment:
  sdk: '>=2.2.2 <3.0.0'
dependencies:
  flutter:
    sdk: flutter
  flutter_redux: ^0.5.2
  redux_persist: ^0.8.2
  redux_persist_flutter: ^0.8.2
  flutter_redux_dev_tools: ^0.3.0
  validators: ^2.0.0+1
  json_serializable: ^3.2.3
  build_runner: ^1.7.2
  json_annotation: ^3.0.0
  http: ^0.12.0+2
```

#### Note! I've upgraded the environment SDK version so we can support spread operators. If you have a more recent version than the demo you can ignore the changes!

