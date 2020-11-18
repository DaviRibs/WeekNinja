        #language: pt

        Funcionalidade: Reproduriz Paródia
        Sendo um úsuarios cadastrado
        Quero reproduzir musicas no player do Paradofiy
        Para que eu possa ouvir as paródias das minhas bandas favoritas

        Contexto: Login
        * Login com "davirb@gmail.com" e "q1w2r3"


            
            
            Cenário: Ouvir Paródia
            Dado que eu gosto de muito de "Rock"
            Quando  toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |

            Então essa paródia deve fica no modo de reprodução