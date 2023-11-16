pipeline {

agent any

 stages {

    stage ('checkout'){

       steps {

       git branch: 'master',  url: 'https://github.com/rakeshirukula/ThreeTier.git'

       }

    }
  
   stage ('build'){

       steps {

       sh 'mvn clean package -DskipTests=true'

       }

    }


 }


}
