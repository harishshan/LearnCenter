package com.exam.util;

import java.math.BigInteger;

public class RSA 
{
	private static BigInteger e=new BigInteger("7148610506053190692370777719724244893110136419274702171422591758913056232291574679753061780261818461637680546024139619014279013429595934755437330884415949");
	private static BigInteger d=new BigInteger("605421251065182316112267845732114316470435473611674919138852275046271264217815424279545782801875291118534556223972127548318228849887443321291456561298076495016456619925901018067482131646099789040528553216931016513967053368356698603649277800464518721358413173173357501551015183044117373569384281488529042505808792860637254367293870339819063141580105634484840799227967832785168090772428995393458964003196456367053924630533129449243403653089835823512133057967871085102038187007483432134269162105818214745533899756391461796172611017279882177329526397473102614510349430834769541067749677277208246487345703264173808915749");
	private static BigInteger N=new BigInteger("12214689910196154402328020713948319182842081993440118734675683988152821804006419960902132627403209943995367465809154110319161493529380944234641284326328118165236713872163657768508470092596337917446797327622514942833307427030509091824424315690971894791639987468137067099552026791368332855101697359697251109162935160974322006895698533013540985381582308718314505423207462718104074383134722073768664049301749988236640331345986692616671077054872320738815250058490846118082408207254546667336908033530123056560615346318194015257875682107473333140112562417085964231249886405263898821310255239483599870003699405555656267021303");
	public static String encrypt(String message)
	{
		
		/*byte messageByte[]=message.getBytes();
		byte encryptedMessageByte[]=(new BigInteger(messageByte)).modPow(e, N).toByteArray();
		String encryptedMessage="";
		for (byte b : encryptedMessageByte) 
		{ 
			encryptedMessage += Byte.toString(b); 
        } 
		return encryptedMessage;*/
		return message;
	}
	public static String decrypt(String message)
	{
		/*byte messageByte[]=message.getBytes();		 
		byte decryptedMessageByte[]=(new BigInteger(messageByte)).modPow(d, N).toByteArray();
		String decryptedMessage="";
		for (byte b : decryptedMessageByte) 
		{ 
			decryptedMessage += Byte.toString(b); 
        } 
		return decryptedMessage;*/
		return message;
	}
}