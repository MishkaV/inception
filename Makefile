# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbenjy <jbenjy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/02 14:41:29 by 19801843          #+#    #+#              #
#    Updated: 2022/01/12 21:38:18 by jbenjy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN			=	\033[0;32m
YELLOW			=	\033[0;33m
NORMAL			=	\033[0m
MAGENTA			=	\033[0;35m

WORD_SUCCESS	=	░██████╗██╗░░░██╗░█████╗░░█████╗░███████╗░██████╗░██████╗██╗\n\
					██╔════╝██║░░░██║██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝██║\n\
					╚█████╗░██║░░░██║██║░░╚═╝██║░░╚═╝█████╗░░╚█████╗░╚█████╗░██║\n\
					░╚═══██╗██║░░░██║██║░░██╗██║░░██╗██╔══╝░░░╚═══██╗░╚═══██╗╚═╝\n\
					██████╔╝╚██████╔╝╚█████╔╝╚█████╔╝███████╗██████╔╝██████╔╝██╗\n\
					╚═════╝░░╚═════╝░░╚════╝░░╚════╝░╚══════╝╚═════╝░╚═════╝░╚═╝\n

WORD_BUILDING	=	██████╗░██╗░░░██╗██╗██╗░░░░░██████╗░██╗███╗░░██╗░██████╗░░░░░░░░░░\n\
					██╔══██╗██║░░░██║██║██║░░░░░██╔══██╗██║████╗░██║██╔════╝░░░░░░░░░░\n\
					██████╦╝██║░░░██║██║██║░░░░░██║░░██║██║██╔██╗██║██║░░██╗░░░░░░░░░░\n\
					██╔══██╗██║░░░██║██║██║░░░░░██║░░██║██║██║╚████║██║░░╚██╗░░░░░░░░░\n\
					██████╦╝╚██████╔╝██║███████╗██████╔╝██║██║░╚███║╚██████╔╝██╗██╗██╗\n\
					╚═════╝░░╚═════╝░╚═╝╚══════╝╚═════╝░╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝╚═╝╚═╝\n

WORD_CLEANING	=	░█████╗░██╗░░░░░███████╗░█████╗░███╗░░██╗██╗███╗░░██╗░██████╗░░░░░░░░░░\n\
					██╔══██╗██║░░░░░██╔════╝██╔══██╗████╗░██║██║████╗░██║██╔════╝░░░░░░░░░░\n\
					██║░░╚═╝██║░░░░░█████╗░░███████║██╔██╗██║██║██╔██╗██║██║░░██╗░░░░░░░░░░\n\
					██║░░██╗██║░░░░░██╔══╝░░██╔══██║██║╚████║██║██║╚████║██║░░╚██╗░░░░░░░░░\n\
					╚█████╔╝███████╗███████╗██║░░██║██║░╚███║██║██║░╚███║╚██████╔╝██╗██╗██╗\n\
					░╚════╝░╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝╚═╝╚═╝\n

WORD_DOCKER		=	██╗███╗░░██╗██╗████████╗  ██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░\n\
					██║████╗░██║██║╚══██╔══╝  ██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗\n\
					██║██╔██╗██║██║░░░██║░░░  ██║░░██║██║░░██║██║░░╚═╝█████═╝░█████╗░░██████╔╝\n\
					██║██║╚████║██║░░░██║░░░  ██║░░██║██║░░██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗\n\
					██║██║░╚███║██║░░░██║░░░  ██████╔╝╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░░██║\n\
					╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░  ╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝\n

WORD_FCLEANING	=	███████╗░█████╗░██╗░░░░░███████╗░█████╗░███╗░░██╗██╗███╗░░██╗░██████╗░░░░░░░░░░\n\
					██╔════╝██╔══██╗██║░░░░░██╔════╝██╔══██╗████╗░██║██║████╗░██║██╔════╝░░░░░░░░░░\n\
					█████╗░░██║░░╚═╝██║░░░░░█████╗░░███████║██╔██╗██║██║██╔██╗██║██║░░██╗░░░░░░░░░░\n\
					██╔══╝░░██║░░██╗██║░░░░░██╔══╝░░██╔══██║██║╚████║██║██║╚████║██║░░╚██╗░░░░░░░░░\n\
					██║░░░░░╚█████╔╝███████╗███████╗██║░░██║██║░╚███║██║██║░╚███║╚██████╔╝██╗██╗██╗\n\
					╚═╝░░░░░░╚════╝░╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝╚═╝╚═╝\n

WORD_INCEPTION	=	░█████╗░░█████╗░░█████╗░██╗░░░░░  ██╗███╗░░██╗░█████╗░███████╗██████╗░████████╗██╗░█████╗░███╗░░██╗\n\
					██╔══██╗██╔══██╗██╔══██╗██║░░░░░  ██║████╗░██║██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║\n\
					██║░░╚═╝██║░░██║██║░░██║██║░░░░░  ██║██╔██╗██║██║░░╚═╝█████╗░░██████╔╝░░░██║░░░██║██║░░██║██╔██╗██║\n\
					██║░░██╗██║░░██║██║░░██║██║░░░░░  ██║██║╚████║██║░░██╗██╔══╝░░██╔═══╝░░░░██║░░░██║██║░░██║██║╚████║\n\
					╚█████╔╝╚█████╔╝╚█████╔╝███████╗  ██║██║░╚███║╚█████╔╝███████╗██║░░░░░░░░██║░░░██║╚█████╔╝██║░╚███║\n\
					░╚════╝░░╚════╝░░╚════╝░╚══════╝  ╚═╝╚═╝░░╚══╝░╚════╝░╚══════╝╚═╝░░░░░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝\n

WORD_BASIC			=	██████╗░░█████╗░░██████╗██╗░█████╗░  ░██████╗████████╗░█████╗░███████╗███████╗░░░░░░░░░\n\
					██╔══██╗██╔══██╗██╔════╝██║██╔══██╗  ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝░░░░░░░░░\n\
					██████╦╝███████║╚█████╗░██║██║░░╚═╝  ╚█████╗░░░░██║░░░███████║█████╗░░█████╗░░░░░░░░░░░\n\
					██╔══██╗██╔══██║░╚═══██╗██║██║░░██╗  ░╚═══██╗░░░██║░░░██╔══██║██╔══╝░░██╔══╝░░░░░░░░░░░\n\
					██████╦╝██║░░██║██████╔╝██║╚█████╔╝  ██████╔╝░░░██║░░░██║░░██║██║░░░░░██║░░░░░██╗██╗██╗\n\
					╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░╚════╝░  ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░╚═╝░░░░░╚═╝╚═╝╚═╝\n


all: init

init:
	@echo "\n${MAGENTA} ${WORD_INCEPTION}${NORMAL}"
	@echo "\n${YELLOW} ${WORD_BUILDING}${NORMAL}"
	@cd ./srcs && sudo docker-compose up --build -d
	@echo "\n${GREEN} ${WORD_SUCCESS}${NORMAL}"

env:
	@echo "\n${YELLOW} ${WORD_BUILDING}${NORMAL}"
	#Basic staff
	@echo "\n${MAGENTA} ${WORD_BASIC}${NORMAL}"
	sudo apt update
	sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common

	#Init docker
	@echo "\n${MAGENTA} ${WORD_DOCKER}${NORMAL}"
	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
	printf "%s\n" "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" |\
	sudo tee /etc/apt/sources.list.d/docker.list

	sudo apt update
	sudo apt-cache policy docker-ce
	sudo apt install docker-ce
	sudo systemctl restart docker
	sudo usermod -aG docker $$(whoami)

	#Init docker compose
	sudo curl -L https://github.com/docker/compose/releases/download/1.25.3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

clean:
	@echo "\n${YELLOW} ${WORD_CLEANING}${NORMAL}"
	@docker-compose -f ./srcs/docker-compose.yml down
	@echo "\n${GREEN} ${WORD_SUCCESS}${NORMAL}"

fclean:
	@echo "\n${YELLOW} ${WORD_FCLEANING}${NORMAL}"
	@docker-compose -f ./srcs/docker-compose.yml down

	@echo "\n${GREEN} ${WORD_SUCCESS}${NORMAL}"


re: fclean all
