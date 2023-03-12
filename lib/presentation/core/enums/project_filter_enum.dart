enum ProjectFilterType {
  all,
  my,
  participating,
}
extension FilterExtension on ProjectFilterType {
  String get description {
    switch (this) {
      case ProjectFilterType.all:
        return 'Все проекты';
      case ProjectFilterType.my:
        return 'Мои проекты';
      case ProjectFilterType.participating:
        return 'Рабочие проекты';
    }
  }


}