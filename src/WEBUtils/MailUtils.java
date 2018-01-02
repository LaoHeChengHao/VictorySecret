package WEBUtils;



import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailUtils {


    //发送邮件  Mail接收收件人邮箱  url接受激活地址
    public static void sendMail(String Mail,String url)throws MessagingException {
        // 创建Properties 类用于记录邮箱的一些属性
        Properties props = new Properties();
        // 表示SMTP发送邮件，必须进行身份验证
        props.put("mail.smtp.auth", "true");
        //此处填写SMTP服务器
        props.put("mail.smtp.host", "smtp.qq.com");
        //端口号，QQ邮箱端口号
        props.put("mail.smtp.port", "587");
        // 此处填写你的账号
        props.put("mail.user", "279304739@qq.com");
        // 此处的密码就是前面说的16位STMP口令
        //这里必须要到你所用的邮箱内去获取口令，不能直接用密码填入
        props.put("mail.password", "uuhtlxmkwscabifi");

        // 构建授权信息，用于进行SMTP进行身份验证
        Authenticator authenticator = new Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);
        // 设置发件人
        InternetAddress form = new InternetAddress(props.getProperty("mail.user"));
        message.setFrom(form);
        // 设置收件人的邮箱
        InternetAddress to = new InternetAddress(Mail);
        message.setRecipient(Message.RecipientType.TO, to);
        // 设置邮件标题
        message.setSubject("请点击以下链接激活您的邮箱");
        // 设置邮件的内容体
        message.setContent("<html lang='zh-CN'><head ><meta charset='utf-8'>"
                        + "</head><body>您好，欢迎订阅Victoria，请点击以下链接确认激活您的邮箱！<br><br>"
                        + "<a href="+url+">点击激活Victoria会员账号</a></body></html>",
                "text/html;charset=utf-8");
        // 发送邮件
        Transport.send(message);
    }

}
