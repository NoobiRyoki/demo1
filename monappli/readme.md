1- Initialiser le projet en ajoutant le pom parent

# mvn archetype:generate -B -DarchetypeArtifactId=maven-archetype-quickstart -DgroupId=com.objis.demomaven -DartifactId=monappli -Dversion=1.0-SNAPSHOT -DpackageName=com.objis.demomaven

Modifier le type du packaging jar du fichier Pom.xml  en Pom


2- créer la couche domaine

# mvn archetype:generate -B -DgroupId=com.objis.demomaven -DartifactId=monappli-domaine

3- créer la couche service

# mvn archetype:generate -B -DgroupId=com.objis.demomaven -DartifactId=monappli-service

4- créer la couche dao

# mvn archetype:generate -B -DgroupId=com.objis.demomaven -DartifactId=monappli-dao

5- créer la couche webapp

# mvn archetype:generate -B -DarchetypeArtifactId=maven-archetype-webapp -DgroupId=com.objis.demomaven -DartifactId=monappli-web

6- Dans le POM DAO ajouter la dependance domaine

	<dependency>
      <groupId>com.objis.demomaven</groupId>
      <artifactId>monappli-domaine</artifactId>
      <version>1.0-SNAPSHOT</version>
    </dependency>
	
7- Dans le POM Service ajouter la dependance DAO

	<dependency>
      <groupId>com.objis.demomaven</groupId>
      <artifactId>monappli-dao</artifactId>
      <version>1.0-SNAPSHOT</version>
    </dependency>
	

8- Dans le POM web ajouter la dependance Service

	<dependency>
      <groupId>com.objis.demomaven</groupId>
      <artifactId>monappli-service</artifactId>
      <version>1.0-SNAPSHOT</version>
    </dependency>


	
	

Super POM: Comprendre la notion de 'POM effectif' : mvn help:effective-pom > pom-effectif.xml 

Comprendre la notion de 'Settings effectif' : mvn help:effective-settings > settings-effectif.xml
