import 'package:whatsapp_ui_clone_1/Models/users_call_model.dart';
import 'package:whatsapp_ui_clone_1/Models/users_chat_model.dart';
import 'package:whatsapp_ui_clone_1/Models/users_profile_model.dart';
import 'package:whatsapp_ui_clone_1/Models/users_status_model.dart';

class Database{
  
  var userChatList = <UserChatModel>[
    UserChatModel('Hey Cool', 'Good Morning', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Ananya', 'its no secret that choosing', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Jaya', 'incredibly rewarding', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Ambar', 'you care about someone', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Varun', 'little help', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Candy', 'If you need a dash of inspiration', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Keer', 'To help you express just how ashgdashdgsdsaadda', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Anusha', 'I have you, my life is a better place.', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
    UserChatModel('Arti', 'I think that it is impossible', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png'), 
  ];


  var userCallList = <UserCallModel> [
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Ananya', 'video', 'incoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Ananya', 'voice', 'incoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Jaya', 'video', 'outcoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Jaya', 'video', 'incoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Anusha', 'voice', 'outcoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Keer', 'voice', 'outcoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Anusha', 'voice', 'outcoming', DateTime.now()),
    UserCallModel('https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Anusha', 'voice', 'incoming', DateTime.now()),
  ];

  
  var userStatusList = <UserStatusModel>[
    UserStatusModel('Satiya', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', false, 1, false),
    UserStatusModel('Anusha', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', true, 2, true),
    UserStatusModel('Candy', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', true, 1, false),
    UserStatusModel('Ananya', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', true, 3, true),
    UserStatusModel('Varun', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', true, 4, false),
    UserStatusModel('Ambar', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', true, 1, true)
  ];

  var userProfileList = <UsersProfile>[
    UsersProfile('Anusha', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Ananya', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Ambar', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Varun', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Candy', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Satiya', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Ganes', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Jaya', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Keer', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Kowsi', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Meena', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Kumar', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Siva', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
    UsersProfile('Kavi', 'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png', 'Hello hello Hello....'),
  ];
}