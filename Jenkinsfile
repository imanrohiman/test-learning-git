    post {
        always {
            echo  "Kirim Notif EMail Sukses atau Gagal"
            emailext(
                to: 'iman.rohiman31@gmail.com',
                // body: '${DEFAULT_CONTENT} <br><br> Change Logs : <br>${CHANGES}',
                body: '''${SCRIPT, template="groovy-html.template"}''',
                //body: '${DEFAULT_CONTENT} <br><br> Change Logs : <br>${CHANGES}  <br><br> Sonarqube  Result : <br> report-task',
                mimeType: 'text/html',
                subject: '${DEFAULT_SUBJECT}',
                replyTo: '$DEFAULT_REPLYTO'    
            )
        }
    }
}
