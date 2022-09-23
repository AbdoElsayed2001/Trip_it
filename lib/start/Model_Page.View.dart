

class Model {
  String image, title,subtitle;


  Model({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

class OnBoardingController {
  int currentPage = 0;
  List<Model> model = [
    Model(
         title: "Plan Your Trip",
        image: 'assets/Vector Image.png',
        subtitle:
       ' Plan your trip choose your destination. \nPick the best place for your holiday.'),
    Model(
         title: 'Select The Date',
        image: 'assets/Vector Image2.png',
        subtitle: 'Select the day,book.your ticket We give\n you the price. We guarantied!'),
    Model(
         title: 'Enjoy Your Trip',
        image: 'assets/Vector Image3.png',
        subtitle:
        "Enjoy your holiday! don't forget to take \n a photo and share to the world"),];
}
