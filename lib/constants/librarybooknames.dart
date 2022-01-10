var booksList = [
  {
    "id": 1,
    "title": "HAMLET",
    "author": "William shakespeare",
    "imageUrl": "https://m.media-amazon.com/images/I/41+Xl4QLr0L.jpg",
    "quantity": 5,
    "description":
        "Hamlet is a story of how the ghost of a murdered king comes to haunt the living with tragic consequences. A vengeful ghost and a brother's murder, dominate the gloomy landscape of Hamlet's Denmark. Hamlet is a story of how the ghost of a murdered king comes to haunt the living with tragic consequences.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 2,
    "title": "alice's adventures in wonderland",
    "author": "Lewis Carroll",
    "imageUrl":
        "https://cdn.waterstones.com/bookjackets/large/9780/1413/9780141321073.jpg",
    "quantity": 4,
    "description":
        "Alice's Adventures in Wonderland by Lewis Carroll is a story about Alice who falls down a rabbit hole and lands into a fantasy world that is full of weird, wonderful people and animals. It is classic children's book that is also popular with adults.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 3,
    "title": "don quixote",
    "author": "miguel de cervantes",
    "imageUrl":
        "https://kbimages1-a.akamaihd.net/c1f89dc7-4039-4135-a2fe-af0404183c9a/1200/1200/False/don-quixote-129.jpg",
    "quantity": 1,
    "description":
        "The plot revolves around the adventures of a noble (hidalgo) from La Mancha named Alonso Quixano, who reads so many chivalric romances that he loses his mind and decides to become a knight-errant (caballero andante) to revive chivalry and serve his nation, under the name Don Quixote de la Mancha.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 4,
    "title": "adventures of huckleberry finn ",
    "author": "Mark Twain",
    "imageUrl": "https://m.media-amazon.com/images/I/51E7yd+G-cL.jpg",
    "quantity": 1,
    "description":
        "Adventures of Huckleberry Finn is one of Mark Twain's best-known and most important novels. The novel tells the story of Huckleberry Finn's escape from his alcoholic and abusive father and Huck's adventurous journey down the Mississippi River together with the runaway slave Jim.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 5,
    "title": "The Iliad",
    "author": "Gareth Hinds",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/A1ZctABOB8L.jpg",
    "quantity": 2,
    "description":
        "The Iliad is an epic poem in 24 books that is traditionally attributed to the ancient Greek poet Homer. The epic is about the wrath of the Greek hero Achilles. The subject of this poem is the Trojan War.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 6,
    "title": "Macbeth ",
    "author": "William shakespeare",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71mwfvxaqsL.jpg",
    "quantity": 2,
    "description":
        "Macbeth Summary. Three witches tell the Scottish general Macbeth that he will be King of Scotland. Encouraged by his wife, Macbeth kills the king, becomes the new king, and kills more people out of paranoia. Civil war erupts to overthrow Macbeth, resulting in more death.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 7,
    "title": "Romeo and Juliet",
    "author": "William shakespeare",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/711TxX8cdlL.jpg",
    "quantity": 10,
    "description":
        "Romeo and Juliet Summary. An age-old vendetta between two powerful families erupts into bloodshed. A group of masked Montagues risk further conflict by gatecrashing a Capulet party. A young lovesick Romeo Montague falls instantly in love with Juliet Capulet, who is due to marry her father's choice, the County Paris.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 8,
    "title": "Treasure Island",
    "author": "robert louis stevenson ",
    "imageUrl":
        "https://kbimages1-a.akamaihd.net/bbb881d4-1c64-4c12-8b8d-e0461cf0419f/1200/1200/False/treasure-island-247.jpg",
    "quantity": 13,
    "description":
        "Treasure Island is a book by Robert Louis Stevenson. It's a tale about a boy who has a treasure map and goes to an island to find the treasure - but the only problem is is that there are pirates on the ship and they want the treasure! ... The book brings the whole family together and really gets us going.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 9,
    "title": "Wuthering heights",
    "author": "Emily Bronte",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91XdM7eQiOL.jpg",
    "quantity": 12,
    "description":
        "Perhaps the most haunting and tormented love story ever written, Wuthering Heights is the tale of the troubled orphan Heathcliff and his doomed love for Catherine Earnshaw. ... Through Catherine's betrayal of Heathcliff and his bitter vengeance, their mythic passion haunts the next generation even after their deaths.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 10,
    "title": "julius caesar",
    "author": "William shakespeare",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71JpHWH6cLL.jpg",
    "quantity": 25,
    "description":
        "Julius Caesar Summary. Jealous conspirators convince Caesar's friend Brutus to join their assassination plot against Caesar. To stop Caesar from gaining too much power, Brutus and the conspirators kill him on the Ides of March. ... Brutus and his friend Cassius lose and kill themselves, leaving Antony to rule in Rome.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 11,
    "title": "the merchant of venice",
    "author": "William shakespeare",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71ot2ctZ3mL.jpg",
    "quantity": 2,
    "description":
        "Antonio, an antisemitic merchant, takes a loan from the Jew Shylock to help his friend to court Portia. Antonio can't repay the loan, and without mercy, Shylock demands a pound of his flesh. The heiress Portia, now the wife of Antonio's friend, dresses as a lawyer and saves Antonio.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 12,
    "title": "king lear",
    "author": "William shakespeare",
    "imageUrl": "https://images.penguinrandomhouse.com/cover/9780553212976",
    "quantity": 13,
    "description":
        "Lear, the aging king of Britain, decides to step down from the throne and divide his kingdom evenly among his three daughters. First, however, he puts his daughters through a test, asking each to tell him how much she loves him. Goneril and Regan, Lear's older daughters, give their father flattering answers.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 13,
    "title": "the pilgrim's progress",
    "author": "John Bunyan",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91FXl+Ys3gL.jpg",
    "quantity": 1,
    "description":
        "The Pilgrim's Progress, religious allegory by the English writer John Bunyan, published in two parts in 1678 and 1684. The work is a symbolic vision of the good man's pilgrimage through life. At one time second only to the Bible in popularity, The Pilgrim's Progress is the most famous Christian allegory still in print.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 14,
    "title": "uncle bernac",
    "author": "Arthur Conan Doyle",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/51AhyMMccjL._SX258_BO1,204,203,200_.jpg",
    "quantity": 1,
    "description":
        "Looking for a replacement to Sherlock Holmes after the author had killed him off in 1894, Doyle wrote this murder mystery in the dying years of the 19th century. Set in Napoleon's era, it involves a Frenchman returning to his native land to join the Emperor's ranks.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 15,
    "title": "the emerald city of oz ",
    "author": "L. Frank Baum",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/61ZrtESF7YL.jpg",
    "quantity": 5,
    "description":
        "Originally published on July 20, 1910, it is the story of Dorothy Gale and her Uncle Henry and Aunt Em coming to live in Oz permanently. While they are toured through the Quadling Country, the Nome King is assembling allies for an invasion of Oz.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 16,
    "title": "black beauty ",
    "author": "Anna Sewell",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/719pQNWuklL.jpg",
    "quantity": 5,
    "description":
        "Black Beauty is the title character and narrator of the story. He's a well-bred horse, the son of a wise old mare named Duchess and said to be the grandson of a famous racehorse. He's named for his shiny black coat and also has a white star on his forehead and a single white hoof.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 17,
    "title": "the idea of the university",
    "author": "John Henry Newman",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1347567313l/449250.jpg",
    "quantity": 13,
    "description":
        "What is the book the idea of the university about? What is this idea of the university? ... Drawing on these essential questions, this volume traces the historical transformations of the university in medieval Europe and explores current debates on its existence and sustenance in a neoliberal India.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 18,
    "title": "the castle of otranto",
    "author": "Horace Walpole",
    "imageUrl": "https://m.media-amazon.com/images/I/51+TZ-hQhdL.jpg",
    "quantity": 4,
    "description":
        "Plot. The Castle of Otranto tells the story of Manfred, lord of the castle, and his family. The book begins on the wedding-day of his sickly son Conrad and princess Isabella. Shortly before the wedding, however, Conrad is crushed to death by a gigantic helmet that falls on him from above.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 19,
    "title": "the song of the lark ",
    "author": "Willa Cather",
    "imageUrl":
        "https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/4864/9780486437002.jpg",
    "quantity": 5,
    "description":
        "PLOT:Set in the 1890s in Moonstone, a fictional town in Colorado, The Song of the Lark is the self-portrait of an artist in the making. The ambitious young heroine, Thea Kronborg leaves her hometown to go to Chicago to fulfill her dream of becoming a well-trained pianist, a better piano teacher.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 20,
    "title": "heavenly footman",
    "author": "John Bunyan",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81RXYjX3sPL.jpg",
    "quantity": 5,
    "description":
        "The Heavenly Footman; Or, A Description of the Man That Gets to Heaven With Directions How to Run So as to Obtain  is a classic Christian life text by John Bunyan. Solomon saith, that the desire of the slothful killeth him; and if so, what will slothfulness itself do to those that entertain it? The proverb is, He that sleepeth in harvest is a son that causeth shame: and this I dare be bold to say, no greater shame can befall a man, than to see that he hath fooled away his soul, and sinned away eternal life.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 21,
    "title": "king henry vi part 1 ",
    "author": "William Shakespeare",
    "imageUrl": "https://m.media-amazon.com/images/I/51Yb9D1ee8L.jpg",
    "quantity": 5,
    "description":
        "Henry VI, Part 1 is an uncompromising celebration of early English nationalism that contrasts the English with the French, portrayed here as effeminate and scheming. A boy king, Henry VI, is on the English throne, and the indomitable Talbot leads the English cause in France.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 22,
    "title": "king henry vi part 2 ",
    "author": "William Shakespeare",
    "imageUrl": "https://m.media-amazon.com/images/I/51bdtlv1a9L.jpg",
    "quantity": 1,
    "description":
        "Henry VI Part II, written around 1591 - 92, is part of Shakespeare's trilogy centred on the Wars of the Roses. The play focuses on a murder plot, a rebellion and the further divide between the Lancastrians and Yorkists.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 22,
    "title": "king henry vi part 3",
    "author": "William Shakespeare",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91JAKAiiA5L.jpg",
    "quantity": 5,
    "description":
        "Henry VI Part 3 Summary. After York's claims to the throne, Henry changes the succession and makes York his heir, disinheriting his own son. Henry's queen kills York, and York's son Edward seizes the throne. Henry is imprisoned several times and eventually killed by King Edward's brother, Richard.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 23,
    "title": "come and welcome to jesus christ",
    "author": "John Bunyan",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91TYxIjjHtL.jpg",
    "quantity": 5,
    "description":
        "Of all John Bunyan's writings, Come and Welcome to Jesus Christ most fully expresses his delight and joy in the free and gracious welcome given to sinners by Jesus Christ. It is a thorough exposition of John 6:37: All that the Father giveth me shall come to me; and him that cometh to me I will in no wise cast out.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 24,
    "title": "madama butterfly",
    "author": "giacomo puccini",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91XpZQoWVGL.jpg",
    "quantity": 6,
    "description":
        "Madam Butterfly (in Italian Madama Butterfly) is one of opera's most enduring tales of unrequited love. Puccini's poignant score follows the tragic tale of Cio Cio San, a young Japanese girl who falls in love with American naval officer Pinkerton, with devastating consequences.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 25,
    "title": "the prince and the pauper",
    "author": "Mark Twain",
    "imageUrl": "https://m.media-amazon.com/images/I/51YLNheSz4L.jpg",
    "quantity": 6,
    "description":
        "Set in 1547, it tells the story of two young boys who were born on the same day and are identical in appearance: Tom Canty, a pauper who lives with his abusive, alcoholic father in Offal Court off Pudding Lane in London, and Edward VI of England, son of Henry VIII of England.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 26,
    "title": "a storm of swords",
    "author": "George R. R. Martin",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91-KBK-9K2L.jpg",
    "quantity": 6,
    "description":
        "A Storm of Swords continues the story where A Clash of Kings ended. The novel describes the increasingly vicious War of Five Kings in Westeros, Daenerys's strengthening forces in the East, and the oncoming threat of the Others, a ghostly army that is nearly invincible.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 27,
    "title": "mathematics for the million",
    "author": "Lancelot Hogben",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81MTJxaxQJL.jpg",
    "quantity": 6,
    "description":
        "Mathematics is the science and study of quality, structure, space, and change. Mathematicians seek out patterns, formulate new conjectures, and establish truth by rigorous deduction from appropriately chosen axioms and definitions.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 28,
    "title": "Sula",
    "author": "Toni Morrison",
    "imageUrl":
        "data:image/jpeg;base64,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",
    "quantity": 6,
    "description":
        "Two friends who become something worse than enemies. In this brilliantly imagined novel, Toni Morrison tells the story of Nel Wright and Sula Peace, who meet as children in the small town of Medallion, Ohio. Their devotion is fierce enough to withstand bullies and the burden of a dreadful secret.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 29,
    "title": "Enemies, A Love Story",
    "author": "Isaac Bashevis Singer",
    "imageUrl":
        "https://d3525k1ryd2155.cloudfront.net/h/670/598/1393598670.0.x.jpg",
    "quantity": 6,
    "description":
        "Set in New York City in 1949, the novel follows Holocaust survivor Herman Broder. Throughout the war he survived in a hayloft, taken care of by his non-Jewish, Polish servant, Yadwiga, whom he later takes as his wife in America. Meanwhile, he has an affair with another Holocaust survivor, Masha.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 30,
    "title": "The Witches",
    "author": "Roald Dahl",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71xYDwcK1WS.jpg",
    "quantity": 1,
    "description":
        "The Witches is a British children's dark fantasy novel by the British writer Roald Dahl. The story is set partly in Norway and partly in England, and features the experiences of a young English boy and his Norwegian grandmother in a world where child-hating societies of witches secretly exist in every country.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 31,
    "title": "The Giver",
    "author": "Lois Lowry",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1342493368l/3636.jpg",
    "quantity": 6,
    "description":
        "The Giver is a morally driven and interesting story about a young boy called Jonas who lives in a society free of crime and sadness. At the age of 12, children are assigned their jobs, which they will train for and do for the rest of their lives. Everything is chosen; from your parents to your partner.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 32,
    "title": "The Invention of Hugo Cabret",
    "author": "Brian Selznick",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81VlThzDlVL.jpg",
    "quantity": 6,
    "description":
        "The Invention of Hugo Cabret is a highly illustrated historical fiction novel written by Brian Selznick and published in 2007. The novel follows an orphan boy-Hugo-who, after the death of his uncle, lives by himself in the walls of a Paris train station, repairing the clocks.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 33,
    "title": "Half of a Yellow Sun",
    "author": "Chimamanda Ngozi Adichie",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1327934717l/18749.jpg",
    "quantity": 6,
    "description":
        "Half of a Yellow Sun is a novel by Nigerian author Chimamanda Ngozi Adichie. Published in 2006 by 4th Estate in London, the novel tells the story of the Biafran War through the perspective of the characters Olanna, Ugwu, and Richard.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 34,
    "title": "The Crucible",
    "author": "Arthur Miller",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/hostedimages/1502799689i/23597531.png",
    "quantity": 12,
    "description":
        "A crucible is a severe test or trial or an extremely challenging experience. ... Crucible in the literal sense is used in the context of metallurgy, the science of working with and refining metals. The word is perhaps best known from its use as the title of the 1953 play The Crucible by Arthur Miller.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 35,
    "title": "Ramona and Her Father",
    "author": " Beverly Cleary",
    "imageUrl": "https://i.harperapps.com/covers/9780380709168/x400.jpg",
    "quantity": 0,
    "description":
        "Beverly Cleary's Newbery Honor Book depicts an average middle-class family dealing with the realities of life. With the perfect mix of humor and warmth, Ramona Quimby shines as a spirited girl with her heart set on helping. Seven-year-old Ramona world is turned upside-down when her father unexpectedly loses his job.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 36,
    "title": "Pale Blue Dot: A Vision of the Human Future in Space",
    "author": " Carl Sagan",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/Pale_Blue_Dot%2C_first_edition.jpg/220px-Pale_Blue_Dot%2C_first_edition.jpg",
    "quantity": 6,
    "description":
        "Pale Blue Dot: A Vision of the Human Future in Space is a 1994 book by the astronomer Carl Sagan. ... In the book, Sagan mixes philosophy about the human place in the universe with a description of the current knowledge about the Solar System. He also details a human vision for the future.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 37,
    "title": "Hearts in Atlantis",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/51PP6GAN6EL.jpg",
    "quantity": 1,
    "description":
        "A young boy named Bobby Garfield lives in Harwich, Connecticut, with his mother, Liz, a widow. He befriends a man named Ted Brautigan, who possesses psychic abilities. He confesses to Bobby that he is being stalked by \"low men\" who wear yellow coats and drive garish cars.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 38,
    "title": "Cranford",
    "author": "Cranford",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1344896878l/15827057.jpg",
    "quantity": 52,
    "description":
        "A portrait of the residents of an English country town in the mid nineteenth century, Cranford relates the adventures of Miss Matty and Miss Deborah, two middle-aged spinster sisters striving to live with dignity in reduced circumstances. Through a series of vignettes.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 39,
    "title": "Euclid's Elements",
    "author": "Euclid",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/51RhT6g40yL._SX373_BO1,204,203,200_.jpg",
    "quantity": 31,
    "description":
        "It is a collection of definitions, postulates, propositions (theorems and constructions), and mathematical proofs of the propositions. The books cover plane and solid Euclidean geometry, elementary number theory, and incommensurable lines. Elements is the oldest extant large-scale deductive treatment of mathematics.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 40,
    "title": "Sketches New and Old",
    "author": "Mark Twain",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/commons/2/27/SketchesNewAndOld.jpg",
    "quantity": 21,
    "description":
        "Sketches New and Old is a collection of short stories by Mark Twain. It was published in 1875. All the stories are fictional except for \"The Case of George Fisher.\" It includes the short story \"A Ghost Story\", among others.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 41,
    "title": "Faceless Killers",
    "author": "Henning Mankell",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/61rkjSLMroL.jpg",
    "quantity": 21,
    "description":
        "Faceless Killers is the story of divorced police detective Kurt Wallander's quest to bring to justice the murderers of an elderly farming couple. Wallander must deal with depression following his divorce, his daughter's emotional and physical distance, and his own problems with food and drinking.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 42,
    "title": "The Fortress of Solitude",
    "author": "Jonathan Lethem",
    "imageUrl":
        "https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/7862/9780786259960.jpg",
    "quantity": 12,
    "description":
        "The Fortress of Solitude is a fictional fortress appearing in American comic books published by DC Comics, commonly in association with Superman. A place of solace and occasional headquarters for Superman, the fortress is typically depicted as being in frozen tundra, away from civilization.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 43,
    "title": "Henry and Ribsy",
    "author": " Beverly Cleary",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328336314l/6653047.jpg",
    "quantity": 21,
    "description":
        "Henry and Ribsy is the third book in the Henry Huggins series of humorous children's novels written by Beverly Cleary. Henry's dad has promised to take him salmon fishing on one condition \u2013 he has to keep his dog Ribsy out of trouble for two months. That's not easy to do, especially when Ramona Quimby gets involved.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 44,
    "title": "House of Sand and Fog",
    "author": "Andre Dubus III",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/41EGfPheK1L.jpg",
    "quantity": 12,
    "description":
        "A recent immigrant from the Middle East\u2015a former colonel in the Iranian Air Force\u2015yearns to restore his family's dignity in California. A recovering alcoholic and addict down on her luck struggles to hold onto the one thing she has left? her home. And her lover, a married cop, is driven to extremes to win her love.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 45,
    "title": "Double Take: A Memoir",
    "author": "Kevin Michael Connolly",
    "imageUrl": "https://m.media-amazon.com/images/I/51WYxJnJ1NL.jpg",
    "quantity": 6,
    "description":
        "It's been more than six months since her husband's brutal death, and Julia Ransom is just beginning to breathe again. She loved her husband, renowned psychic August Ransom, but the media frenzy that followed his murder sapped what little strength she had left.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 46,
    "title": "Disgrace",
    "author": "J. M. Coetzee",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3d/JMCoetzee_Disgrace.jpg/200px-JMCoetzee_Disgrace.jpg",
    "quantity": 14,
    "description":
        "Written with the austere clarity that has made J. M. Coetzee the winner of two Booker Prizes, Disgrace explores the downfall of one man and dramatizes, with unforgettable, at times almost unbearable, vividness the plight of a country caught in the chaotic aftermath of centuries of racial oppression.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 47,
    "title": "Full Dark, No Stars",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71EIUKty84L.jpg",
    "quantity": 33,
    "description":
        "Full Dark, No Stars is an omnibus of four dark tales of retribution by Stephen King. Plot, characters and their interaction are all things in which King is the expert. His characters are ordinary people in extraordinary situations and King explores how they act and react.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 48,
    "title": "The Botany of Desire",
    "author": "Michael Pollan",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91NCQ5-JFjL.jpg",
    "quantity": 1,
    "description":
        "The Botany of Desire: A Plant's-Eye View of the World is a 2001 nonfiction book by journalist Michael Pollan. Pollan presents case studies that mirror four types of human desires that are reflected in the way that we selectively grow, breed, and genetically engineer our plants.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 49,
    "title": "Death of a Salesman",
    "author": "Arthur Miller",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/2/20/DeathOfASalesman.jpg",
    "quantity": 6,
    "description":
        "Arthur Miller's play Death of a Salesman addresses loss of identity and a man's inability to accept change within himself and society. The play is a montage of memories, dreams, confrontations, and arguments, all of which make up the last 24 hours of Willy Loman's life.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 50,
    "title": " Harry Potter and the Chamber of Secrets",
    "author": "J. K. Rowling",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91HHqVTAJQL.jpg",
    "quantity": 10,
    "description":
        "Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he\u2019s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.And strike it does. For in Harry\u2019s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor and a spirit who haunts the girls\u2019 bathroom. But then the real trouble begins \u2013 someone is turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possible be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects\u2026 Harry Potter himself!",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 51,
    "title": " Treasure",
    "author": " Clive Cussler ",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/51MHg7IAdIL._SX273_BO1,204,203,200_.jpg",
    "quantity": 5,
    "description":
        " Breathtaking art and rare volumes... maps of hidden oil and mineral deposits that could change the world's balance of power. Now Dirk Pitt discovers the secret trail of the treasures of Alexandria\u2014a trail that plunges him into a brutal conspiracy for total domination of the globe.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 52,
    "title": " Hatchet",
    "author": " Gary Paulsen ",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328304022l/8134703.jpg",
    "quantity": 20,
    "description":
        " Hatchet is an adventure story that will take its character from a common city boy to a survivalist in a manner of days. Brian Robeson is still reeling from his parents' sudden divorce when his mother drives him to a private airport where he is to fly on a bush plane to visit his father in the Canadian oil fields.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 53,
    "title": " Wonder",
    "author": " Rj Palacio",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81i2-DOkZiL.jpg",
    "quantity": 46,
    "description":
        " Wonder is a brutally powerful story of a 10-year-old boy named August Pullman, who has a facial anomaly. ... He is an ordinary kid who plays Xbox, is obsessed with Star Wars, but despite the 27 operations done for his face he will never look normal",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 54,
    "title": " The Three Body Problem",
    "author": " Cixin Liu",
    "imageUrl":
        "https://fb2bookfree.com/uploads/posts/2020-10/1602541504_51hshl7lrtl._sx329_bo1204203200_.jpg",
    "quantity": 30,
    "description":
        " Adult sci-fi. By Chinese author Cixin Liu, The Three-Body Problem takes a classic scenario -- contact with alien life -- and cranks up the sinister factor to maximum. The story begins during the Cultural Revolution when young Ye Wenjie watches her scientist father beaten to death by fervent revolutionaries.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 55,
    "title": "It",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81x3QX++grL.jpg",
    "quantity": 12,
    "description":
        "It is a 1986 horror novel by American author Stephen King. It was his 22nd book and his 17th novel written under his own name. The story follows the experiences of seven children as they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 56,
    "title": "The Eyes of Darkness",
    "author": " Dean Koontz",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81kV5phSHSL.jpg",
    "quantity": 6,
    "description":
        "The Eyes of Darkness is a thriller novel by American writer Dean Koontz, released in 1981. The book focuses on a mother who sets out on a quest to find out if her son truly did die one year ago, or if he is still alive.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 57,
    "title": "Misery",
    "author": " Stephen King",
    "imageUrl":
        "http://prodimage.images-bn.com/pimages/9781501143106_p0_v2_s1200x630.jpg",
    "quantity": 43,
    "description":
        "The novel's narrative is based on the relationship of its two main characters \u2013 the romance novelist Paul Sheldon and his deranged fan Annie Wilkes. When Paul is seriously injured following a car accident, former nurse Annie brings him to her home, where Paul receives treatment and doses of pain medication.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 58,
    "title": "The Clancys of Queens: A Memoir",
    "author": "Tara Clancy",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1498862313l/33313877.jpg",
    "quantity": 1,
    "description":
        "But The Clancys of Queens is not merely an authentic coming-of-age tale or a rowdy barstool biography. Chock-full of characters who escape the popular imaginings of this city, it offers a bold portrait of real people, people whose stories are largely absent from our shelves.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 59,
    "title": "Cell",
    "author": "Stephen King",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/0/0c/Cell_by_Stephen_King.jpg",
    "quantity": 3,
    "description":
        "Cell is a 2006 apocalyptic horror novel by American author Stephen King. The story follows a New England artist struggling to reunite with his young son after a mysterious signal broadcast over the global cell phone network turns the majority of his fellow humans into mindless vicious animals.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 60,
    "title": "The Bachman Books",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91TfXyT7ttL.jpg",
    "quantity": 4,
    "description":
        "The Bachman Books is a collection of short novels by Stephen King published under the pseudonym Richard Bachman between 1977 and 1982. It made The New York Times Best Seller List upon its release in 1985.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 61,
    "title": "Executive Orders",
    "author": "Tom Clancy",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71dFV20yLCL.jpg",
    "quantity": 4,
    "description":
        "Executive Orders is a techno-thriller novel, written by Tom Clancy and released on July 1, 1996. It picks up immediately where the final events of Debt of Honor (1994) left off, and features now-U.S. President Jack Ryan as he tries to deal with foreign and domestic threats.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 62,
    "title": "The Bear and the Dragon",
    "author": "Tom Clancy",
    "imageUrl":
        "https://kbimages1-a.akamaihd.net/ab80ac13-8cf4-4dd7-824c-577a41bd61c1/1200/1200/False/the-bear-and-the-dragon.jpg",
    "quantity": 3,
    "description":
        "The Bear and the Dragon is a techno-thriller novel, written by Tom Clancy and released on August 21, 2000. A direct sequel to Executive Orders (1996), President Jack Ryan deals with a war between Russia and China, referred respectively in the title as the Russian Bear and the Chinese Dragon.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 63,
    "title": "Just After Sunset",
    "author": "Stephen King",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/thumb/0/01/JustAfterSunset.jpg/220px-JustAfterSunset.jpg",
    "quantity": 5,
    "description":
        "A blind girl works a miracle with a kiss and the touch of her hand... A psychiatric patient's irrational thinking might create an apocalyptic threat in the Maine countryside or keep the world from falling victim to it.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 64,
    "title": "The Good Guy",
    "author": "Dean Koontz",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81qz0A8DihL.jpg",
    "quantity": 1,
    "description":
        "Timothy Carrier, having a beer after work at his friend's tavern, enjoys drawing eccentric customers into amusing conversations. But the jittery man who sits next to him tonight has mistaken Tim for someone very different\u2014and passes to him a manila envelope full of cash.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 65,
    "title": "Pet Sematary",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91ndIrptO4L.jpg",
    "quantity": 15,
    "description":
        "The story starts when a family lose their beloved cat to a busy road. Close by is an ancient burial ground where local children made a pet 'sematary', complete with a misspelled sign. There are stories of it having the power to resurrect the dead. ... The cat returns from the dead but he is not the same.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 66,
    "title": "Debt of Honor",
    "author": "Tom Clancy",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/thumb/3/38/DebtOfHonor.jpg/220px-DebtOfHonor.jpg",
    "quantity": 11,
    "description":
        "Debt of Honor is a techno-thriller novel, written by Tom Clancy and released on August 17, 1994. A direct sequel to The Sum of All Fears (1991), Jack Ryan becomes the National Security Advisor when a secret cabal of Japanese industrialists seize control of their country's government and wage war on the United States.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 67,
    "title": "Dark justice",
    "author": "Jack Higgins",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1361869696l/17414656.jpg",
    "quantity": 13,
    "description":
        "The plot ingredients for \"Dark Justice\" include a former IRA terrorist who now works for the Prime Minister in combatting terror, a Russian oil mogol who is a friend of Putin, a failed assassination attempt on the American President, and internal conflict within the Prime Minister's shadow team about the moral dilemma ...",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 68,
    "title": "Wolves of the Calla",
    "author": "Stephen King",
    "imageUrl": "https://m.media-amazon.com/images/I/518yBS4XJIL.jpg",
    "quantity": 12,
    "description":
        "Wolves of the Calla is the fifth novel in the Dark Tower series by Stephen King. In this novel, Roland and his ka-tet, Eddie, Susannah, and Jake, are following the Path of the Beam in their quest to find the Dark Tower when they are met by a group of people from a nearby community called Calla Bryn Sturgis.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 69,
    "title": "Red Rabbit",
    "author": "Tom Clancy",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91c80bEdvXL.jpg",
    "quantity": 1,
    "description":
        "Red Rabbit (2002) is a New York Times bestselling novel by Tom Clancy. It revolves around the 1981 plot to assassinate Pope John Paul II. The story incorporated several historical events, including the 1978 assassination of Georgi Markov and the World War II era Operation Mincemeat.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 70,
    "title": "Atlantis Found",
    "author": "Clive Cussler",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1389418438l/41707.jpg",
    "quantity": 15,
    "description":
        "Plot summary. In 7120 BC, a comet hit North America, abruptly ending several advanced civilizations. In AD 1858, a whaling vessel discovers a 1770s merchant ship frozen in Antarctic ice; included on this ship is a polished obsidian skull. ... He finds the ship and narrowly escapes disaster.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 71,
    "title": "Carrie",
    "author": " Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71JqAKE52ZL.jpg",
    "quantity": 14,
    "description":
        "Set primarily in the then-future year of 1979, it revolves around the eponymous Carrie White, a friendless, bullied high-school girl from an abusive religious household who uses her newly discovered telekinetic powers to exact revenge on those who torment her.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 72,
    "title": "Insomnia",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71iiP3hCMFL.jpg",
    "quantity": 17,
    "description":
        "Insomnia is a 1994 horror/fantasy novel by American writer Stephen King. It follows retired widower Ralph Roberts whose increasing insomnia allows him to perceive auras and other hidden things, leading him to join a conflict between the forces of the Purpose and the Random",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 73,
    "title": "Under the Dome",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/41PZik3LNWL.jpg",
    "quantity": 18,
    "description":
        "The novel focuses on a small Maine town, and tells an intricate, multi-character, alternating perspective story of how the town's inhabitants contend with the calamity of being suddenly cut off from the outside world by an impassable, invisible glass dome-like barrier that seemingly falls out of the sky, transforming ...",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 74,
    "title": "The Waste Lands",
    "author": "Stephen King",
    "imageUrl":
        "https://prodimage.images-bn.com/pimages/9781501143540_p0_v4_s550x406.jpg",
    "quantity": 12,
    "description":
        "The Wasteland is the untold story of T.S. Eliot, his secret struggle with being gay, the people left in the wake of his meteoric career trajectory, and the madness that helped produce his greatest work",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 75,
    "title": "rainbow six",
    "author": "tom clancy",
    "imageUrl": "https://covers.openlibrary.org/b/id/10544808-L.jpg",
    "quantity": 15,
    "description":
        "Rainbow Six is a techno-thriller novel written by Tom Clancy. It focuses on John Clark, Domingo Chavez, and a fictional multi-national counterterrorist unit codenamed Rainbow, rather than Jack Ryan and national politics. The plot of the novel serves as the basis for the plot of the Tom Clancy's Rainbow Six video game.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 76,
    "title": "The Green Mile",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81uQocUlNcL.jpg",
    "quantity": 13,
    "description":
        "The Green Mile is a 1996 serial novel by American writer Stephen King. It tells the story of death row supervisor Paul Edgecombe's encounter with John Coffey, an unusual inmate who displays inexplicable healing and empathetic abilities.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 77,
    "title": "Different Seasons",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/91b-Wbb-3EL.jpg",
    "quantity": 1,
    "description":
        "DIFFERENT SEASONS is a collection of four Stephen King novellas: Rita Hayworth and the Shawshank Redemption, a wrongfully convicted man's quest for justice; The Body, in which four 12-year-old boys set off in search of another boy's corpse in the countryside; Apt Pupil, the story of an all-American boy's descent into ...",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 78,
    "title": "Duma Key",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71hIKUiJjLL.jpg",
    "quantity": 5,
    "description":
        "After a construction accident in which he loses his right arm and his divorce, Edgar Freemantle moves from Minnesota to Florida to begin what his psychiatrist described as a \"geographic cure.\" He rediscovers his love of painting and finds that he is good at it but his paintings seem to have something \"more\" to them.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 79,
    "title": "Needful Things",
    "author": "Stephen King",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1451607061l/28419239._SY475_.jpg",
    "quantity": 5,
    "description":
        "Needful Things is a 1991 horror novel by American author Stephen King. ... The story focuses on a shop that sells collectibles and antiques, managed by Leland Gaunt, a new arrival to the town of Castle Rock, Maine, the setting of many King stories.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 80,
    "title": "The Dark Tower",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81C-id1AKuL.jpg",
    "quantity": 6,
    "description":
        "The story centers upon Roland Deschain, the last gunslinger, who has been chasing his adversary, \"the man in black,\" for many years. The novel fuses Western fiction with fantasy, science fiction, and horror, following Roland's trek through a vast desert and beyond in search of the man in black.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 81,
    "title": "Cyclops",
    "author": "Cyclops",
    "imageUrl":
        "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982121129/cyclops-9781982121129_hr.jpg",
    "quantity": 6,
    "description":
        "Cyclops is an action-adventure novel by Clive Cussler. This is the 8th book featuring the author's primary protagonist, Dirk Pitt. A wealthy American financier disappears on a treasure hunt in an antique blimp. From Cuban waters, the blimp drifts toward Florida with a crew of dead men\u2014Soviet cosmonauts.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 82,
    "title": "Iceberg",
    "author": "Clive Cussler",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1439683898l/41710.jpg",
    "quantity": 5,
    "description":
        "Dirk Pitt is summoned from his vacation on the sunny beaches of California and sent to the Arctic when an iceberg is discovered that contains the remains of a missing luxury yacht. The yacht was on its way to a top-secret meeting with the White House; now the entire crew is dead, incinerated at their posts.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 83,
    "title": "Dead or Alive",
    "author": "om Clancy",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71Ei6lzNwoL.jpg",
    "quantity": 6,
    "description":
        "Dead or Alive is a techno-thriller novel, written by Tom Clancy and co-written with Grant Blackwood, and released on December 7, 2010. It is Clancy's first novel in seven years after The Teeth of the Tiger (2003), and follows the hunt by The Campus for the Emir, a Middle Eastern terrorist based on Osama bin Laden.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 84,
    "title": "Black House",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81dlp6luQHL.jpg",
    "quantity": 1,
    "description":
        "When a series of murders in Los Angeles are traced to a farm insurance salesman from French Landing, Wisconsin, Jack cooperates with the French Landing police to capture the killer.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 85,
    "title": "Skeleton Crew",
    "author": "Stephen King",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1271861632l/13440.jpg",
    "quantity": 13,
    "description":
        "A skeleton crew is the minimum number of personnel needed to operate and maintain an item\u2014such as a business, organization, or ship\u2014at its most simple operating requirements. Skeleton crews are often utilized during an emergency and are meant to keep an item's vital functions operating.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 86,
    "title": "Trojan Odyssey",
    "author": "Clive Cussler",
    "imageUrl":
        "In Trojan Odyssey Clive Cussler's great hero Dirk Pitt is on the frontline, fighting an international conspiracy. A daring rescuer sends Dirk Pitt on an adventure that will determine the future of the planet... When a hurricane unexpectedly blows up off the coast of Nicaragua, a giant floating hotel lies in its path",
    "quantity": 3,
    "description":
        "https://www.penguin.co.uk/content/dam/prh/books/549/54930/9781405916219.jpg",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 87,
    "title": "The Dead Zone",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81zGohvs7LL.jpg",
    "quantity": 12,
    "description":
        "The Dead Zone is a science fiction thriller novel by Stephen King published in 1979. The story follows Johnny Smith, who awakens from a coma of nearly five years and, apparently as a result of brain damage, now experiences clairvoyant and precognitive visions triggered by touch.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 88,
    "title": "Sacred Stone",
    "author": "Clive Cussler",
    "imageUrl":
        "https://www.penguin.co.uk/content/dam/prh/books/544/54411/9781405916578.jpg",
    "quantity": 12,
    "description":
        "In the remote wastes of Greenland, a young scientist has unearthed an artifact hidden in a cave for a millennium: a 50,000 year-old radioactive meteorite known as the Sacred Stone. But the astounding find places him in the crosshairs of two opposing groups who seek the stone for themselves.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 89,
    "title": "The Bachman Books",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71uZMXogwJL.jpg",
    "quantity": 12,
    "description":
        "The Bachman Books is a collection of short novels by Stephen King published under the pseudonym Richard Bachman between 1977 and 1982. It made The New York Times Best Seller List upon its release in 1985.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 90,
    "title": "Desperation, the Regulators",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/71jhK0QdSGL.jpg",
    "quantity": 1,
    "description":
        "The Regulators is a novel by American author Stephen King, writing under the pseudonym Richard Bachman. It was published in 1996 at the same time as its \"mirror\" novel, Desperation. The two novels represent parallel universes relative to one another, and most of the characters present in one novel's world also exist in the other novel's reality, albeit in different circumstances. Additionally, the hardcover first editions of each novel, if set side by side, make a complete painting, and on the back of each cover is also a peek at the opposite's cover.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 91,
    "title": "Odd Thomas",
    "author": "Dean Koontz",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81Enzgr5T4L.jpg",
    "quantity": 12,
    "description":
        "Odd Thomas by Dean Koontz is the story of a young man, who, through circumstances out of his control, finds himself in a position to save the lives of hundreds of his friends and neighbors. Odd Thomas is a fry cook who can see dead people and shadow-like forms he calls bodachs.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 92,
    "title": "Wizard and Glass",
    "author": "Stephen King",
    "imageUrl":
        "https://images.bwbcovers.com/045/Wizard-and-Glass-9780451210876.jpg",
    "quantity": 12,
    "description":
        "WIZARD AND GLASS is a fiction novel, the fourth in Stephen King's Dark Towers series that tells the tale of Roland Deschain's quest for the Dark Tower. Roland Deschain, Eddie and Susannah Dean, Jake Chambers, and Oy the billy-bumbler have escaped the ruined city of Lud on Blaine the Mono.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 93,
    "title": "Night Shift",
    "author": "Stephen King",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81JQ7zUy5PL.jpg",
    "quantity": 12,
    "description":
        "From the depths of darkness, where hideous rats defend their empire, to dizzying heights, where a beautiful girl hangs by a hair above a hellish fate, this chilling collection of twenty short stories will plunge readers into the subterranean labyrinth of the most spine-tingling, eerie imagination of our time.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 94,
    "title": "The Wrecker",
    "author": "Robert Louis Stevenson",
    "imageUrl": "https://m.media-amazon.com/images/I/41JZHO5k9LL.jpg",
    "quantity": 1,
    "description":
        "Taylor's debut novel, The Wrecking Crew is a thrilling adventure set in the world's last frontier, a story of a deep-water salvage diver set free from a Moroccan prison and forced to lead a covert mission into pirate-infested Somali waters.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 95,
    "title": "Treasure of Khan",
    "author": "Clive Cussler",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/81EIyM2ARRL.jpg",
    "quantity": 3,
    "description":
        "The book is about a Mongolian oil tycoon and his attempts to gain control over the world petroleum markets. It also has a secondary plot of a search for the treasures in the tombs of Genghis Khan and Khublai Khan.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 96,
    "title": "Lisey's Story",
    "author": "Stephen King",
    "imageUrl": "https://m.media-amazon.com/images/I/41hz8gs+A1S.jpg",
    "quantity": 13,
    "description":
        "Lisey's Story is the story of Lisey Landon, the widow of a famous and wildly successful novelist, Scott Landon. ... Lisey begins to relive her past, starting with the time she saved Scott from being fatally shot by an insane fan. She often stops herself mid-reminiscence to avoid uncovering terrifying memories.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 97,
    "title": "The Drawing of the Three",
    "author": "Stephen King",
    "imageUrl":
        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3a/The_Drawing_of_the_Three.jpg/200px-The_Drawing_of_the_Three.jpg",
    "quantity": 5,
    "description":
        "The Drawing of the Three refers to the three people Roland pulls, or draws, from the alternate versions of America in the 1960s, 1970s, and 1980s. He brings each of them to Mid-World, and two of them become his companions, the ka-tet, for the remainder of his quest.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 98,
    "title": "Everything's Eventual",
    "author": "Stephen King",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1438560418l/644172._SY475_.jpg",
    "quantity": 8,
    "description":
        "Sharpton, who claims to work for an organization that searches across the world for people with such talents. Dinky is recruited to kill very specific targets by e-mailing them his designs that he creates on an Apple computer. He is, in return, given a life that seems ideal, complete with a house and other benefits.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 99,
    "title": "Golden Buddha",
    "author": "Clive Cussler",
    "imageUrl":
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1183109124l/1379274.jpg",
    "quantity": 0,
    "description":
        "The team is hired to find and recover a stolen statue, the Golden Buddha, stolen in 1959 from the Dalai Lama. The success of the team will determine the future of Tibet. Whilst playing the Russians off against the Chinese, the team must put their lives at risk in order to complete the mission.",
    "itemPrice": 20,
    "favorite": false
  },
  {
    "id": 100,
    "title": "Forever Odd",
    "author": " Dean Koontz",
    "imageUrl":
        "https://images-na.ssl-images-amazon.com/images/I/51LtyMQGZQL._SX323_BO1,204,203,200_.jpg",
    "quantity": 0,
    "description":
        "A childhood friend of Odd's has disappeared. The worst is feared. But as Odd applies his unique talents to the task of finding the missing person, he discovers something worse than a dead body, encounters an enemy of exceptional cunning, and spirals into a vortex of terror.",
    "itemPrice": 20,
    "favorite": false
  }
];
