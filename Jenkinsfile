pipeline {
  agent {
    label "javac"
  }
  stages {
    stage('Build') {
      steps{
        sh 'mvn clean install'
      }
    }
    stage('jacoco') {
      steps{
        jacoco()
      }
    }

    stage('SonarQube analysis') {
      steps{
        script {
          def scannerHome = tool 'scanner_sonar';
          withSonarQubeEnv('jenkins-sonar') {
            sh """
              ${scannerHome}/bin/sonar-scanner \
              -sonar.projectKey=javawebapp \
              -sonar.projectName=javawebapp \
              -sonar.projectVersion=1.0 \
              -sonar.java.binaries='target/classes'
            """
          }
        }
      }
    }

/*
    stage("Sonar Quality Gate Check") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    script {
                        def qualityGate = waitForQualityGate()
                        if (qualityGate.status != 'OK') {
                            error "Pipeline aborted due to quality gate failure: ${qualityGate.status}"
                        }
                    }
                } // End of timeout
            }
    }
*/
    stage('Deploy') {
      steps{
        sh 'echo "Here we deploy the build"'
      }
    }
    stage('Deploy to Tomcat') {
      steps{
        sh 'echo "Here we deploy the build to tomcat"'
      }
    }
  }
}
