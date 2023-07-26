<h1>Laboratório do SysAdmin: Solução de problemas e suporte técnico para usuários</h1>
<p>Neste projeto, vamos criar um ambiente virtual com as ferramentas necessárias para a solução de problemas e suporte técnico aos usuários. Para isso, vamos utilizar o Vagrant para criar uma máquina virtual com o Ubuntu e instalar as seguintes ferramentas:</p>

<ul>
  <li><a href="https://www.anydesk.com/pt" target="_blank"><img src="https://img.icons8.com/fluency/48/000000/anydesk.png"/> AnyDesk</a></li>
  <li><a href="https://remmina.org/" target="_blank"><img src="https://img.icons8.com/color/48/000000/remote-desktop.png"/> Remmina</a></li>
</ul>

<h2>Passo a passo</h2>
<h3>1. Pré-requisitos</h3>
<p>Antes de começar, é necessário ter instalado em seu computador o <a href="https://www.virtualbox.org/" target="_blank">VirtualBox</a> e o <a href="https://www.vagrantup.com/" target="_blank">Vagrant</a>.</p>

<h3>2. Estrutura do projeto</h3>
<p>A estrutura do projeto deve ser a seguinte:</p>
<pre>
.
├── logs
│   └── messages
└── scripts
    ├── check_process.sh
    ├── clean_logs.sh
    └── restart_service.sh
</pre>
<h3>3. Passo a passo</h3>
<h4>3.1. Configurando o ambiente</h4>
Faça o download e instale o Vagrant e o VirtualBox em seu computador.

Baixe ou clone este projeto em sua máquina.

Abra um terminal na pasta raiz do projeto e execute o comando vagrant up para criar e provisionar a máquina virtual com o ambiente configurado.

Acesse a máquina virtual com o comando vagrant ssh.

<h4>3.2. Uso das ferramentas de suporte</h4>
<h5>3.2.1. Verificação de processos</h5>
Para verificar se um processo está sendo executado, execute o script check_process.sh com o nome do processo como parâmetro. Por exemplo, para verificar se o processo nginx está sendo executado, execute o seguinte comando:


sudo bash /vagrant/scripts/check_process.sh nginx
<h5>3.2.2. Limpeza de logs</h5>
Para limpar o arquivo de logs /var/log/messages, execute o script clean_logs.sh com o seguinte comando:


sudo bash /vagrant/scripts/clean_logs.sh
<h5>3.2.3. Reinicialização de serviços</h5>
Para reinicializar um serviço, execute o script restart_service.sh com o nome do serviço como parâmetro. Por exemplo, para reinicializar o serviço nginx, execute o seguinte comando:


sudo bash /vagrant/scripts/restart_service.sh nginx
<h4>3.3. Uso das ferramentas de troubleshooting</h4>
<h5>3.3.1. Verificação de portas em uso</h5>
Para verificar as portas em uso, execute o seguinte comando:


echo "Portas em uso:"
netstat -tulpn
<h5>3.3.2. Verificação de utilização de espaço em disco</h5>
Para verificar a utilização de espaço em disco, execute o seguinte comando:


echo "Utilização de espaço em disco:"
df -h
<h5>3.3.3. Verificação de uso de memória</h5>
Para verificar o uso de memória, execute o seguinte comando:


echo "Uso de memória:"
free -m
<h5>3.3.4. Verificação de tráfego de rede</h5>
Para verificar o tráfego de rede, execute o seguinte comando:


echo "Tráfego de rede:"
sudo tcpdump
<h3>4. Tecnologias utilizadas</h3>
<ul>
	<li><a href="https://www.vagrantup.com/" target="_blank"><img src="https://img.icons8.com/windows/32/000000/vagrant.png"/> Vagrant</a></li>
	<li><a href="https://www.virtualbox.org/" target="_blank"><img src="https://img.icons8.com/color/32/000000/virtualbox.png"/>
