class ExpertMember {
  final int id;
  final String name;
  final String specialization;
  final String image;
  final double rating;
   bool? isFav;

   ExpertMember( {required this.id,
    required this.name,
    required this.specialization,
    required this.image,
    required this.rating,
    this.  isFav,
  });
}
