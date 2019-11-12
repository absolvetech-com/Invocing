
import UIKit

class CreateItemAPIRequest: NSObject {
    
    static let shared = CreateItemAPIRequest()
    
    func CreateItem(requestParams : [String:Any], completion: @escaping (_ message : String?, _ status : Bool,_ session:Bool) -> Void) {
        //        AlamofireRequest.shared.postDataFor(urlString: "BaseURL".CreateCustomerURL, parameters: requestParams, authToken: AppUser.accessToken, imageData: nil, isLoader: true, loaderMessage: "Creating") { (data, error) in
        
        
        AlamofireRequest.shared.PostBodyForRawData(urlString: "BaseURL".CreateitemURL, parameters: requestParams, authToken: AppUser.accessToken, isLoader: true, loaderMessage: "Creating") { (data, error) in
            
            
            if error == nil{
                print(data as Any)
                
                if let status = data?["status"] as? Int{
                    
                    if status != 500{
                        
                        var messageString : String = ""
                        var status_value : Bool = false
                        var user_status : Bool = false
                        
                        if let msg = data?["message"] as? String{
                            messageString = msg
                        }
                        
                        if let status = data?["success"] as? Bool{
                            
                            status_value = status
                        }
                        
                        if let status = data?["userstatus"] as? Bool{
                            
                            user_status = status
                        }
                        
                        if user_status == true{
                            
                            if status_value == true{
                                
                                completion(messageString, true,true)
                            }
                            else{
                                
                                completion(messageString, false,true)
                                
                            }
                            
                        }
                        else{
                            
                            completion(messageString, false,false)
                            
                            
                            
                        }
                    }
                    else
                    {
                        completion( "There was an error connecting to server.", false,true)
                        
                        
                    }
                    
                    
                }
                else
                {
                    
                    completion( "There was an error connecting to server.", false,true)
                    
                    
                    
                }
                
            }else{
                completion("There was an error connecting to server.try again", false,true)
            }
        }
    }
}







