/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2022 Agora Lab, Inc (http://www.agora.io/)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */
import Foundation

public class LoginParam : NSObject{
    //token
    public var tokenType:String = ""
    public var accessToken:String = ""
    public var refreshToken:String = ""
    public var expireIn:UInt = 0
    public var scope:String = ""
    
    //Session
    public var grawin_token:String = ""
    public var expiration : UInt64 = 0
    public var endPoint:String = ""
    public var region:String = ""
    public var account:String = ""
    
    public var proof_sessionToken:String = ""
    public var proof_secretKey:String = ""
    public var proof_accessKeyId:String = ""
    public var proof_sessionExpiration:UInt64 = 0
    
    public var pool_token:String = ""
    public var pool_identityId:String = ""
    public var pool_identityPoolId:String = ""
    public var pool_identifier = ""
}

/*
 * @brief 账号管理接口
 */
public protocol IAccountMgr{
    /*
     * @brief 登录一个用户账号，触发 onLoginDone() 回调
     * @param account : 账号Id
     * @param password : 账号密码
     */
    //func login(account: String, result:@escaping (Int,String)->Void)
    func login(param:LoginParam,result:@escaping(Int,String)->Void)

    /*
     * @brief 登出当前账号
     */
    func logout(result:@escaping (Int,String)->Void)
    /*
     * @brief 获取当前用户id
     */
    func getUserId()->String
}




