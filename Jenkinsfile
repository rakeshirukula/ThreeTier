pipeline {

  agent any

    triggers {
        githubPush() // Trigger the pipeline on GitHub push events
    }

    environment {
       GIT_TAG = ''// Initialize an environment variable to store the Git tag
       //VERSIONTAG = '$GIT_TAG' ( HERE THIS STEP DONT NEED THIS JUST TESTED BUT FAILED)
    }

    stages {
        stage('Checkout') {
            steps {
                // Clean workspace before checking out

                // Checkout the Git repository
                git branch: 'master', url: 'https://github.com/rakeshirukula/ThreeTier.git'
            }
        }

        stage('Echo and Store Git Tag') {
            steps {
                script {
                    // Get the current Git tag
                    GIT_TAG = sh(script: 'git describe --abbrev=0 --tags', returnStdout: true).trim()

                    // Echo and store the Git tag
                    echo "Current  Git Tag: ${GIT_TAG}"
                }
            }
        }
        
        stage('Build and Artifact Versioning') {
            steps {
                script {
                    // Use the stored Git tag as the artifact version
                    
                     env.VERSIONTAG = "${GIT_TAG}"   
                                     // Declaring locally using GIT_TAG subsitiing here

                    // Run Maven with clean and package goals
                sh 'mvn clean package -Dmaven.test.skip=true'
                
                echo "TESTING ${VERSIONTAG}"
                }
            }
        }




        // Add more stages for deployment, testing, etc.
    }

    post {
        success {
            echo "Pipeline successful! Using Git Tag: ${GIT_TAG}"
        }
        failure {
            echo "Pipeline failed"
        }
    }
}

