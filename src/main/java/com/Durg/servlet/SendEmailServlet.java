package com.Durg.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SendEmailServlet")
public class SendEmailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SendEmailServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // 🔹 Form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String age = request.getParameter("age");

        // 🔹 Admin & sender details
        final String adminEmail = "rohankurne16@gmail.com";
        final String from = "rohankurne16@gmail.com";
        final String pass = "cdgupigdeethuham"; // App Password

        // 🔹 Subject
        String subject = "🟢 नवीन सदस्य नोंदणी विनंती";

        // 🔹 Approve & Reject links
        String approveLink = "http://localhost:8080/Durg/Usercontroller?"
                + "name=" + URLEncoder.encode(name, "UTF-8")
                + "&address=" + URLEncoder.encode(address, "UTF-8")
                + "&phone=" + URLEncoder.encode(phone, "UTF-8")
                + "&age=" + URLEncoder.encode(age, "UTF-8")
                + "&email=" + URLEncoder.encode(email, "UTF-8");

        String rejectLink = "http://localhost:8080/Durg/RejectServlet?email=" + URLEncoder.encode(email, "UTF-8");

        // 🔹 Email body (HTML formatted, in Marathi)
        String messageBody =
                "<div style='font-family: Noto Sans Devanagari, sans-serif; font-size: 16px;'>"
                        + "<h3 style='color:#d35400;'>दुर्ग संवर्धन व स्वच्छता संस्था</h3>"
                        + "<p>खालील व्यक्तीने नोंदणी फॉर्म भरला आहे:</p>"
                        + "<table style='border-collapse: collapse;'>"
                        + "<tr><td><b>👤 नाव:</b></td><td>" + name + "</td></tr>"
                        + "<tr><td><b>📞 मोबाईल:</b></td><td>" + phone + "</td></tr>"
                        + "<tr><td><b>🏠 पत्ता:</b></td><td>" + address + "</td></tr>"
                        + "<tr><td><b>🎂 वय:</b></td><td>" + age + "</td></tr>"
                        + "<tr><td><b>📧 ईमेल:</b></td><td>" + email + "</td></tr>"
                        + "</table><br>"
                        + "<p>कृपया खालीलपैकी योग्य पर्याय निवडा:</p>"
                        + "<div>"
                        + "<a href='" + approveLink + "' "
                        + "style='background:#27ae60;color:white;padding:10px 15px;border-radius:8px;text-decoration:none;margin-right:10px;'>✅ होय</a>"
                        + "<a href='" + rejectLink + "' "
                        + "style='background:#c0392b;color:white;padding:10px 15px;border-radius:8px;text-decoration:none;'>❌ नाही</a>"
                        + "</div>"
                        + "<br><hr>"
                        + "<small>हा मेल प्रणालीद्वारे आपोआप पाठविला आहे.</small></div>";

        // 🔹 SMTP setup
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        });

        try {
            // 🔹 Send HTML mail
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from, "दुर्ग संवर्धन संस्था", "UTF-8"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(adminEmail));
            message.setSubject(subject);
            message.setContent(messageBody, "text/html; charset=UTF-8");

            Transport.send(message);

            response.getWriter().println("<h3>✅ नोंदणी यशस्वीरित्या सबमिट झाली. प्रशासकाला ईमेल पाठविला आहे.</h3>");

        } catch (MessagingException e) {
            e.printStackTrace();
            response.getWriter().println("<h3>❌ ईमेल पाठविताना त्रुटी आली: " + e.getMessage() + "</h3>");
        }
    }
}
