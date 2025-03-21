pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // GitHub 저장소에서 코드를 체크아웃
                git(
                    url: 'https://github.com/RudySeo/jenkinTest.git',
                    credentialsId: 'my-github-credentials',  // GitHub 인증 정보 ID
                    branch: '*/master',  // main 브랜치에서 체크아웃
                    changelog: false,
                    poll: false
                )
            }
        }

        stage('Build') {
            steps {
                script {
                    // Gradle Wrapper로 빌드 실행 (테스트는 건너뛰고 빌드만 실행)
                    echo 'Building with Gradle...'
                    sh './gradlew clean build -x test'  // 테스트는 건너뛰고 빌드만 실행
                }
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
