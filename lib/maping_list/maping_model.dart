class MappingModel {
  String nama;
  int umur;
  String hobi;
  List<String> favFood;

  MappingModel(
      {required this.nama,
      required this.umur,
      required this.hobi,
      required this.favFood});
}

List<MappingModel> myList = [
  MappingModel(
      nama: 'nama', umur: 21, hobi: 'hobi', favFood: ['nasgor', 'bakso'])
];
