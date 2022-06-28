# Swift5 API client for ForestVPNCloudSDKAPI

ForestVPN Cloud - it's a Google Cloud but for VPN apps. Ready to use VPN Cloud Platform minimizes efforts to build fast,
secure, and modern VPN apps.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 0.1.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://forestvpn.com/](https://forestvpn.com/)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.forestvpn.com/cloud/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthAPI* | [**getAccessToken**](docs/AuthAPI.md#getaccesstoken) | **POST** /auth/token/ | Get an access token
*ProfilesAPI* | [**getProfile**](docs/ProfilesAPI.md#getprofile) | **GET** /profiles/{profileId}/ | Profile details
*ProfilesAPI* | [**getProfileProtocolConfig**](docs/ProfilesAPI.md#getprofileprotocolconfig) | **GET** /profiles/{profileId}/protocols/{protocolId}.conf | Profile protocol config
*ProfilesAPI* | [**getProfileProtocols**](docs/ProfilesAPI.md#getprofileprotocols) | **GET** /profiles/{profileId}/protocols/ | Profile supported protocols


## Documentation For Models

 - [AccessToken](docs/AccessToken.md)
 - [AccessTokenRequest](docs/AccessTokenRequest.md)
 - [ModelError](docs/ModelError.md)
 - [ModelProtocol](docs/ModelProtocol.md)
 - [Profile](docs/Profile.md)


## Documentation For Authorization


## BearerTokenAuth

- **Type**: HTTP basic authentication


## Author

support@forestvpn.com

## Credits

- ForestVPN.com [Free VPN](https://forestvpn.com) for all
- SpaceV.net [VPN for teams](https://spacev.net)
