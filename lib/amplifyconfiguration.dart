const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "pdappbackendfi": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://w34zz4dntzdiniyp2zf33t7pzy.appsync-api.ap-northeast-1.amazonaws.com/graphql",
                    "region": "ap-northeast-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-xz6hypiqqzdw7a7aas4yfspe5e"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-northeast-1:2a93292a-45e5-40df-a858-12432a869cec",
                            "Region": "ap-northeast-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-northeast-1_Zcu1MKRL0",
                        "AppClientId": "6jktgtoo7s30uu2gdsrk2iq3kj",
                        "Region": "ap-northeast-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [],
                        "signupAttributes": [],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "PHONE_NUMBER"
                        ]
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://w34zz4dntzdiniyp2zf33t7pzy.appsync-api.ap-northeast-1.amazonaws.com/graphql",
                        "Region": "ap-northeast-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-xz6hypiqqzdw7a7aas4yfspe5e",
                        "ClientDatabasePrefix": "pdappbackendfi_API_KEY"
                    },
                    "pdappbackendfi_AWS_IAM": {
                        "ApiUrl": "https://w34zz4dntzdiniyp2zf33t7pzy.appsync-api.ap-northeast-1.amazonaws.com/graphql",
                        "Region": "ap-northeast-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "pdappbackendfi_AWS_IAM"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "pdbucket113259-dev",
                        "Region": "ap-northeast-1"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "73a1b3d11b5740768c14309115f38cd1",
                        "Region": "ap-northeast-1"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "ap-northeast-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "pdbucket113259-dev",
                "region": "ap-northeast-1",
                "defaultAccessLevel": "guest"
            }
        }
    },
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "73a1b3d11b5740768c14309115f38cd1",
                    "region": "ap-northeast-1"
                },
                "pinpointTargeting": {
                    "region": "ap-northeast-1"
                }
            }
        }
    }
}''';