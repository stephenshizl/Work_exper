###############################
####functions
###############################
function init_java_env(){
	local java_6_path=/home/zhangzhaolei/jdk1.6.0_45
	local java_7_path=/usr/lib/jvm/java-7-openjdk-amd64
	local java_8_path=/usr/lib/jvm/java-8-openjdk-amd64

	#java 6
	#export JAVA_HOME=$java_6_path
	#local simp_path_evn=${PATH//$JAVA_HOME\/bin:/}
	#simp_path_evn=${simp_path_evn//$java_7_path\/bin:/}
	#export PATH=$JAVA_HOME/bin:$simp_path_evn
	#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

	#java 7
	#export JAVA_HOME=$java_7_path
	#local simp_path_evn=${PATH//$JAVA_HOME\/bin:/}
	#simp_path_evn=${simp_path_evn//$java_6_path\/bin:/}
	#export PATH=$JAVA_HOME/bin:$simp_path_evn
	#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

	#java 8
	export JAVA_HOME=$java_8_path
	local simp_path_evn=${PATH//$JAVA_HOME\/bin:/}
	simp_path_evn=${simp_path_evn//$java_6_path\/bin:/}
	export PATH=$JAVA_HOME/bin:$simp_path_evn
	export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
}
################################

init_java_env

