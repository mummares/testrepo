orbs:
  aws-ecr: circleci/aws-ecr@6.15.3
version: 2.1
workflows:
  build_and_push_image:
    jobs:
      - aws-ecr/build-and-push-image:
          account-url: https://592678693542.signin.aws.amazon.com/console
          aws-access-key-id: ${AccessKey}
          aws-secret-access-key: ${SecrectKey}
          create-repo: true
          dockerfile: Dockerfile
          no-output-timeout: 20m
          path: /Users/sivaakhil/Downloads/testrepo
          profile-name: myProfileName
          region: us-east-1
          repo: symbiont-ecrrepo
          skip-when-tags-exist: false
          tag: 'latest,myECRRepoTag'

