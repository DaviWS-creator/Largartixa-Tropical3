programa
{
	inclua biblioteca Util --> u

	inteiro vida, vida_maxima, mana, mana_maximo, forca, constituicao, destreza_maximo, destreza, inteligencia, carisma, sabedoria, furtividade, folego, folego_maximo
	inteiro trembolona, pocao_mana, pocao_cura
	inteiro flechas
	inteiro vida_inimigo, vida_inimigo_max, destreza_inimigo, destreza_inimigo_max, folego_inimigo, folego_inimigo_max, mana_inimigo, mana_inimigo_max, const_inimigo
	inteiro escolhas = 0
	logico envenenado = falso
	logico imobilizado = falso
	logico habilidade_furtividade = falso
	cadeia inventario[10]
	cadeia ataques[4]
	cadeia magias[4]
	cadeia ataques_inimigo[4]   //inclui ataques físicos e magias
	cadeia nome_inimigo = ""
	cadeia classe
	cadeia classe1
	logico	stun = falso
	
	//Stats dos personagens
	//Vida varia conforme o personagem toma dano e se cura, já a vida máxima sempre permanece a mesma.
	//Constituição: influencia a vida e a resistência a status negativos.
	//Força: capacidade do personagem de empunhar armas grandes e/ou pesadas, empurrar objetos e combate corpo-a-corpo.
	//Destreza: capacidade do personagem de empunhar armas exijam técnica em vez de força bruta (espadas curvas, adagas, arcos, etc) e manusear equipamentos que exijam aptidão com as mãos, como agulhas.
	//Carisma: capacidade de intimidar (também influenciada pela força) ou persuadir (também influenciada pela inteligência) os demais.
	//Sabedoria: quantidede de mana e capacidade de lançar certas magias.
	//Furtividade: capacidade de passar despercebido, roubar itens e arrombar fechaduras com gazuas.
	//Folego define quantas ações você poderá fazer em um turno durante um combate. Volta ao máximo no início de cada turno.
	//Habilidade furtividade é um modo que o agente secreto pode ativar, lhe dando vantagens em combate

	funcao inicio()
	{
		//intro()
		//parte1()
	//	parte2()
	nome_inimigo = "Aranha"
	escolha_classe()
	combate()
		
	
	}
	 funcao intro ()
	 {
	 	escreva("Olá, aventureiro.")
	 	u.aguarde(5000)
		limpa()
		escreva("Este é o terceiro e último capítulo da aventura da grande Lagartixa Tropical.")
		u.aguarde(5000)
		limpa()
		escreva("Durante suas aventuras, a Lagartixa Tropical salvou muitas pessoas.")
		u.aguarde(5000)
		limpa()
		escreva("Mas desta vez, ela é quem precisará ser salva.")
		u.aguarde(5000)
		limpa()
		escreva("Suas escolhas definirão o destino de tudo e todos ao seu redor.")
		u.aguarde(5000)
		limpa()
		escreva("Tenha sabedoria, e lembre-se: nem todos podem ser salvos.")
		u.aguarde(5000)
		limpa()
	 }

	funcao escolha_classe(){

		inteiro resposta
		
		escreva("É hora de escolher sua classe.")
		u.aguarde(3000)
		limpa()

		faca{

			escreva("1 --> Marombeira \n")
			escreva("2 --> Luthier \n")
			escreva("3 --> Professora de Química \n")
			escreva("4 --> Política \n")
			escreva("5 --> Agente Secreta \n")
			escreva("Escolha sua classe: ")
			leia(resposta)
			
			escolha(resposta){

				caso 1:
				escreva("-----MAROMBEIRA----- \n")
				//escreva("Pontos de Vida: 40 \n")
				escreva("Força: 20 \n")
				escreva("Constituição: 15 \n")
				escreva("Destreza: 6 \n")
				escreva("Inteligência: 6 \n")
				escreva("Carisma: 12 \n")
				escreva("Sabedoria: 2 \n")
				escreva("Furtividade: 0 \n")
				escreva("Fôlego: 20 \n")

				escreva("-----Descrição----- \n")
				escreva("Você dedicou grande parte sua vida às academias e ao uso de esteroides, competindo em campeonatos de fisiculturismo e ganhando diversos troféus. \n")
				escreva("Após uma carreira de sucesso, é hora de pendurar os halteres e viver pacificamente, gerenciando uma pequena loja no centro da cidade. \n")

			     escreva("Você quer continuar com essa classe? \n[0]Sim \n[1]Não: ")
			     leia(resposta)

			     enquanto(resposta != 0 e resposta != 1){
			     	escreva("Opção inválida.")
			     	leia(resposta)
			     }

			     se(resposta == 0){

			     	classe1 = "marombeira"
			     	classe = "Marombeira"
			     	vida = 40
			     	vida_maxima = 40
			     	forca = 20
			     	constituicao = 15
			     	destreza_maximo = 15
			     	destreza = 6
			     	inteligencia = 6
			     	carisma = 12
			     	sabedoria = 2
			     	furtividade = 0
			     	folego = 20
			     	folego_maximo = 20
			     	mana = 0
			     	mana_maximo = 0

			     	inventario[0] = "Trembolona"
			     	inventario[1] = "Machado"
			     	inventario[2] = "Poção de Cura"
			     	pocao_cura = 3
			     	pocao_mana = 0
			     	trembolona = 3

			     	ataques[0] = "Ataque com Machado"
			     	ataques[1] = "Soco"
			     }
			     limpa()
			     pare

			     caso 2:
			     escreva("-----LUTHIER----- \n")
			     //escreva("Pontos de Vida: 20 \n")
				escreva("Força: 6 \n")
				escreva("Constituição: 9 \n")
				escreva("Destreza: 20 \n")
				escreva("Inteligência: 10 \n")
				escreva("Carisma: 15 \n")
				escreva("Sabedoria: 2 \n")
				escreva("Furtividade: 6 \n")
				escreva("Fôlego: 12 \n")

				escreva("-----Descrição----- \n")
				escreva("Quando adolescente, você admirava ícones da guitarra como Eddie Van Halen e Steve Vai, sonhando em se tornar uma lenda do rock. \n")
				escreva("Já adulto, você descobre dentro de si uma paixão pela arte da construção e manutenção das guitarras, se tornando um mestre luthier.  \n")
				escreva("Após anos no ramo, você decide entrar em um período sabático, gerenciando uma pequena loja no centro da cidade. \n ")

			     escreva("Você quer continuar com essa classe1? \n[0]Sim \n[1]Não: ")
			     leia(resposta)

			     	enquanto(resposta != 0 e resposta != 1){
			     		escreva("Opção inválida.")
			     		leia(resposta)
			     }

			     se(resposta == 0){

			     	classe1 = "luthier"
			     	classe = "Luthier"
			     	vida = 20
			     	vida_maxima = 20
			     	forca = 6
			     	constituicao = 9
			     	destreza_maximo = 9
			     	destreza = 20
			     	inteligencia = 10
			     	carisma = 15
			     	sabedoria = 2
			     	furtividade = 6
			     	folego = 12
			     	folego_maximo = 12
			     	mana = 0
			     	mana_maximo = 0

			     	ataques[0] = "Ataque com Lança"
			     	ataques[1] = "Arco e Flecha"
			     	pocao_cura = 3
			     	pocao_mana = 0
			     	trembolona = 0

			     	inventario[0] = "Flechas"
			     	flechas = 10
			     	inventario[1] = "Arco de Combate"
			     	inventario[2] = "Poção de Cura"
			     	inventario[3] = "Lança"

			     }
			     limpa()
			     pare

			     caso 3:
			     escreva("-----PROFESSOR DE QUÍMICA---- \n")
			     //escreva("Pontos de Vida: 25 \n")
				escreva("Força: 6 \n")
				escreva("Constituição: 6 \n")
				escreva("Destreza: 8 \n")
				escreva("Inteligência: 20 \n")
				escreva("Carisma: 12 \n")
				escreva("Sabedoria: 18 \n")
				escreva("Furtividade: 7 \n")
				escreva("Fôlego: 12 \n")

				escreva("-----Descrição----- \n")
				escreva("O seu fascínio pela natureza e a forma como seus elementos se interagem o fizeram seguir a carreira de química, trabalhando em um laboratório de pesquisa na maior universidade do planeta. \n")
				escreva("Durante um experimento, você acidentalmente entra em contato com uma substância radioativa, fazendo com que adquirisse aptidão com magia.  \n")
				escreva("Devido ao acidente, você teve que se afastar da vida de pesquisa, e agora gerencia uma pequena loja no centro da cidade. \n ")

			     escreva("Você quer continuar com essa classe? \n[0]Sim \n[1]Não: ")
			     leia(resposta)

			     	enquanto(resposta != 0 e resposta != 1){
			     		escreva("Opção inválida.")
			     		leia(resposta)
			     }

			     se(resposta == 0){

			     	classe = "Professora de Química"
			     	classe1 = "professor de quimica"
			     	vida = 25
			     	vida_maxima = 25
			     	forca = 6
			     	constituicao = 6
			     	destreza_maximo = 6
			     	destreza = 8
			     	inteligencia = 20
			     	carisma = 12
			     	sabedoria = 18
			     	furtividade = 7
			     	folego = 12
			     	folego_maximo = 12
			     	mana = 20
			     	mana_maximo = 20
					
		     		inventario[2] = "Poção de Cura"
		     		inventario[3] = "Poção de Mana"
		     		pocao_cura = 3
			     	pocao_mana = 3
			     	trembolona = 0
			     	
		     		magias[0] = "Cura"
		     		magias[1] = "Bola de Energia"
			     }
			     limpa()
				pare

			     caso 4:
			     escreva("-----POLÍTICA---- \n")
			     //escreva("Pontos de Vida: 15 \n")
				escreva("Força: 8 \n")
				escreva("Constituição: 10 \n")
				escreva("Destreza: 8 \n")
				escreva("Inteligência: 16 \n")
				escreva("Carisma: 20 \n")
				escreva("Sabedoria: 6 \n")
				escreva("Furtividade: 10 \n")
				escreva("Fôlego: 8 \n")

				escreva("-----Descrição----- \n")
				escreva("Você sempre foi popular na escola e a queridinha dos professores. Em casa, conseguia convencer seus pais a comprar qualquer presente. Nas festas, todos se impressionavam com sua capacidade de socializar. \n")
				escreva("A vida adulta cheogou, e com ela, despertou dentro de você um senso crítico e uma enorme vontade de ajudar os outros. Você se torna uma política honesta e íntegra, sempre ajudando os mais necessitados e combatendo a podridão dentro da prefeitura.  \n")
				escreva("Todos os heróis devem descansar algum dia, e com você não é diferente. Gerencias uma loja no centro da cidade, sendo lembrado como uma das poucas políticas que de fato lutou em prol da população. \n ")

			     escreva("Você quer continuar com essa classe? \n[0]Sim \n[1]Não: ")
			     leia(resposta)

			     	enquanto(resposta != 0 e resposta != 1){
			     		escreva("Opção inválida.")
			     		leia(resposta)
			     }

			     se(resposta == 0){

			     	classe = "Política"
					classe1 = "politico"
			     	vida = 15
			     	vida_maxima = 15
			     	forca = 8
			     	constituicao = 10
			     	destreza_maximo = 10
			     	destreza = 8
			     	inteligencia = 16
			     	carisma = 20
			     	sabedoria = 6
			     	furtividade = 10
			     	folego = 8
			     	folego_maximo = 8
			     	mana = 0
			     	mana_maximo = 0

			     	ataques[0] = "Ataque com Faca"
			     	ataques[1] = "Cusparada"
			     	pocao_cura = 3
			     	pocao_mana = 0
			     	trembolona = 0
			     	
			     	inventario[1] = "Faca"
			     	inventario[2] = "Poção de Cura"

			     	//Essa classe não foi feita pensando em combate, e sim em utilizar a lábia para não ter que lutar.

			     }
			     limpa()
				pare

				caso 5:
			     escreva("-----AGENTE SECRETA---- \n")
			     escreva("Pontos de Vida: 10 \n")
				escreva("Força: 4 \n")
				escreva("Constituição: 2 \n")
				escreva("Destreza: 16 \n")
				escreva("Inteligência: 12 \n")
				escreva("Carisma: 6 \n")
				escreva("Sabedoria: 7 \n")
				escreva("Furtividade: 20 \n")
				escreva("Fôlego: 15 \n")

				escreva("-----Descrição----- \n")
				escreva(". \n")
				escreva("Você dedicou sua vida servindo à nação por debaixo dos panos, se infiltrando em embaixadas, espionando reuniões secretas e se livrando de inimigos do estado.  \n")
				escreva("Tudo que começa um dia chega ao fim, e com sua carreia de agente secreta não foi diferente. Como recompensa pelos seus anos de serviço, o governo te deu uma pequena loja no centro da cidade, onde você agora passas seus dias solitários. \n ")

			     escreva("Você quer continuar com essa classe? \n[0]Sim \n[1]Não: ")
			     leia(resposta)

			     	enquanto(resposta != 0 e resposta != 1){
			     		escreva("Opção inválida.")
			     		leia(resposta)
			     }

			     se(resposta == 0){

			     	classe = "Agente Secreta"
					classe1 = "agente secreto"
			     	vida = 10
			     	vida_maxima = 10
			     	forca = 4
			     	constituicao = 2
			     	destreza_maximo = 2
			     	destreza = 16
			     	inteligencia = 12
			     	carisma = 6
			     	sabedoria = 7
			     	furtividade = 20
			     	folego = 15
			     	folego_maximo = 15
			     	mana = 0
			     	mana_maximo = 0

					ataques[0] = "Ataque com Faca"
					ataques[2] = "Pistola Silenciada"

			     	pocao_cura = 3
			     	pocao_mana = 0
			     	trembolona = 0

					inventario[0] = "Pistola Silenciada"	
					inventario[1] = "Faca"
					inventario[2] = "Poção de Cura"
					
			     }
			     limpa()
				pare

				caso contrario:
				escreva("Opção inválida.")
				u.aguarde(1500)
			     limpa()
				pare
			}
		}enquanto(resposta != 0)
}

	funcao parte1(){
		escreva("Após se tornar o último Lorde da Caixa d’água, a Lagartixa Tropical parou, encarando o corpo ensanguentado da Borboleta, sentindo conforto.\n\n")
		u.aguarde(5000)
		escreva("Seu transe é abruptamente cortado pelo toque de uma das Lagartixas Radicais em seus ombros.\n\n")
		u.aguarde(5000)
		escreva("L. Radical - Está tudo bem, senhorita Lagartixa?\n\n")
		u.aguarde(5000)
		escreva("L. Tropical - Sim, é apenas um leve cansaço, a luta foi intensa.\n\n")
		u.aguarde(5000)
		escreva("L. Radical - Bom, agora nos podemos finalmente descansar nessa incrível caixa d'água, nóos merecemos!\n\n")
		escreva("As Lagartixas Radicais começam a ir para a Caixa d’água Primordial enquanto a Lagartixa Tropical não consegue se mexer. Dentro de sua cabeça ela escuta\numa voz dizendo: Nós merecemos? Se não fosse por você elas estariam mortas. Elas não merecem estar aqui!\n\n")
		u.aguarde(5000)
		escreva("A Lagartixa Tropical começa a andar até a caixa d’água em um passo apressado, passando por todas as Lagartixas Radicais. Ela abre a tampa da Caixa d’Água\n e se prepara para entrar. Uma das Lagartixas Radicais se aproxima e encosta em seu ombro.\n\n")
		u.aguarde(5000)
		escreva("L. Radical - Senhora Lagartixa, você está agindo estra-\n\n")
		u.aguarde(5000)
		escreva("A Lagartixa Tropical rapidamente arranca sua cauda e lança ela contra a Lagartixa que tocou nela, esmagando sua cabeça completamente. A lagartixa caiu no\nchão, completamente sem vida.\n\n")
		u.aguarde(5000)
		escreva("Poucos minutos depois, a Lagartixa Tropical já tinha ido atrás de todas as Lagartixas Radicais deixando um mar de sangue em sua volta. Após, ela volta para \na sua Caixa D’Água e\ndescansa como sempre sonhou…")
		u.aguarde(5000)
		limpa()

		u.aguarde(5000)
		escreva("Um tempo depois a baratinha se encontrava limpando a calçada de sua loja até que ela vê uma Lagartixa totalmente machucada vindo em direção à sua loja.\n\n")
		u.aguarde(5000)
		escreva("Baratinha - Meu Deus! O que aconteceu com você? Deixe-me te ajudar, você precisa de tratamento urgente! Sorte que eu tenho um kit de últimos socorros.\n\n")
		u.aguarde(5000)
		escreva("Lagartixa - Por favor, não é necessário eu só preciso encontrar a dona dessa loja.\n\n")
		u.aguarde(5000)
		escreva("Baratinha - Sou eu.\n\n")
		u.aguarde(5000)
		escreva("No instante que a Barata disse isso, a Lagartixa entrou aos prantos.\n\n")
		u.aguarde(5000)
		escreva("Lagartixa - Dona Barata, a senhora precisa me ajudar! Eu sou uma das Lagartixas Radicais, a Lagartixa Tropical matou as minhas companheiras. Ela quer\na Caixa d'água só para ela!\n\n")
		u.aguarde(5000)
 		escreva("A barata fica chocada com o que a Lagartixa Radical disse. Sem saber o que fazer, ela vai pedir ajuda pra uma amiga sua, A Aranha.\n\n")
 		u.aguarde(5000)
		limpa()

 		escreva("Ao chegar na casa da Aranha, a Barata já começou a se sentir um pouco melhor, ainda mais quando soube que a Aranha ia preparar seu famoso chá para ela.\n\n")
 		u.aguarde(5000)
 		escreva("Aranha - Olá, Barata. Tudo bem? Tome um pouco de chá.\n\n")
 		u.aguarde(5000)
 		escreva("Barata - Primeiro necessito falar com você de um assunto urgente. Uma das Lagartixas Radicais veio me pedir ajuda porque a Lagartixa Tropical matou todas\nas suas companheiras. Não consigo entender porque ela faria isso\n\n")
 		u.aguarde(5000)
 		escreva("Aranha - A Lagartixa Tropical salvou todos nós, ela nunca faria nada assim. Tome um pouco de chá, sim?\n\n")
 		u.aguarde(5000)
 		escreva("Barata - Eu também acho, mas por que ela inventaria isso?\n\n")
 		u.aguarde(5000)
		escreva("Aranha - Tem louco para tudo, agora tome um pouco do seu chá, por favor.\n\n")
		u.aguarde(5000)
		limpa()
		
		escreva("[1] Tomar chá\n[2] Recusar o chá: ")
		leia(escolhas)
		limpa()


		enquanto(escolhas != 1 e escolhas != 2)
		{
			escreva("Opção inválida.")
			leia(escolhas)
		}

		
		
		se(escolhas == 1)
		{
			
			escreva("Você foi envenenado pela Aranha.\n")
			envenenado = verdadeiro
			u.aguarde(5000)
			escreva("Baratinha - Aranha, eu estou um pouco tonta, o que está acontecendo?\n")
			u.aguarde(5000)
			escreva("Aranha - Você não entende e nunca vai entender. Queria que você pudesse se juntar a nós.\n")
			u.aguarde(5000)
			nome_inimigo = "Aranha"
			escolha_classe()
			combate()

			se(vida <= 0)
			{
				escreva("Você perdeu para ", nome_inimigo, ", boa sorte da próxima vez!")
				retorne
			}
			senao
			{
				escreva("Nos últimos segundos de vida da Aranha ela passa uma mensagem que iria mudar para sempre a aventura da Barata.\n")
				escreva("Aranha - A Lagartixa Tropical vai ficar tão decepcionada comigo…\n")
			}
		}

		
		se(escolhas == 2)
		{
			escreva("Barata - Na verdade, eu não estou muito a fim de tomar chá.\n")
			u.aguarde(5000)
			escreva("Nesse momento a Aranha te ataca.\n")
			u.aguarde(5000)
			limpa()
			escreva("[1] Lutar\n[2] Tentar acalmar a sua amiga\n")
			leia(escolhas)
		}

		
	
		enquanto(escolhas != 1 e escolhas != 2)
		{
			escreva("Ação inválida.")
			leia(escolhas)
		}

		
		se(escolhas == 1)
		{
			nome_inimigo = "Aranha"
			escolha_classe()
			combate()

			se(vida <= 0)
			{
				escreva("Você perdeu para ", nome_inimigo, ", boa sorte da próxima vez!")
				retorne
			}
			senao
			{
				escreva("Nos últimos segundos de vida da Aranha ela passa uma mensagem que iria mudar para sempre a aventura da Barata.\n")
			escreva("Aranha - A Lagartixa Tropical vai ficar tão decepcionada comigo…\n")
			}

		}

		
		se(escolhas == 2)
		{
			escreva("Barata - Aranha! Isso não é neces-\n")
			u.aguarde(5000)
			escreva("Você foi devorado pela Aranha e seu cérebro virou tecido de teia. Boa sorte na próxima vez!\n")
			u.aguarde(5000)
			escreva("Fim do jogo.\n")
			u.aguarde(5000)
			limpa()
			retorne
		}
		
	}
	
funcao combate(){
			inteiro acao, dano
			inteiro acerto //defini se um ataque vai acertar ou não
			inteiro golpe //escolhe o ataque físico desejado
			inteiro item //escolhe o item desejado
			inteiro magico //escolhe a magia desejada

			escreva("Você entra em um combate contra ", nome_inimigo, ".")
			u.aguarde(3000)
			limpa()

			
			se(nome_inimigo == "Aranha"){     //aranha peão

				destreza_inimigo = 8
				destreza_inimigo_max = 8

				const_inimigo = 8
				
				vida_inimigo = 8
				vida_inimigo_max = 8
				
				folego_inimigo = 8
				folego_inimigo_max = 8
				
				mana_inimigo = 0
				mana_inimigo_max = 0	
			}

			senao se(nome_inimigo == "Aranha Gigante"){   //aranha comandanete

				destreza_inimigo = 12
				destreza_inimigo_max = 12

				const_inimigo = 12
				
				vida_inimigo = 30
				vida_inimigo_max = 30
				
				folego_inimigo = 16
				folego_inimigo_max = 16
				
				mana_inimigo = 0
				mana_inimigo_max = 0
			}

			senao se(nome_inimigo == "Cavaleiro Escorpião"){   //escorpião cavaleiro

				destreza_inimigo = 10
				destreza_inimigo_max = 10

				const_inimigo = 8
				
				vida_inimigo = 8
				vida_inimigo_max = 8
				
				folego_inimigo = 6
				folego_inimigo_max = 6

				mana_inimigo = 0
				mana_inimigo_max = 0
			}

			senao se(nome_inimigo == "Comandante Escorpião"){   //escorpião comandante

				destreza_inimigo = 12
				destreza_inimigo_max = 12

				const_inimigo = 15
				
				vida_inimigo = 40
				vida_inimigo_max = 40
				
				folego_inimigo = 18
				folego_inimigo_max = 18
				
				mana_inimigo = 0
				mana_inimigo_max = 0
			}
			senao se(nome_inimigo == "Lagartixa Tropical"){

				destreza_inimigo = 14
				destreza_inimigo_max = 14

				const_inimigo = 16

				vida_inimigo = 100
				vida_inimigo_max = 100

				folego_inimigo = 25
				folego_inimigo_max = 25

				mana_inimigo = 20
				mana_inimigo_max = 20
			}

			enquanto(vida_inimigo > 0 e vida > 0){
			faca{
				
				se(vida_inimigo <= 0){
					pare
				}

				se(imobilizado == verdadeiro){
					acerto = u.sorteia(0, 25) + forca

					se(acerto >= 25){
						escreva("Você consegue se libertar da imobilização, mas se cansa um pouco.")
						folego -= 3
						imobilizado = falso
					}

					senao{
						escreva("Você não consgue se libertar da imobilização.")
						u.aguarde(3000)
						limpa()
						pare
					}

					u.aguarde(3000)
					limpa()
				}
				
				escreva("1. Ataque Físico \n")
				escreva("2. Ataque com Magia \n")
				escreva("3. Usar Item \n")
				escreva("4. Defender\n")
				escreva("5. Fim do turno \n\n")
				escreva("PV: ", vida, "\nFôlego: ", folego,"\nMana: ", mana, "\nPV Inimigo: ", vida_inimigo, "\n")
				escreva("Escolha sua ação: ")
				leia(acao)
				limpa()


				escolha(acao){

					caso 1:
					para(inteiro i = 0; i < 4; i++){

						se(ataques[i] != ""){

							escreva(i+1, " -> ", ataques[i], "\n")
							
						}	
					}
					escreva("Escolha sua ação ou '0' para retornar: ")
					leia(golpe)
					
					se(golpe == 1 e ataques[0] == "Ataque com Machado" e inventario[1] == "Machado" e folego >= 10){

						folego -= 10

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							dano = u.sorteia(5, 15)
							escreva("O inimigo tomou ", dano, " de dano.")
							vida_inimigo -= dano
							u.aguarde(2000)
							limpa()

						}

						senao{
							escreva("Você errou o ataque.")
							u.aguarde(2000)
						}
					}
					senao se(golpe == 2 e ataques[1] == "Soco" e folego >= 8){
						
						folego -= 5

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							dano = u.sorteia(1, 4)
							escreva("O inimigo tomou ", dano, " de dano.")
							vida_inimigo -= dano
							u.aguarde(2000)
							limpa()
							
						}
						senao{
							escreva("Você errou o ataque.")
							u.aguarde(3000)
						}
					}
						senao se(golpe == 3 e ataques[2] == "Atordoar" e folego >= 5 ){
						folego -= 5

						acerto = u.sorteia(0, 20)

						se(acerto >= const_inimigo + 2){
							escreva("O inimigo ficou atordoado dificultando sua esquiva e seus acertos\n")
							stun = verdadeiro 
							destreza_inimigo -= 2
							u.aguarde(2000)
							limpa()
							
						}
						senao{
							escreva("Você errou o ataque.")
							u.aguarde(3000)
						}
						}
					senao se(golpe == 1 e ataques[0] == "Ataque com Faca" e inventario[1] == "Faca" e folego >= 8){
						
						folego -= 8

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							dano = u.sorteia(1, 10)
							escreva("O inimigo tomou ", dano, " de dano.")
							vida_inimigo -= dano
							u.aguarde(2000)
							limpa()
						}

						senao{
							escreva("Você errou o ataque.")
							u.aguarde(2000)
						}
					}
						senao se(golpe == 2 e ataques[1] == "Cusparada" e folego >= 1){
						
						folego --

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){

							escreva("Você acerta uma cusparada no adversário, mas nada acontece.")
							u.aguarde(2000)
							limpa()
						}

						senao{
							escreva("Você errou o ataque.")
							u.aguarde(2000)
						}
						}
						senao se(golpe == 3 e ataques[2] == "Mentiras" e folego >= 1){
						
						folego --

						acerto = u.sorteia(0, 20)

						escreva("voce começa a contar um monte de promessas e coisas que voce faria no seu mandato")

						u.aguarde(1000)

						se(acerto >= destreza_inimigo){

							escreva(", o inimigo fica confuso com tudo isso deixando sem saber o que fazer")
							u.aguarde(2000)
							stun = verdadeiro
							destreza_inimigo -= 2
							limpa()
						}

						senao{
							escreva(", o inimigo apenas o ignora.")
							u.aguarde(2000)
						}
						}
					senao se(golpe == 1 e ataques[0] == "Ataque com Lança" e inventario[3] == "Lança" e folego >= 8){
						
						folego -= 8

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							dano = u.sorteia(5, 10)
							escreva("O inimigo tomou ", dano, " de dano.")
							vida_inimigo -= dano
							u.aguarde(2000)
							limpa()

						}

						senao{
							escreva("Você errou o ataque.")
							u.aguarde(2000)
						}
					}
					senao se(golpe == 2 e ataques[1] == "Arco e Flecha" e inventario[0] == "Flechas" e flechas > 0 e inventario[1] == "Arco de Combate" e folego >= 10){
						
						folego -= 10
						flechas --

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							dano = u.sorteia(10, 20)
							escreva("O inimigo tomou ", dano, " de dano.")
							vida_inimigo -= dano
							u.aguarde(2000)
							limpa()
							
						}

						senao{
							escreva("Você errou o ataque.")
							u.aguarde(2000)
						}
					}
						senao se(golpe == 3 e ataques[2] == "Amplificador" e folego >= 1){
						
						folego -= 3

						acerto = u.sorteia(0, 20)

						escreva("voce pega um amplificador danificado fazendo um chiado horrivel")

						u.aguarde(1000)
						
						se(acerto >= destreza_inimigo){

							escreva(", o inimigo fica ensurdecido com o som deixando ele tonto")
							u.aguarde(2000)
							stun = verdadeiro
							destreza_inimigo -= 2
							limpa()
						}

						senao{
							escreva(", o inimigo resiste ao som horrivel")
							u.aguarde(2000)
						}
						}
					
					senao se(golpe == 0){
						escreva("Voltando")
						u.aguarde(500)
						limpa()
					}
					senao{
						escreva("Golpe inexistente ou fôlego insuficiente.")
						u.aguarde(3000)
						limpa()
					}
					
					pare

					caso 2:
					para(inteiro j = 0; j < 4; j++){

						se(magias[j] != ""){
							
							escreva(j+1, " -> ", magias[j], "\n")
							
						}
					}
					escreva("Escolha sua ação ou '0' para retornar: ")
					leia(magico)
					
					se(magico == 1 e magias[0] == "Cura" e mana >= 5){

						se(vida == vida_maxima){

							escreva("Sua vida já está no máximo.")
							u.aguarde(2000)
							limpa()
						}
						senao{
							
							mana -= 5
							dano = u.sorteia(1, 10)
							vida += dano
							se(vida > vida_maxima){
								vida = vida - (vida-vida_maxima)
								escreva("Você curou sua vida ao máximo.")
								u.aguarde(2000)
								limpa()
							}
							senao{
								escreva("Você curou ", dano, " pontos de vida.")
								u.aguarde(2000)
								limpa()
						}
						}
					}
					senao se(magico == 2 e magias[1] == "Bola de Energia" e mana >= 8){
						
						mana -= 8

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							dano = u.sorteia(5, 15)
							escreva("O inimigo tomou ", dano, " de dano.")
							vida_inimigo -= dano
							u.aguarde(2000)
							limpa()

						}
						senao{
							escreva("Você errou o ataque.")
							u.aguarde(3000)
							limpa()
						}
					}
					 senao se(magico == 3 e magias[2] == "Relampago" e mana >= 4){
						
						mana -= 8

						escreva("voce invoca a mana dos ceus fazendo um enorme relampago com um som ensurdecedor")

						u.aguarde(1000)

						acerto = u.sorteia(0, 20)

						se(acerto >= destreza_inimigo){
							escreva(" , fazendo o ficar tonto dificultando sua mobilidade e açoes")
							u.aguarde(2000)
							stun = verdadeiro
							destreza_inimigo -= 2
							limpa()

						}
						senao{
							escreva(" , Porem o inimigo nao foi afetado.")
							u.aguarde(3000)
							limpa()
						}
					 }
					senao se(magico == 0){
						escreva("Voltando")
						u.aguarde(500)
						limpa()
					}
					senao{
						escreva("Magia inexistente ou mana insuficiente.")
						u.aguarde(3000)
						limpa()
					}
					pare

					caso 3:
					para(inteiro k = 0; k < 4; k++){

						se(inventario[k] != ""){

							escreva(k+1, " -> ", inventario[k])
							
							se(inventario[k] == "Poção de Cura"){
								escreva(" x", pocao_cura)
							}

							se(inventario[k] == "Poção de Mana"){
								escreva(" x", pocao_mana)
							}

							se(inventario[k] == "Trembolona"){
								escreva(" x", trembolona)
							}

							se(inventario[k] == "Flechas"){
								escreva(" x", flechas)
							}
							escreva("\n")
						}
					}	
					escreva("Escolha sua ação '0' para retornar: ")
					leia(item)
					
					se(item == 1 e inventario[0] == "Trembolona" e trembolona >= 1){

						se(folego == folego_maximo){
							escreva("Seu fôlego já está no máximo.")
							u.aguarde(3000)
							limpa()
						}
						senao{
							
							dano = u.sorteia(1, 10)
							folego += dano
							se(folego > folego_maximo){
								folego = folego - (folego-folego_maximo)
								escreva("Você recuperou seu fôlego ao máximo.")
								u.aguarde(3000)
								limpa()
								trembolona --
							}
							senao{
								escreva("Você recuperou ", dano, " pontos de fôlego.")
								u.aguarde(2000)
								limpa()
								trembolona --
					}
						}
					}
					
					senao se(item == 3 e inventario[2] == "Poção de Cura" e pocao_cura >= 1){
						se(vida == vida_maxima){
							escreva("Sua vida já está no máximo.")
							u.aguarde(3000)
							limpa()
						}
						senao{
							
							dano = u.sorteia(1, 10)
							vida += dano
							se(vida > vida_maxima){
								vida = vida - (vida-vida_maxima)
								escreva("Você curou sua vida ao máximo.")
								pocao_cura --
								u.aguarde(3000)
								limpa()
							}
							senao{
								escreva("Você curou ", dano, " pontos de vida.")
								pocao_cura --
								u.aguarde(2000)
								limpa()
					}
						}
					}
					
					senao se(item == 4 e inventario[3] == "Poção de Mana" e pocao_mana >= 1){
						se(mana == mana_maximo){
							escreva("Sua mana já está no máximo.")
							u.aguarde(3000)
							limpa()
						}
						senao{
							
							dano = u.sorteia(1, 10)
							mana += dano
							se(mana > mana_maximo){
								mana = mana - (mana-mana_maximo)
								escreva("Você curou sua mana ao máximo.")
								pocao_mana --
								u.aguarde(3000)
								limpa()
							}
							senao{
								escreva("Você curou ", dano, " pontos de mana.")
								pocao_mana --
								u.aguarde(2000)
								limpa()
					}
						}
					}
					senao se (item == 0) {
						escreva("Voltando")
						u.aguarde(500)
						limpa()
					}
					senao{
						escreva("Este item é inexistente ou não pode ser utilizado agora.")
						u.aguarde(3000)
						limpa()
					}
					pare

					caso 4:
					se(folego >= 4){
						destreza += 4
						folego -= 4
						escreva("Você recua e diminui as chances do inimigo te acertar.")
						u.aguarde(3000)
					}
					senao{
						escreva("Fôlego insuficiente.")
						u.aguarde(3000)
					}
					pare

					caso 5:

					escreva("Fim do turno.")
					pare
					
					caso contrario:
					escreva("Ação inválida.")
					u.aguarde(2000)
					limpa()
					pare
				}
			}enquanto(acao !=5)

	//Turno do inimigo
				
				se(vida_inimigo <= 0){
					pare
				}
				folego_inimigo = folego_inimigo_max
				mana_inimigo = mana_inimigo_max
				destreza_inimigo = destreza_inimigo_max
				
				limpa()
				escreva("Turno inimigo. \n")

				se(nome_inimigo == "Aranha"){
					aranha()
				}
				senao se(nome_inimigo == "Aranha Gigante"){
					aranha_gigante()
				}
				senao se(nome_inimigo == "Cavaleiro Escorpião"){
					cavaleiro_escorpiao()
				}
				senao se(nome_inimigo == "Comandante Escorpião"){
					comandante_escorpiao()
				}
				senao se(nome_inimigo == "Lagartixa Tropical"){
					lagartixa_tropical()
				}
				
				folego = folego_maximo
				mana = mana_maximo
				destreza = destreza_maximo

				se(envenenado == verdadeiro){

					dano = u.sorteia(1, 3)
					vida -= dano
					escreva("Você tomou ", dano, " dano por envenenamento.")
					u.aguarde(3000)
					limpa()
				}
			}
		}

	funcao parte2()
	{
		se(vida <= 0)
		{
			retorne
		}
		senao
		{
			escreva("A Barata, assustada, volta para a sua loja.\n\n")
			u.aguarde(5000)
			escreva("A Lagartixa Radical está sem expressão e encostada na parede com praticamente o kit de primeiros socorros inteiro em seu rosto.\n")
			u.aguarde(5000)
			escreva("Assim que a Barata vê a Lagartixa Radical , ela sabe que tem uma escolha a fazer.\n\n")
			u.aguarde(5000)
			escreva("[1] Ajudar a Lagartixa Radical\n[2] Não ajudar a Lagartixa Radical\n")
			leia(escolhas)

			enquanto(escolhas != 1 e escolhas != 2)
			{
				escreva("Ação inválida.")
				leia(escolhas)
			}
			se(escolhas == 1)
			{
				escreva("Baratinha - Eu irei te ajudar, mas primeiro nós precisamos de ajuda. Eu tenho alguns amigos que podem nos ajudar. \nAliás, a partir de agora me chame de ", classe, ".\n\n")
				u.aguarde(5000)
				escreva("Você inicia sua aventura com a Lagartixa Radical atrás de derrotar a Lagartixa Tropical.\n\n")
				u.aguarde(5000)
				escreva("Sem saber o que fazer, a Barata decide ir atrás do inimigo mais antigo da Lagartixa Tropical: o Mosquito. Chegando no pneu do Mosquito\n, Barata se depara com ele sendo atacado por filhotes de aranha.\n\n")
				u.aguarde(5000)
				escreva("[1] Não ajudar o Mosquito\n[2] Ajudar o Mosquito\n")
				leia(escolhas)
			
				enquanto(escolhas != 1 e escolhas != 2)
				{
					escreva("Ação inválida.")
					leia(escolhas)
				}
			
				se(escolhas == 1)
				{
					escreva("Como você não sabe para onde ir, sua missão acaba por aqui.\nFim do Jogo")
					retorne
				}
				
				se(escolhas == 2)
				{
					nome_inimigo = "Aranha Gigante"
					combate()
				
					escreva("Após a luta, o Mosquito da Dengue vem agradecer a Barata:\nMosquito da Dengue - Muito obrigado, Barata! Como você soube que eu precisava de ajuda?\n\n")
					u.aguarde(5000)
					escreva("Barata - Eu não sabia. Na verdade, vim aqui pois preciso da sua ajuda para derrotar a Lagartixa Tropical.\n\n")
					u.aguarde(5000)
					escreva("Neste momento, o Mosquito se assusta e dá um passo para trás.\n\n")
					u.aguarde(5000)
					escreva("Mosquito - Ah, não. Não diga esse nome. Não posso te ajudar a derrotá-la, apenas posso dizer onde ela está.\n\n")
					u.aguarde(5000)
					escreva("Assim, a Barata consegue a localização da Caixa d’água Primordial e continua sua missão.\n\n")
					u.aguarde(5000)
					escreva("Chegando na Caixa d’água Primordial, a Barata não encontra a Lagartixa Tropical e lugar algum.\n\n")
					u.aguarde(5000)
					escreva("[1] Continuar procurando ela\n[2] Voltar para a loja\n")
					leia(escolhas)
					
					enquanto(escolhas != 1 e escolhas != 2)
					{
						escreva("Ação inválida.")
						leia(escolhas)
					}

					se(escolhas == 1)
					{
						enquanto(escolhas == 1)
						{
							escreva("Digite [1] para continuar procurando e [2] para ir para a loja")
							
						}
					}
					se(escolhas == 2)
					{
						escreva("A Barata volta para a sua loja com muita tristeza. Após anos aposentada, ela achou que este finalmente seria o seu momento de voltar à ativa.\n\n")
						escreva("Ao chegar na cidade ela percebe que tudo, incluindo a sua loja, está pegando fogo. Animais correm por toda parte. Inicialmente, ela não sabe\npara onde ir. O caminho de volta à cidade está pegando fogo, pessoas(animais) correm por todo lado\n e na frente da loja da Baratinha esta a L. Tropical.\n\n")
						escreva("A L. Radical, em uma tentativa de salvar a cidade, ataca a L. Tropical. Infelizmente, a L. Tropical vê o ataque chegando e consegue desviar e\ndar uma rasteira com sua cauda na L. Radical, fazendo com que a mesma seja arremessada para longe, já desacordada.\n\n") 
						escreva("A Barata, indignada, diz:\\nn")
						escreva("Barata - O que está acontecendo?!\n\n") 
						escreva("L. tropical - Você não entenderia, mas se quiser se junte a mim, e a Caixa d'água Primordial será apenas nossa, para sempre!")
						escreva("Barata - O quê?\n\n")
						escreva("L. Tropical - Você foi a única que me ajudou, as pessoas sempre tiveram nojo de mim porque acham lagartixas nojentas, você sabe como é.\n\n")
						escreva("Agora você tem uma escolha a fazer:\nDigite [1] para lutar contra a L. Tropical [2] para se juntar a L. Tropical\n")
						leia(escolhas)

						enquanto(escolhas != 1 e escolhas != 2)
						{
							escreva("Ação inválida.")
							leia(escolhas)
						}
						se(escolhas == 1)
						{
							combate()
						}
						se(escolhas == 2)
						{
							escreva("Você se junta à L. Tropical, durante a comemoração, ela te envenena e você fica presa em uma jaula para sempre.\nEla tenta te assassinar algumas vezes, mas a sua força de Barata não deixa")
							retorne
						}

					}

				}
		}
			se(escolhas == 2)
			{
				escreva("Você se recusa a ajudar a Lagartixa não acreditando ou dizendo que não é problema dela.\n A Lagartixa se retira sem dizer uma palavra. Com passar do tempo, a L. Radical vai ficando cada vez mais forte e a Barata fica cuidando de sua loja, até que um dia a cidade inteira entra em caos. Há fogo por toda parte e pessoas são atacadas por Aranhas e Escorpiões. A Barata vê a L. tropical matando todo mundo. No outro lado da luta, ela vê uma outra Lagartixa com um tapa olho lutando bravemente. Após um tempo, você percebe que na verdade é a Lagartixa Radical. Antes que você pudesse dizer alguma coisa, a L. Tropical assassina com sangue frio a L. Radical L. A L. tropical vem até você  ediz:\n\n")
				escreva("É uma pena, mas você tem que morrer.\n")
				
				nome_inimigo = "Lagartixa Tropical"
				combate()
				
				se(vida >= 0)
				{
					escreva("A Barata se vê sozinha, com o corpo da Lagartixa Tropical em suas mãos.\n Ela se arrepende de tudo: de não ter ajudado a L. Radical e a L. Tropical. Ela se vê sozinha num mundo com apenas mágoa em seu coração e assim ela se mata.")
				}

				retorne
			}
		
			}


	}

	*/funcao aranha(){

		inteiro acao_utilizada  //define aleatoriamente a ação do inimigo
		inteiro acerto
		inteiro dano

		enquanto(folego_inimigo > 0){
			
			acao_utilizada = u.sorteia(0, 100)

			se(acao_utilizada <= 90 e folego_inimigo >= 3){   //mordida

				folego_inimigo -= 3
				acerto = u.sorteia(1, 20)
				
				se(acerto >= destreza){

					dano = u.sorteia(1, 5)

					escreva("A aranha te mordeu, dando ", dano, " de dano.\n")
					vida -= dano

					acerto = u.sorteia(0, 20)
					
					se(acerto >= constituicao){
						escreva("Você foi envenenado.")
						envenenado = verdadeiro
					}
				}

				senao{
					escreva("Aranha errou o ataque.")
				}

				u.aguarde(3000)
				limpa()
			}
			senao se(acao_utilizada >= 91 e folego_inimigo >= 4){

				escreva("A aranha recua, diminuindo as chances de ser atingida.")
				destreza_inimigo += 4
				folego_inimigo -= 4
				u.aguarde(3000)
				limpa()
			}
			senao{
				pare
			}
		}
	}

	funcao aranha_gigante(){
		
		inteiro acao_utilizada
		inteiro acerto
		inteiro dano

	enquanto(folego_inimigo > 0){

		acao_utilizada = u.sorteia(0, 100)
		
			se(acao_utilizada <= 49 e folego_inimigo >= 8){   //mordida

				folego_inimigo -= 8
				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){
					
					dano = u.sorteia(3, 8)
					escreva("A Aranha Gigante te mordeu, dando ", dano, " de dano.\n")
					vida -= dano

					acerto = u.sorteia(0, 20)

					se(acerto >= constituicao){
						escreva("Você foi envenenado.")
						envenenado = verdadeiro
					}
				}
				
				senao{
					escreva("A Aranha Gigante errou o ataque.")
				}
				
				u.aguarde(3000)
				limpa()
			}

			senao se(acao_utilizada >= 50 e acao_utilizada <= 90 e folego_inimigo >= 4){   //teia

				folego_inimigo -= 4

				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){
					escreva("A aranha te imobiliza com sua teia.")
					imobilizado = verdadeiro
					u.aguarde(3000)
					limpa()
				}

				senao{
					escreva("A aranha erra o ataque.")
					u.aguarde(3000)
					limpa()
				}
			}

		senao se(acao_utilizada >= 91 e folego_inimigo >= 4){

			escreva("A Aranha Gigante recua, diminuindo as chances de ser atingida.")
			destreza_inimigo += 4
			folego_inimigo -= 4
			u.aguarde(3000)
			limpa()
		}

		senao{
			pare
		}
	}
	}

	funcao cavaleiro_escorpiao(){
		inteiro acao_utilizada
		inteiro acerto
		inteiro dano

		enquanto(folego_inimigo > 0){

			acao_utilizada = u.sorteia(0, 100)
			
			se(acao_utilizada <= 90 e folego_inimigo >= 2){   //ferrão

				folego_inimigo -= 3
				acerto = u.sorteia(0, 20)

				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){
					dano = u.sorteia(1, 6)
					escreva("O escorpião te acerta com o ferrão, dando ", dano, " de dano.\n")
					vida -= dano

					acerto = u.sorteia(0, 20)

					se(acerto >= constituicao){
						escreva("Você foi envenenado.")
						envenenado = verdadeiro
						u.aguarde(3000)
						limpa()
					}
					u.aguarde(3000)
					limpa()
				}

				senao{
					escreva("O inimigo errou o ataque.")
					u.aguarde(3000)
					limpa()
				}
			}
			senao se(acao_utilizada >= 91 e folego_inimigo >= 3){
				escreva("O escorpião recua, diminuindo as chances de ser atinigido.")
				destreza_inimigo += 4
				u.aguarde(3000)
				limpa()
			}

			senao{
				pare
			}
		}
	}

	funcao comandante_escorpiao(){
		inteiro acao_utilizada
		inteiro acerto
		inteiro dano

		enquanto(folego_inimigo > 0){

			acao_utilizada = u.sorteia(0, 100)

			se(acao_utilizada <= 25 e folego_inimigo >= 2){   //ferrão

				folego_inimigo -= 3
				acerto = u.sorteia(0, 20)
				
				se(acerto >= destreza){
					dano = u.sorteia(1, 7)
					escreva("O Comandante Escopião te acerta com o ferrão, dando ", dano, " de dano.\n")
					vida -= dano

					acerto = u.sorteia(0, 20)

					se(acerto >= constituicao){
						escreva("Você foi envenenado.")
						envenenado = verdadeiro
					}
					u.aguarde(3000)
					limpa()
				}

				senao{
					escreva("O inimigo errou o ataque.")
					u.aguarde(3000)
					limpa()
				}

			}

			senao se(acao_utilizada >= 26 e acao_utilizada <= 65 e folego_inimigo >= 8){   //garra
				
				folego_inimigo -= 7
				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){

					dano = u.sorteia(5, 10)
					escreva("O Comandante Escorpião te acerta com suas garras, dano ", dano, " de dano.\n")
					vida -= dano
					u.aguarde(3000)
					limpa()
				}

				senao{

					escreva("O inimigo errou o ataque.")
					u.aguarde(3000)
					limpa()
				}
			}

			senao se(acao_utilizada >= 66 e acao_utilizada <= 90 e folego_inimigo >= 15){   //garra e ferrão
				
				folego_inimigo -= 15
				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){
					
					dano = u.sorteia(10, 15)
					escreva("O Comandante Escorpião te ataca com as garras e o ferrão, dando ", dano, " de dano.\n")
					vida -= dano

					acerto = u.sorteia(0, 20)

					se(acerto >= constituicao){
						escreva("Você foi envenenado.")
						envenenado = verdadeiro
					}
					u.aguarde(3000)
					limpa()
				}

				senao{
					escreva("O inimigo errou o ataque.")
					u.aguarde(3000)
					limpa()
				}
			}
			senao se(acao_utilizada >= 91 e folego_inimigo >= 3){
				escreva("O Comandante Escorpião recua, diminuindo as chances de ser atinigido.")
				destreza_inimigo += 4
				folego_inimigo -= 3
				u.aguarde(3000)
				limpa()
			}

			senao{
				pare
			}
		}
	}
		funcao lagartixa_tropical(){			//Lagartixa Tropical. Ela está tão consumida pelo ódio que não consegue recuar. Deixo bem claro que esta é uma CARACTERÍSTICA DO JOGO, e não uma falta de habilidade do programador que vos fala.
		inteiro acao_utilizada, acerto, dano

		stunar()
		
		enquanto(folego_inimigo > 0 e mana_inimigo > 0){
			
			acao_utilizada = u.sorteia(0, 100)
			
			se(acao_utilizada <= 24  e folego_inimigo >= 10){		//linguada

				folego_inimigo -= 10
				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){
					dano = u.sorteia(5, 10)
					vida -= dano
					escreva("A Lagartixa te dá uma linguada, dando ", dano, " de dano.\n")
					escreva("Você fica coberto por saliva, te dando um enorme nojo.")
					u.aguarde(4000)
					limpa()					
				}
				senao{
					escreva("A Lagartixa errou o ataque.")
					u.aguarde(3000)
					limpa()
				}
			}

			senao se(acao_utilizada >= 25 e acao_utilizada <= 50 e folego_inimigo >= 15){		//rabada
				
				escreva("A Lagartixa furiosamente utiliza a cauda como uma espada.\n")
				
				folego_inimigo -= 15
				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){
					dano = u.sorteia(10, 15)
					vida -= dano
					escreva("Ela te acerta, dando ", dano, " de dano.")
					u.aguarde(4000)
					limpa()
				}
				senao{
					escreva("Mas ela erra o ataque.")
					u.aguarde(4000)
					limpa()
				}
			}
				
			
			senao se(acao_utilizada >= 51 e acao_utilizada <= 75 e mana_inimigo >= 8){	//magia de cura

				se(vida_inimigo < vida_inimigo_max){
					mana_inimigo -= 8						
					dano = u.sorteia(5, 25)
					vida_inimigo += dano
					se(vida_inimigo > vida_inimigo_max){							
						vida_inimigo = vida_inimigo - (vida_inimigo-vida_inimigo_max)
						escreva("A Lagartixa Tropical curou sua vida ao máximo.")						
						u.aguarde(2000)
						limpa()
					}
					senao{
						escreva("A Lagartixa Tropical curou ", dano, " pontos de vida.")
						u.aguarde(2000)
						limpa()
					}
				}
				
			}

			senao se(acao_utilizada >= 76 e mana_inimigo >= 10){			//fogo tropical
				
				mana_inimigo -= 10
				acerto = u.sorteia(0, 20)

				se(acerto >= destreza){

					dano = u.sorteia(10, 20)
					escreva("A Lagartixa cospe seu Fogo Tropical, dando ", dano, " de dano.")
					vida -= dano
					u.aguarde(3000)
					limpa()
				}

				senao{
					escreva("A Lagartixa Tropical errou o ataque.")
					u.aguarde(3000)
					limpa()
				}
			}

			senao{
				pare
			}
		}
	}
	funcao stunar ()
	{
		inteiro off_stun , teste_const, n = 0

		se( stun == verdadeiro )
		{
			destreza_inimigo -= 3
			teste_const = 16
			enquanto ( stun == verdadeiro e folego_inimigo >= 4)
			{
				off_stun = Util.sorteia(1,20)
				n ++
			
				se ( off_stun >= teste_const)
				{
					stun = falso
					escreva(nome_inimigo, " consegue sair do stun")
					u.aguarde(1000)
					limpa()
				}
				teste_const = teste_const - 2
				folego_inimigo -= 4
			}
		}
	}
	funcao teste(){
		se(classe1 == "marombeiro")
		{
			ataques[2] = "Atordoar"
		}
		senao se(classe1 == "luthier")
		{
			ataques[2] =  "Amplificador"
		}
		senao se(classe1 == "professor de quimica")
		{
			magias[2] = "Relampago"
		}
		senao se(classe1 == "politico")
		{
			ataques[2] = "Mentiras"
		}
	}
}
