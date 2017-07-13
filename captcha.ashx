<%@ WebHandler Language="C#" Class="captcha" %>

using System;
using System.Web;
using CapLib;

public class captcha : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context)
    {
        CapLibCore c = new CapLibCore(context);
        
            // Session Adı : "ASPCAPTCHA"
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}