# viscap_gazebo
O pacote viscap_gazebo fornece arquivos relacionados à simulação de drones usando o simulador Gazebo (plugins do Gazebo, 
arquivos world, arquivos launch, modelos de drones, nodes de controle, etc).

## Instalação

### ROS Kinetic
1. Instalar o Gazebo 7:
```
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo7 libgazebo7-dev
```
2. Instalar dependências:
```
sudo apt install ros-kinetic-joy
sudo apt install ros-kinetic-image-view
sudo apt install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control
sudo apt install ros-kinetic-hector-gazebo-plugins ros-kinetic-hector-sensors-description ros-kinetic-hector-gazebo ros-kinetic-hector-localization ros-kinetic-slam-gmapping
```
3. Fazer o download do pacote viscap_gazebo:
> **Obs:** Esse passo pressupõe que você já tenha criado uma workspace do ROS na pasta ~/catkin_ws. Caso você ainda não tenha uma
  workspace, [veja aqui como criar](http://wiki.ros.org/catkin/Tutorials/create_a_workspace).
```
cd ~/catkin_ws/src
git clone https://github.com/viscap/viscap_gazebo
```
4. Compilar o plugin de controle do drone:
```
cd ~/catkin_ws/src/viscap_gazebo/plugins
rm -r build
mkdir -p build
cd build
cmake ..
make
```
5. Compilar o arquivo world do IMAV 2017:
```
cd ~/catkin_ws/src/viscap_gazebo/worlds/xacro
rosrun xacro xacro --inorder imav_indoor.world.xacro > ~/catkin_ws/src/viscap_gazebo/worlds/imav_indoor_2017.world 
```
6. Tornar o plugin e os modelos visíveis para o Gazebo:
```
echo "export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/catkin_ws/src/viscap_gazebo/plugins/build" >> ~/.bashrc
echo "export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:~/catkin_ws/src/viscap_gazebo/models" >> ~/.bashrc
source ~/.bashrc
```
7. Compilar o pacote:
```
cd ~/catkin_ws
catkin_make
```

### ROS Indigo
1 . Instalar o ambiente de simulação descrito [nessa página](https://github.com/viscap/arquivos_uteis/blob/master/tutoriais/install%20drone%20simulation.txt).  
2. Instalar dependências:
```
sudo apt install ros-indigo-joy
sudo apt install ros-indigo-image-view
sudo apt install ros-indigo-hector-sensors-description ros-indigo-hector-localization ros-indigo-slam-gmapping
```
3. Fazer o download do pacote viscap_gazebo:
```
cd ~/simulation/ros_catkin_ws/src
git clone https://github.com/viscap/viscap_gazebo
```
4. Compilar o plugin de controle do drone:
```
source ~/simulation/ros_catkin_ws/devel/setup.bash
cd ~/simulation/ros_catkin_ws/src/viscap_gazebo/plugins
rm -r build
mkdir -p build
cd build
cmake ..
make
```
5. Compilar o arquivo world do IMAV 2017:
```
cd ~/simulation/ros_catkin_ws/src/viscap_gazebo/worlds/xacro
rosrun xacro xacro --inorder imav_indoor.world.xacro > ~/simulation/ros_catkin_ws/src/viscap_gazebo/worlds/imav_indoor_2017.world 
```
6. Tornar o plugin e os modelos visíveis para o Gazebo:
```
echo "export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/simulation/ros_catkin_ws/src/viscap_gazebo/plugins/build" >> ~/.bashrc
echo "export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:~/simulation/ros_catkin_ws/src/viscap_gazebo/models" >> ~/.bashrc
source ~/.bashrc
```
7. Compilar o pacote:
```
cd ~/simulation/ros_catkin_ws
catkin_make --pkg viscap_gazebo
```

## Uso básico
Para iniciar o Gazebo com um cenário de simulação específico:
```
roslaunch viscap_gazebo start_gazebo.launch world:=<nome do mundo>
```
O argumento world deve contar o nome do mundo que se deseja simular. Os mundos disponíveis são:  
* **imav_indoor_2016**: Ambiente da prova indoor do IMAV 2016.
* **imav_indoor_2017**: Ambiente da prova indoor do IMAV 2017.  
> **Obs:** O mundo padrão é o **imav_indoor_2016**.

Iniciar um drone dentro da simulação:
```
roslaunch viscap_gazebo spawn_quadrotor.launch id:=<id do drone>
```
Para iniciar vários drones, executar esse comando várias vezes, mas cada vez com um id diferente.
