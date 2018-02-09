node {
  try {
    docker.withRegistry('https://registry.hub.docker.com', 'docker-registry-login') {
      stage('Checkout') {
        checkout scm
      }
      stage('Build') {
        myDocker = docker.build("limit0/mms-backup-agent:v${env.BUILD_NUMBER}", '.')
      }
      if (env.BRANCH_NAME == 'master') {
        stage('Push Container') {
          myDocker.push("latest");
          myDocker.push("v${env.BUILD_NUMBER}");
        }
      }
    }
  } catch (e) {
    slackSend color: 'bad', message: "Failed building ${env.JOB_NAME} #${env.BUILD_NUMBER} (<${env.BUILD_URL}|View>)"
    throw e
  }
}
