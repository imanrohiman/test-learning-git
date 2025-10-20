pipeline {
    agent any

    environment {
        EMAIL_TO = 'iman.rohiman31@gmail.com'
    }

    stages {
        stage('Checkout') {
            steps {
                // Ambil kode dari repo GitHub-mu
                git url: 'https://github.com/imanrohiman/test-learning-git.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo "Build aplikasi..."
                // Tambahkan build script di sini kalau ada
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploy aplikasi..."
                // Tambahkan deploy script di sini kalau ada
            }
        }
    }

    post {
        always {
            echo "Kirim Notifikasi Email Sukses/Gagal"

            // Ambil commit terakhir untuk info di email
            script {
                def lastCommit = sh(
                    script: 'git log -1 --pretty=format:"%h - %an: %s"',
                    returnStdout: true
                ).trim()

                emailext(
                    to: env.EMAIL_TO,
                    subject: "Jenkins Deploy Status: ${currentBuild.currentResult}",
                    mimeType: 'text/html',
                    body: """
                        <h2>Jenkins Deploy Notification</h2>
                        <p><b>Status:</b> ${currentBuild.currentResult}</p>
                        <p><b>Job:</b> ${env.JOB_NAME} #${env.BUILD_NUMBER}</p>
                        <p><b>Last Commit:</b> ${lastCommit}</p>
                        <p>— Jenkins</p>
                    """
                )
            }
        }
    }
}
