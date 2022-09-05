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
    Question("Quelle est la longueur maximale toléré d'un cable UTP de categorie 5? ", [
      Answers("10", false),
      Answers("50", false),
      Answers("100", true),
      Answers("500", false),
    ]));
    
    list.add(
      Question("Quel est le support de transmission qui offre le minimum d'aténuation pour un signal", 
      [
        
        Answers("Paire de cuivre", false),
        Answers("Cable Coaxial ", false),
        Answers("Fibre Optique ", true),
        
      ])
    );
  list.add(
    Question("Parmi ces denominations, laquelle cache un nom de connecteur", 
    [
      Answers("Coaxial", false),
      Answers("ST", false),
      Answers("RJ-11", true),
      

    ]));
    list.add(
      Question("Un cable categorie 5 est un cable:",
      [
        Answers("Cable coaxial fin", false),
        Answers("Cable coaxial épais", false),
        Answers("Cabl coaxial à paire torsadée", true),
       
      ])
    );
    
    
    list.add(
      Question("Quel element definit l'interface principale utilisée pour une configuration initiale d'un routeur CISCO",
      [
        
        Answers("Une interface AUX", false),
        Answers("Une interface Ethernet", false),
        Answers("Une interface serie", false),
        Answers("Une interface console", true),
      ])
    );
    list.add(
      Question("Pourquoi privilégier le cablage en cuivre pour relier des batiments?",
      [
        Answers("Les longueurs des cables sont supérieures", true),
        Answers("L'installation revient moins chère", false),
        Answers("Les pertubations electromagnétiques et radioélectriques sont limités", true),
        Answers("Les branchements durent longtemps", false),
        Answers("Il dispose d'un potentiel de bande passante superieure", true),
      ])
    );
    list.add(
      Question("Un administrateur reseau est chargé d'utiliser un support reseau pouvant sétendre jusqu'à 100 mètres sans faire appel à des répéteurs. Le support choisi doit etre bon marché et facile à installer. L'installation est prévue dans un batiment existant ou l'espace pour le cablage est limité. Quel type de support répondrait le mieux à ces conditions",
      [
        Answers("Du cablage STP", false),
        Answers("Du cablage à paires torsadée non blindées", true),
        Answers("Du cablage coaxial", false),
        Answers("De la fibre monomode", false),
        Answers("De la fibre multimode", false),
      ])
    );
    list.add(
      Question("Que signifie le terme'attenuation' en communication de données",
      [
        
        Answers("Perte de la force du signal à mesure que la distance augmente", true),
        Answers("Durée de transfert du signal entre sa source et sa destination", false),
        Answers("Fuite des signaux d'une paire de cable à l'autre", false),
        Answers("Renforcement d'un signal par un périphérique", false),
    
      ])
    );
    list.add(
      Question("Combien d'adresses hote peuvent etre attribué sur chaqe sous-reseau si l'adresse réseau 130.68.0.0 est utilisées avec le masque de sous-reseau 255.255.248.0, NB: Utilisable",
      [
        Answers("30", false),
        Answers("256", false),
        Answers("2046", true),
        Answers("2048", false),
        Answers("4096", false),
      ])
    );
    list.add(
      Question("Quel masque de sous-reseau doit etre attribué à l'adresse reseau 192.168.32.0 pour obtenir 254 adresses d'hotes utilisables par sous-reseau?",
      [
        Answers("255.255.0.0", false),
        Answers("255.255.255.0", true),
        Answers("255.255.254.0", false),
        Answers("255.255.248.0", false),
      ])
    );
    list.add(
      Question("Une entreprise compte scinder son reseau en sous-reseau comprenant chacun un nombre maximale de 27 hotes. Quel masque de sous-reseau faut-il employer pour heberger le nombre d'hotes necessaires et utiliser le plus grand nombre d'adresses possibles dans chaque sous-reseau?",
      [
        Answers("255.255.255.0", false),
        Answers("255.255.255.192", false),
        Answers("255.255.255.224", true),
        Answers("255.255.255.240", false),
        Answers("255.255.255.248", false),
      ])
    );
    list.add(
      Question("Quel type de cable reseau est utilisé ente un terminal et un port console?",
      [
        Answers("Un cable croisé", false),
        Answers("Un cable droit", false),
        Answers("Un cable console", true),
        Answers("Un cable raccordement", false),
        
      ])
    );
    list.add(
      Question("Une entreprise à succursales multiples utilise l'adresse IP 196.179.110.0. Pour une gestion plus fine de ces sous-reseaux, le responsable informatique desir pourvoir affecter une adresse IP propre à chaque sous-reseau des 10 succursales. 1-De quelle classe d'adresse s'agit-il?",
      [
        Answers("Classe A", false),
        Answers("Classe B", false),
        Answers("Classe C", true),
        
        
      ])
    );
    list.add(
      Question("Quel est la valeur du masque de sous réseau correspondant à ce besoin",
      [
        Answers("255.255.255.248", false),
        Answers(" 255.255.255.240", true),
        Answers("255.255.255.246", false),
       
      ])
    );
    list.add(
      Question("3-Combien de machines chaque sous-reseau pourra-t-il comporter?",
      [
        Answers("12", false),
        Answers("14", true),
        Answers("16", false),
   
      ])
    );
   



  
return list;
}