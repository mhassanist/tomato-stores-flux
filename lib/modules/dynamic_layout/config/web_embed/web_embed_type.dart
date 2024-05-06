import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum WebEmbedType {
  url,
  iframe,
  html;
}
