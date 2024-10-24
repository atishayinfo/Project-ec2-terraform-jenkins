stage('Initialize Terraform') {
    steps {
        dir('') {  // Change to '' to indicate root directory
            bat 'terraform init'
        }
    }
}

stage('Apply Terraform Configuration') {
    steps {
        dir('') {
            bat 'terraform apply -auto-approve'
        }
    }
}
