---
title: Flutter / Кодогенерация
description: Как делать кодогенерацию во Flutter на примере json_serializable
---

Многое во Flutter разработке делается через кодогенерацию, потому что рефлекшена нет.

Разберем процесс кодогенерации на процессе генерации джсон сериализаторов с помощью [json_serializable](https://pub.dev/packages/json_serializable).

1. Пишем обычный класс:

```dart
// example.dart
class Person {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  
  Person({this.firstName, this.lastName, this.dateOfBirth});
}
```

2. Вешаем декоратор + добавляем пару методов:

```dart
// example.dart
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class Person {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  
  Person({this.firstName, this.lastName, this.dateOfBirth});
  
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
```

3. Импортируем с помощью ключевого слова `part` `.g.dart`-файл - файл, в котором будет сгенерированный код, реализующий методы определенные выше:

```dart
// example.dart
import 'package:json_annotation/json_annotation.dart';

part 'example.g.dart';

@JsonSerializable(nullable: false)
class Person {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  
  Person({this.firstName, this.lastName, this.dateOfBirth});
  
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
```

4. Запускаем команду кодогенерации:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Команда выше работает для всех кодогенерирующих либ.

