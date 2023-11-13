class Hadith{

  final int book ;
  final int number;
  final String content ;

  Hadith( { required this.content, required this.book,required this.number,});
  factory Hadith.fromJson(Map<String,dynamic> json){
    return Hadith(content: json['text'], book: json['reference']['book'], number: json['reference']['hadith']);
  }
}