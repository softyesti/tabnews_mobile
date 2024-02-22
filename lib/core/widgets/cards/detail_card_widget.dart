import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/markdown_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';

class DetailCardWidget extends StatelessWidget with ThemeMixin {
  const DetailCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = getColors();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            TextWidget('Autor do post', size: TextWidgetSizes.titleMedium),
            TextWidget(' • ', size: TextWidgetSizes.titleMedium),
            TextWidget('2 dias atrás', size: TextWidgetSizes.titleMedium),
          ],
        ),
        TextWidget(
          '8 min de leitura',
          color: colors.text.withOpacity(0.6),
        ),
        const SpacerWidget(size: SpacerWidgetSizes.small),
        const CardWidget(child: MarkdownWidget(data: _data)),
      ],
    );
  }
}

const _data = '''
        🚧 Projeto em construção 🚧

# HairBiz

HairBiz é um projeto para o gerenciamento de barbearias e salões de beleza que visa facilitar o acesso dos usuários a aos estabelecimentos. A aplicação será dividia em duas partes: o HairBiz Client é voltado para os novos clientes ou os já existentes e o HairBiz Pro para os donos/admins gerenciarem seus negócios.

[HairBiz Pro](https://github.com/softyesti/hairbiz_pro_client)

O projeto possui dois back-ends, um em Golang(atual) e outro em Java(antigo). Ambos são independentes, ou seja, você deverá usar um ou outro, portando, fique a vontade para usar e continuar a desenvolver em qualquer uma das duas linguagens.

[HairBiz Go API](https://github.com/softyesti/hairbiz_remote_go_api)

[HairBiz Java API](https://github.com/softyesti/hairbiz_remote_java_api)

## HairBiz Client

O HairBiz Client é um front-end multiplataforma escrito em Flutter/Dart que visa permitir que os usuários vejam informações relevantes sobre os estabelecimentos como:

* Estabelecimentos próximos
* Horários de atendimento
* Localização
* Portfólio
* Serviços
* Profissionais

Além de permitir que os usuários executem algumas funções como:

* Fazer buscas e filtros
* Favoritar estabelecimentos
* Visualizar as informações
* Gerenciar os agendamentos
* Realizar pagamentos online
* Visualizar notificações

## Tecnologias

* [Flutter/Dart](https://flutter.dev/)
* [Kotlin](https://kotlinlang.org/)
* [Swift](https://www.apple.com/br/swift/)
* [Firebase](https://firebase.google.com/?hl=pt)

Dependências do projeto: [pubspec.yaml](https://github.com/softyesti/hairbiz_client/blob/main/pubspec.yaml)

## Preparação

Instale e configure os seguintes softwares:

* [Android Studio](https://developer.android.com/studio?authuser=1&hl=pt-br)
* [Flutter/Dart](https://docs.flutter.dev/get-started/install)
* [Firebase CLI](https://firebase.google.com/docs/flutter/setup?hl=pt-br&platform=android)
* [FlutterFire](https://firebase.google.com/docs/flutter/setup?hl=pt-br&platform=android)

### Firebase
1. Crie um projeto no Firebase

<img src="image/README/1708455768564.png" alt="" />

2. Habilite as autenticações

<img src="image/README/1708455996236.png" alt="" />
<img src="image/README/1708455924039.png" alt="" />

3. Habilite o storage

<img src="image/README/1708456249574.png" alt="" />
<img src="image/README/1708456259893.png" alt="" />
<img src="image/README/1708456264834.png" alt="" />

## Começando

1. Clone o repositório do projeto

```console
git clone git@github.com:softyesti/hairbiz_client.git
```

2. Dentro da pasta, rode o FlutterFire e escolha o projeto do Firebase criado anteriormente assim como as plataformas em que o projeto irá rodar.

```console
flutterfire configure
```

3. Crie um arquivo .env com os seguintes campos:

* Certifique-se de estar com o backend rodando localmente ou remotamente

```console
API_HOST=192.168.0.5 # host do backend
API_PORT=8080 # porta do backend
API_USE_HTTPS=false # se é https ou não
API_USE_PORT=true # se possui porta
```

4. Rode a aplicação utilizando a linha de comando ou seu editor de código/IDE preferido.

* Certifique-se de injetar o .env em seu ambiente antes de executar.

## Imagens

<table>
  <tr>
    <td>
      <img src="image/README/1708452828768.png" alt="" width="200px" />
    </td>
    <td>
      <img src="image/README/1708453216670.png" alt="" width="200px" />
    </td>
    <td>
      <img src="image/README/1708453221764.png" alt="" width="200px" />
    </td>
  </tr>
  <tr>
    <td>
      <img src="image/README/1708453225547.png" alt="" width="200px" />
    </td>
    <td>
      <img src="image/README/1708453228092.png" alt="" width="200px" />
    </td>
  </tr>
</table>

## Autores

| [<img loading="lazy" src="https://avatars.githubusercontent.com/u/68485885?v=4" width=115><br><sub>João Sereia</sub>](https://github.com/josereia) | [<img loading="lazy" src="https://avatars.githubusercontent.com/u/91231134?v=4" width=115><br><sub>Brian Schier Duarte</sub>](https://github.com/BDu4rTe) |
| :---: | :---: |

## Licença

HairBiz Client é licenciado por [AGPL-3.0](https://github.com/softyesti/hairbiz_client/blob/main/LICENSE)

      
      ''';
