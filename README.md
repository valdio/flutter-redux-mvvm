# flutter_redux_mvvm

Flutter-Redux-MVVM demo project.


https://openlibrary.org/developers/api


## Generating serializable models

1. Create the model following the [example](https://pub.dev/packages/json_serializable#-example-tab-) of the `json_serializable` package.
2. Run script to project folder.

```
    flutter pub run build_runner build
```

If there are conflicts with the build run the following:

```
    flutter pub run build_runner build --delete-conflicting-outputs
```

