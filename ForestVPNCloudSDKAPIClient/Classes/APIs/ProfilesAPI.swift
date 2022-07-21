//
// ProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProfilesAPI {

    /**
     Attach device info
     
     - parameter profileId: (path)  
     - parameter deviceInfo: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func attachDeviceInfo(profileId: UUID, deviceInfo: DeviceInfo? = nil, apiResponseQueue: DispatchQueue = ForestVPNCloudSDKAPIAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return attachDeviceInfoWithRequestBuilder(profileId: profileId, deviceInfo: deviceInfo).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Attach device info
     - POST /profiles/{profileId}/device/info/
     - BASIC:
       - type: http
       - name: BearerTokenAuth
     - parameter profileId: (path)  
     - parameter deviceInfo: (body)  (optional)
     - returns: RequestBuilder<String> 
     */
    open class func attachDeviceInfoWithRequestBuilder(profileId: UUID, deviceInfo: DeviceInfo? = nil) -> RequestBuilder<String> {
        var localVariablePath = "/profiles/{profileId}/device/info/"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ForestVPNCloudSDKAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deviceInfo)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = ForestVPNCloudSDKAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Profile details
     
     - parameter profileId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProfile(profileId: UUID, apiResponseQueue: DispatchQueue = ForestVPNCloudSDKAPIAPI.apiResponseQueue, completion: @escaping ((_ data: Profile?, _ error: Error?) -> Void)) -> RequestTask {
        return getProfileWithRequestBuilder(profileId: profileId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Profile details
     - GET /profiles/{profileId}/
     - BASIC:
       - type: http
       - name: BearerTokenAuth
     - parameter profileId: (path)  
     - returns: RequestBuilder<Profile> 
     */
    open class func getProfileWithRequestBuilder(profileId: UUID) -> RequestBuilder<Profile> {
        var localVariablePath = "/profiles/{profileId}/"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ForestVPNCloudSDKAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Profile>.Type = ForestVPNCloudSDKAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Profile protocol config
     
     - parameter profileId: (path)  
     - parameter protocolSlug: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProfileProtocolConfig(profileId: UUID, protocolSlug: UUID, apiResponseQueue: DispatchQueue = ForestVPNCloudSDKAPIAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return getProfileProtocolConfigWithRequestBuilder(profileId: profileId, protocolSlug: protocolSlug).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Profile protocol config
     - GET /profiles/{profileId}/protocols/{protocolSlug}.conf
     - BASIC:
       - type: http
       - name: BearerTokenAuth
     - parameter profileId: (path)  
     - parameter protocolSlug: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func getProfileProtocolConfigWithRequestBuilder(profileId: UUID, protocolSlug: UUID) -> RequestBuilder<String> {
        var localVariablePath = "/profiles/{profileId}/protocols/{protocolSlug}.conf"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let protocolSlugPreEscape = "\(APIHelper.mapValueToPathItem(protocolSlug))"
        let protocolSlugPostEscape = protocolSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{protocolSlug}", with: protocolSlugPostEscape, options: .literal, range: nil)
        let localVariableURLString = ForestVPNCloudSDKAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = ForestVPNCloudSDKAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Profile supported protocols
     
     - parameter profileId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getProfileProtocols(profileId: UUID, apiResponseQueue: DispatchQueue = ForestVPNCloudSDKAPIAPI.apiResponseQueue, completion: @escaping ((_ data: [ModelProtocol]?, _ error: Error?) -> Void)) -> RequestTask {
        return getProfileProtocolsWithRequestBuilder(profileId: profileId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Profile supported protocols
     - GET /profiles/{profileId}/protocols/
     - BASIC:
       - type: http
       - name: BearerTokenAuth
     - parameter profileId: (path)  
     - returns: RequestBuilder<[ModelProtocol]> 
     */
    open class func getProfileProtocolsWithRequestBuilder(profileId: UUID) -> RequestBuilder<[ModelProtocol]> {
        var localVariablePath = "/profiles/{profileId}/protocols/"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ForestVPNCloudSDKAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ModelProtocol]>.Type = ForestVPNCloudSDKAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Upload profile protocol diagnostic logs
     
     - parameter profileId: (path)  
     - parameter protocolSlug: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uploadProfileProtocolLogs(profileId: UUID, protocolSlug: UUID, apiResponseQueue: DispatchQueue = ForestVPNCloudSDKAPIAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadProfileProtocolLogsWithRequestBuilder(profileId: profileId, protocolSlug: protocolSlug).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload profile protocol diagnostic logs
     - POST /profiles/{profileId}/protocols/{protocolSlug}/logs/
     - BASIC:
       - type: http
       - name: BearerTokenAuth
     - parameter profileId: (path)  
     - parameter protocolSlug: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func uploadProfileProtocolLogsWithRequestBuilder(profileId: UUID, protocolSlug: UUID) -> RequestBuilder<String> {
        var localVariablePath = "/profiles/{profileId}/protocols/{protocolSlug}/logs/"
        let profileIdPreEscape = "\(APIHelper.mapValueToPathItem(profileId))"
        let profileIdPostEscape = profileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{profileId}", with: profileIdPostEscape, options: .literal, range: nil)
        let protocolSlugPreEscape = "\(APIHelper.mapValueToPathItem(protocolSlug))"
        let protocolSlugPostEscape = protocolSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{protocolSlug}", with: protocolSlugPostEscape, options: .literal, range: nil)
        let localVariableURLString = ForestVPNCloudSDKAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = ForestVPNCloudSDKAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
