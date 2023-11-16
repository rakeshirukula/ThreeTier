pipeline {

agent any

    parameters {
        
        gitParameter(
            name: 'VERSIONTAG',
            type: 'PT_TAG',
            description: 'Select a Git tag for the build',
            branchFilter: 'origin/tags.*', // Filter for tags
            defaultValue: 'VERSIONTAG' // Default value if no tag is selected
        )
    }

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
