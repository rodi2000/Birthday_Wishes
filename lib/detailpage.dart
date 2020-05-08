import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class DetailPage extends StatelessWidget {

  final String name;
  DetailPage(this.name);

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 400,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('images/$name/1.jpg'),
          AssetImage('images/$name/2.jpg'),
          AssetImage('images/$name/3.jpg'),
        ],
        autoplay: true,
        dotSize: 1.0,
        dotBgColor: Colors.transparent,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: TextStyle(fontFamily: 'Pacifico')),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(lines(name), textAlign: TextAlign.justify,style: (TextStyle(fontFamily: 'Patrick Hand' ,fontSize: 27, wordSpacing: 2.5))),
            ),
          )
        ],
      ),
    );
  }
}

String lines(name){
  if(name == 'Aquaman'){
    return 'The best part of friendship is when you call them for hanging around '
        'and they can\'t deny 😍, and that\'s what I like so much between us. '
        'Happiest quarantine birthday **Name**! Lots of love from us! ❤️';
  }else if(name == 'Black Panther'){
    return 'Hey Friend... Wishing you a very happy birthday Darling 😘 You are not only my friend '
        'but also my the wrost enemy👿 ... I still remember fun of our classroom... Because we are '
        'the crime partners most of the times ☠️...I know they are unforgettable memories...'
        'Those days will never come back...I really miss you so much **Name**... ♥️';
  }else if(name == 'Black Widow'){
    return 'Dear **Name**, I\'ve known you only for 5 years but it has been seems like I\'ve known you from childhood.'
        'Do You Know? What binds others with you is your positive attitude which is very rarely seen in '
        'this stressful earth, I am fortunate enough to have you in my life.'
        'You are a person who lives your life with full Joy and enthusiasm that attract everyone towards you. '
        'I\'ve  praising you a lot but dear Janu you earned it and you deserve it. Now comes to the memories, '
        'I\'ve never forget that our first sleepover had happened in your home. The group of our four remain '
        'incomplete without you. Whether it comes to sleepovers, Dodhiya classes, Friends Classes .. '
        'You\'ve  been always be there. The one who does not control her laugh that is only YOU who spreads '
        'more and more laugh surround us. That\'s why you are JOLLY PERSON for reason. '
        'Thank you for always being YOU.❤️ Happy Birthday Dear **Name**. '
        'May god bless you with lots and lots of love and happiness ❤️😘😊';
  }else if(name == 'Doctor Strange'){
    return 'Heyy **Name**...its ur quarantinewala Birthday...But we are trying to do something to make ur day '
        'memorable.I\'ve known you for last 3 years only but now u became my best friend and it is possible '
        'only because of u, because u are the good hearted person who always ready to help others and always'
        ' ready to do some crazy things and for adventures. I\'ve never forget those days when we are together'
        ' for whole day for our study...and  for us its picnic 😆😆. I have lots of memories of those days and '
        'now I miss all this....I wish u a Happiest Birthday Dear...🥰 May u achieve all the things u wish for '
        'always and stay happy and healthy... Keep smiling and also make others laugh too because you know that '
        'we are going to donate our lungs😅😅 May God bless you dear❤🥰';
  }else if(name == 'Flash'){
    return 'Hey *Name** ❤️, I can\'t stay serious when i\'m with you. You are the true meaning of best friend.'
        'I will always be greatful for our friendship. I promise that we\'ll meet soon '
        '\nHappy Birthday **Name**🎂'
        '\nWish you joy, peace, love, happiness around the world 😇';
  }else if(name == 'Hulk'){
    return 'So here is ur B\'day ... U r the kind hearted person **Name** nd I must say you are my strange things partner...'
        'I know I irritate you so much in our reading time but i like to irritate you nd I m missing you so much '
        'nd our fun too.. We\'ll meet soon after this lockdown nd will celebrate ur bday nd yes will make a '
        'dance video too..💕';
  }else if(name == 'Iron-Man'){
    return 'Wish you a many many happy returns of the day, **Name**...! 🥳'
        'We are sharing the strong bond of friendship from last couple of years...'
        'But, you know....It seems like we are the friends from childhood...'
        'You have made our connection so cosy with your liveliest and playful interaction that '
        'it lead me to share a few secrets with you...'
        'However, I must say...You are very good at keeping secrets... 😉'
        'Anyway, May you be gifted with life’s biggest joys and never-ending bliss. 🤗'
        'HAPPY BIRTHDAY ❣️';
  }else if(name == 'Spider-Man'){
    return ' The impact you’ve made on me is worth a million birthday spoils and more.'
        ' Happy birthday – may you be blessed with fulfilled dreams and happy thoughts.';
  }else if(name == 'Super-Man'){
    return 'Happy birthday **Name** ! 🥳'
        'I always cherish the memories that we all have spent together, '
        'Whether they have been of Friends Classes or our College celebrations or '
        'Those priceless Navratri nights or unforgettable,never-ending countless Hangouts.'
        'Wish, you live long and we keep digging mine of our unexplored journey, for next so many years to come'
        '💛 Together... Forever... 💛';
  }else if(name == 'Thor'){
    return 'Sending you smiles for every moment of your special day…Have a wonderful '
        'time and a very happy birthday!';
  }else
    return '';
}