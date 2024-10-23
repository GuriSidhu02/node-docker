pipeline {
  agent any
  stages{
    stage("checkout"){
      steps{
        checkout scm
      }
    }

    stage("Test"){
      steps{
        sh 'npm test'
      }
    }

    stage("Build"){
      steps{
        sh 'npm run build'
      }
    }

    stage("Build Image"){
      steps{
        sh 'docker build -t my-node-app:1.0 .'
      }
    }
    stage('Docker Push'){
      steps {
        withCredentials([usernamePassword(credentialsId: 'docker_cred', passwordVariable: 'Guri2902#', usernameVariable: 'sidhu00')]){
        sh 'docker login -u $sidhu00 -p $Guri2902#'
        sh 'docker tag my-node-app:1.0 sidhu00/nodedocker'
        sh 'docker push sidhu00/nodedocker'
        sh 'docker logout'
        }
      }
    }
  }
}
