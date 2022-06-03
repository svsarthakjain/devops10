pipeline{
  environment{
    reg="svsarthak/ass10"
    regCre="docker_id"
    dockerImg = ""
  }
  agent my
  stages{
    stage('Build Image'){
      steps{
          script{
            dockerImg=docker.build req +":$BUILD_NUMBER"
        }
      }
    }    
    stage('Deploy teh image'){
      steps{
          script{
            docker.withRegistry('',regCre){
              dockerImg.push()
            }
        }
      }
    }
  }
}
