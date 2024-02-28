import 'package:flutter/material.dart';

class MarkdownEditor {
  const MarkdownEditor({required this.controller});

  final TextEditingController controller;

  ({int base, int extend, String text})? get _selected {
    final base = controller.selection.baseOffset;
    final extend = controller.selection.extentOffset;

    if (base != extend) {
      return (
        base: base,
        extend: extend,
        text: controller.text.substring(base, extend),
      );
    }

    return null;
  }

  void _insert(List<Text> texts) {
    if (_selected != null) {
      texts[0] = texts[0].copyWith(content: _selected!.text);

      controller.text = controller.text.replaceRange(
        _selected!.base,
        _selected!.extend,
        texts.map((e) => e.toString()).join(),
      );
    } else {
      controller.text += texts.map((e) => e.toString()).join();
    }
  }

  void bold() {
    _insert([
      const Text(
        prefix: '**',
        suffix: '**',
        content: 'Negrito',
      ),
    ]);
  }

  void italic() {
    _insert([
      const Text(
        prefix: '*',
        suffix: '*',
        content: 'Itálico',
      ),
    ]);
  }

  void link() {
    _insert([
      const Text(
        prefix: '[',
        suffix: ']',
        content: 'Título do Link',
      ),
      const Text(
        prefix: '(',
        suffix: ')',
        content: 'https://exemplo.com.br',
      ),
    ]);
  }

  void bulletedList() {
    _insert([
      const Text(
        prefix: '- ',
        suffix: '',
        content: 'Item',
      ),
    ]);
  }

  void numberedList() {
    _insert([
      const Text(
        prefix: '1. ',
        suffix: '',
        content: 'Item',
      ),
    ]);
  }

  void quote() {
    _insert([
      const Text(
        prefix: '> ',
        suffix: '',
        content: 'Citação',
      ),
    ]);
  }

  void strikethrough() {
    _insert([
      const Text(
        prefix: '~~',
        suffix: '~~',
        content: 'Riscado',
      ),
    ]);
  }

  void code() {
    _insert([
      const Text(
        prefix: '```dart\n',
        suffix: '\n```',
        content: '',
      ),
    ]);
  }

  void checkbox() {
    _insert([
      const Text(
        prefix: '- [ ] ',
        suffix: '',
        content: 'Item',
      ),
    ]);
  }

  void grid() {
    controller.text += '''
| Cabeçalho da tabela |  |
| --- | --- |
|  |  |
''';
  }

  void image() {
    _insert([
      const Text(
        prefix: '![',
        suffix: ']',
        content: 'Texto Alt',
      ),
      const Text(
        prefix: '(',
        suffix: ')',
        content: 'https://exemplo.com.br',
      ),
    ]);
  }
}

class Text {
  const Text({
    required this.prefix,
    required this.suffix,
    required this.content,
  });

  Text copyWith({String? prefix, String? suffix, String? content}) {
    return Text(
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      content: content ?? this.content,
    );
  }

  final String prefix;
  final String suffix;
  final String content;

  @override
  String toString() => '$prefix$content$suffix';
}
