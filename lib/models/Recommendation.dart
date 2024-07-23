class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
      name: "Ikramullah Khan",
      source: "Linkedin",
      text: "I am writing to wholeheartedly recommend Sameer for any opportunity he pursues in the field of Flutter development. As Sameer’s mentor during his tenure as a junior Flutter developer at Eziline Software House Pvt Ltd, I had the privilege of witnessing firsthand his remarkable growth, dedication, and talent." +
          "Throughout his time with us, Sameer consistently demonstrated a strong passion for learning and a relentless drive to excel in his role. He exhibited a keen understanding of Flutter development principles and techniques, and his ability to grasp complex concepts quickly was truly impressive. Sameer approached every task with enthusiasm and a desire to not only meet expectations but to exceed them"),
  Recommendation(
    name: "Maaz Khalid",
    source: "Linkedin",
    text:
        "Sameer is a proactive problem-solver, always staying updated with the latest trends and best practices in mobile development. Their ability to translate complex requirements into elegant and efficient code is exceptional. Additionally, his collaborative spirit and effective communication skills make him a valuable asset to any team" +
            "I highly recommend Sameer for any Flutter development role.",
  ),
  Recommendation(
    name: "Muhammad",
    source: "Flutter Developer",
    text: "I had the pleasure of working with Sameer on several mobile app projects, and I am continually impressed by their expertise and dedication. He possess a deep understanding of Flutter and Dart, consistently delivering high-quality, performant, and visually appealing applications",
  ),
];
