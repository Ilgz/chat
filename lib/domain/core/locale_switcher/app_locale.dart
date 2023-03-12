mixin AppLocale {
  static const String serverError = 'serverError';
  static const String emptyValue = 'emptyValue';
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String signOut = 'signOut';
  static const String email = 'email';
  static const String password = 'password';
  static const String username = 'username';
  static const String invalidEmail = 'invalidEmail';
  static const String shortPassword = 'shortPassword';
  static const String confirmPassword = 'confirmPassword';
  static const String doNotHaveAnAccount = 'doNotHaveAnAccount';
  static const String alreadyHaveAnAccount = 'alreadyHaveAnAccount';
  static const String emailAlreadyInUse = 'emailAlreadyInUse';
  static const String passwordsDoNotMatch = 'passwordsDoNotMatch';
  static const String invalidEmailAndPasswordCombination =
      'invalidEmailAndPasswordCombination';
  static const String usernameMustBeMinimum3Characters =
      'usernameMustBeMinimum3Characters';
  static const String chat = 'chat';
  static const String noChatFound = 'noChatFound';
  static const String noMessagesYet = 'noMessagesYet';
  static const String typeYourMessage = 'typeYourMessage';
  static const String profile = 'profile';

  static const Map<String, dynamic> EN = {
    serverError: 'Server error',
    emptyValue: 'Empty value',
    login: 'Login',
    signUp: 'Sign up',
    signOut: 'Sign out',
    email: 'Email',
    password: 'Password',
    username: 'Username',
    invalidEmail: 'Invalid email',
    shortPassword: 'Short password',
    confirmPassword: 'Confirm password',
    doNotHaveAnAccount: 'Don\'t have an account ? ',
    alreadyHaveAnAccount: 'Already have an account ? ',
    emailAlreadyInUse: 'Email already in use',
    passwordsDoNotMatch: 'Passwords do not match',
    invalidEmailAndPasswordCombination:
        'Invalid email and password combination',
    usernameMustBeMinimum3Characters:
        'Username must be minimum 3 characters length',
    chat: 'Chat',
    noChatFound: 'No chat found',
    noMessagesYet: 'No messages yet',
    typeYourMessage: 'Type your message...',
    profile: 'Profile',
  };

  static const Map<String, dynamic> RU = {
    serverError: 'Ошибка сервера',
    emptyValue: 'Пустое значение',
    login: 'Войти',
    signUp: 'Зарегистрироваться',
    signOut: 'Выйти',
    email: 'Электронная почта',
    password: 'Пароль',
    username: 'Имя пользователя',
    invalidEmail: 'Неправильный адрес электронной почты',
    shortPassword: 'Короткий пароль',
    confirmPassword: 'Подтвердите пароль',
    doNotHaveAnAccount: 'Нет аккаунта? ',
    alreadyHaveAnAccount: 'Уже есть аккаунт? ',
    emailAlreadyInUse: 'Адрес электронной почты уже используется',
    passwordsDoNotMatch: 'Пароли не совпадают',
    invalidEmailAndPasswordCombination:
        'Неправильный адрес электронной почты или пароль',
    usernameMustBeMinimum3Characters:
        'Имя пользователя должно содержать минимум 3 символа',
    chat: 'Чат',
    noChatFound: 'Чаты не найдены',
    noMessagesYet: 'Нет сообщений',
    typeYourMessage: 'Введите сообщение...',
    profile: 'Профиль'
  };
}
