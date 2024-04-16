import 'package:flutter/material.dart';
import 'package:policoncert/screens/widgets/menu_widget.dart';

List<Menu> listMenu = [
  Menu(icon: const Icon(Icons.home, size: 30,), title: 'Inicio', url: '/'),
  Menu(icon: const Icon(Icons.account_box_rounded, size: 30), title: 'Mi perfil', url: '/perfil'),
  Menu(icon: const Icon(Icons.photo_rounded, size: 30,), title: 'Mis fotos', url: '/fotos'),
  Menu(icon: const Icon(Icons.video_library_rounded, size: 30,), title: 'Mis videos', url: '/videos'),
  Menu(icon: const Icon(Icons.web, size: 30,), title: 'Web', url: '/web'),
  Menu(icon: const Icon(Icons.phone_android_outlined, size: 30,), title: 'Botones', url: '/botones'),
];