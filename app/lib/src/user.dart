// #8 Создайте класс User, у которого есть поле email. Реализуйте два наследника данного класса AdminUser и GeneralUser. Реализуйте mixin над классом User,
// у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @. Например, если email пользователя user@mail.ru,
// то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>, у которого будет храниться
// список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод, который выведет почту всех пользователей,
// однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.

abstract class User {
  String email = "";
  User(this.email);

  void printEmail() {}
}

class AdminUser extends User with getMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User with getMailSystem {
  GeneralUser(super.email);
}

mixin getMailSystem on User {
  @override
  void printEmail() {
    print('#8 #email: $email');
  }

  void printAdminEmail() {
    var ss = email.substring(email.lastIndexOf("@") + 1);
    print('#8 #email: $ss');
  }
}

class UserManager<T extends User> {
  List<User> users = [];
  void add(User u) {
    users.add(u);
  }

  void removeUser(User u) {
    users.remove(u);
  }

  void printAll() {
    for (var u in users) {
      if (u is AdminUser) {
        u.printAdminEmail();
      } else {
        u.printEmail();
      }
    }
  }
}

void main(List<String> args) {
  var admin = AdminUser("1@email.ru");
  var general = GeneralUser("2@email.ru");
  var general2 = GeneralUser("3@email.ru");

  var listUser = UserManager();
  // add user
  listUser.add(admin);
  listUser.add(general);
  listUser.add(general2);
  // removeUser
  listUser.removeUser(general2);
  // printAll
  listUser.printAll();
}
