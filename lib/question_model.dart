class Question {
  final String questionText;
  final List<Answers> answerList;

  Question(this.questionText, this.answerList);

}
class Answers{
final String answerText;
final bool isCorrect;

  Answers(this.answerText, this.isCorrect);

}

List<Question> getQuestions(){

  List<Question> list=[];
   list.add(
    Question("Une fraction des individus prélevés dans un groupe d'individus faisant l'objet d'une étude statistique est: ", [
      Answers("Echantillon", true),
      Answers("Population", false),
      Answers("Echantillonage", false),
      Answers("Données", false),
    ]));
    list.add(
      Question("Propriété que possèdent tous les individus d'un groupe", 
      [
        Answers("Echantillonage aléatoire", false),
        Answers("Tirage", false),
        Answers(" Fréquence", false),
        Answers("Caractère", true),
      ])
    );
    list.add(
      Question("On considère un lot de dix machines à laver. Chaque machine a une probabilité de tomber en panne de 1%. Quelle est la loi de probabilité suivie par la variable aléatoire 'Nombre de machine en panne'? On considère qu'il y a indépendance entre les différentes machines.", 
      [
        Answers("Loi Binomiale ", false),
        Answers("Loi de Poisson", false),
        Answers("Loi Normale ", false),
        Answers("Loi de Bernouillie", true),
      ])
    );
  list.add(
    Question("Une machine produit des objets dont 3% sont de mauvaise qualité. Un client reçoit un lot de 400 objets. La variable F qui a chaque echantillon de 400 objets associe le pourcentage de defectueux suit approximativement:", 
    [
      Answers("Une loi binomiale", false),
      Answers("Une loi de poisson", false),
      Answers("Une loi normale", true),
      Answers("Une distribution d'échantillonage", false),
    ]));
    list.add(
      Question(" Parmi les propriétés suivantes définissant une loi de Bernouilli, laquelle est fausse ",
      [
        Answers("La variable statistique ne peut prendre que deux valeurs", false),
        Answers("La probabilité associée vaut soit 1 soit 0", false),
        Answers("La variable statistique est discrète", true),
        // Answers("", false),
      ])
    );
    
    
    list.add(
      Question("On donne P(B)=0.1;P(B/A)=0.4 et P(A)=0.2. Alors P(A/B) est égale à:",
      [
        Answers("0.08", false),
        Answers("0.8", false),
        Answers("0.5", true),
        Answers("0.4", false),
      ])
    );
    list.add(
      Question("Une machine produit des objet dont 3% sont de mauvaise qualité. Un client reçoit un lot de 400 objets. La probabilité d'avoir plus de 5% d'objets défectueux dans ce lot est:",
      [
        Answers("0.6", false),
        Answers("0.009", false),
        Answers("0.015", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("On lance cinq fois de suite une pièce de monnaie parfaitement équilibré. La probabilité d'avoir exactement trois fois la face pile est:",
      [
        Answers("1", false),
        Answers("(1/5)^5", false),
        Answers("(5/16)", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("X est une variable aléatoire qui suit la loi normale centré réduite alors p(2<=T<=2.24) est égale à:",
      [
        Answers("0.9772", false),
        Answers("0.025", false),
        Answers("0.0103", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("X est une variable aléatoire qui suit la loi normale centré réduite alors p(-1.96<=T<=2) est égale à:",
      [
        Answers("0.9522", false),
        Answers("1.952", false),
        Answers("0.9652", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("Un dé truqué numéroté de 1 à 6 suit la probabilité suivante: p(X=1)=p(X=2)=p(X=3)=0.2; p(X=4)=0.05;p(X=5)=0.15;p(X=6)=0.2",
      [
        Answers("p(X>3)=0.5", false),
        Answers("p(2<=X<=5)=0.4", false),
        Answers("p(X<=2)=0.4", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("On lance un dé non pipé à six faces et on s'intéresse au succès 'Obtenir le numéro 5'. On lance 18 fois ce dé et on designe par X la variable aléatoire égale au nombre de 5 obtenu, alors l'écart-type de X est:",
      [
        Answers("√(5/6)", false),
        Answers("√(3)", false),
        Answers("√(5/2)", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("Une expérience aléatoire est :",
      [
        Answers("Un jeu dont on ne connaît pas les issues", false),
        Answers("Un jeu n’ayant pas d’issue", false),
        Answers("Une expérience ou un jeu dont les issues sont imprévisibles", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("Si P(A)=0 ",
      [
        Answers("A est un évènement improbable", false),
        Answers("A est un évènement certain", false),
        Answers("A est un évènement incertain", true),
        Answers("A est un évènement nul", false),
      ])
    );
    list.add(
      Question("Une expérience au cours de laquelle, on lance un dé équilibré de 6 faces possèdent 6 issues possibles",
      [
        Answers(" Faux", false),
        Answers(" Vrai", true),
        // Answers("", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("On lance simultanément 3 pièces de monnaie et on note A l’évènement : « on obtient au moins une fois « pile » ». L’évènement contraire est ",
      [
        Answers("On n’obtient jamais 'pile'", false),
        Answers(" On n’obtient que des 'faces'", false),
        Answers(" On obtient au moins 2 fois 'pile'", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("Une urne contient 2 boules rouges notées R 1 et R 2 et une boule noire notée N. On choisit au hasard une première boule, on la remet dans l'urne, puis on choisit une deuxième boule. On obtient ainsi un couple de boules. On suppose que chacun des couples a la même probabilité d'être obtenu. La probabilité d'obtenir 2 boules rouges est: ",
      [
        Answers("1/9", false),
        Answers("1/6", false),
        Answers("4/9", true),
        Answers("1/3", false),
      ])
    );
    
    list.add(
      Question("X est une variable aléatoire qui suit une loi binomiale de paramètres n et p. X est une variable aléatoire",
      [
        Answers("Réelle", false),
        Answers("Continue", false),
        Answers("Discrète", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("X est une variable aléatoire qui suit une loi binomiale de paramètres n et p. L’espérance mathématique E(X) de X est donnée par",
      [
        Answers("E(X ) = npq", false),
        Answers("E(X ) = np", false),
        // Answers("Discrète", true),
        // Answers("", false),
      ])
    );
    list.add(
      Question("Dans un jeu de 32 cartes, on en tire une au hasard. Toutes les cartes ont la même probabilité d'être tirées. La probabilité d'obtenir un as ou un carreau est",
      [
        Answers("3/8", false),
        Answers("1/4", false),
        Answers("11/32", true),
        Answers("1/32", false),
      ])
    );



  
return list;
}