package com.franky.movie.config.home;


/* *
 *???AlipayConfig
 *????????
 *????????????????
 *?????2017-04-05
 *???
 *?????????????????????????????????????????????,???????????
 *???????????????????????????
 */

public class AlipayConfig {
	
//?????????????????????????????????????

	// ??ID,??APPID?????????APPID???????
	public static String app_id = "";
	
	// ???????PKCS8??RSA2??
    public static String merchant_private_key = "";

	// ?????,?????https://openhome.alipay.com/platform/keyManage.htm ??APPID????????
    public static String alipay_public_key = "";

	// ???????????  ?http://????????????id=123??????????????????
	public static String notify_url = "";

	// ???????????? ?http://????????????id=123??????????????????
	public static String return_url = "";

	// ????
	public static String sign_type = "RSA2";
	
	// ??????
	public static String charset = "utf-8";
	
	// ?????
	public static String gatewayUrl = "";//https://openapi.alipay.com/gateway.do
    
}