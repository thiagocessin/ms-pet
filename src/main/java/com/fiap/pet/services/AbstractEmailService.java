package com.fiap.pet.services;

import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import com.fiap.pet.domain.Cliente;
import com.fiap.pet.domain.Pedido;

public abstract class AbstractEmailService implements EmailService {
	
	@Value("${default.sender}")
	private String sender;
	
	@Autowired
	private TemplateEngine template;
	
	@Autowired
	private JavaMailSender javaMailSender;

	//template method
	@Override
	public void sendOrderConfirmationEmail(Pedido obj) {
		SimpleMailMessage sm = prepareSimpleMailMessageFromPedido(obj);
		sendEmail(sm);
	}

	protected SimpleMailMessage prepareSimpleMailMessageFromPedido(Pedido obj) {
		SimpleMailMessage sm = new SimpleMailMessage();
		//sm.setTo(obj.getCliente().getEmail());
		sm.setTo("thiagoacessin@gmail.com");
		sm.setFrom(sender);
		sm.setSubject("Pedido Confirmado - código "+ obj.getId());
		sm.setSentDate(new Date(System.currentTimeMillis()));
		sm.setText(obj.toString());
		
		return sm;
	}
	
	//retornna o html string
	protected String htmlFromTemplatePedido(Pedido obj) {
		Context context = new Context();
		context.setVariable("pedido", obj);
		//resources/templates -> padrão do thymeleaf
		return template.process("email/confirmacaoPedido", context);
	}
	
	@Override
	public void sendOrderConfirmationHtmlEmail(Pedido obj) {
		MimeMessage mm;
		try {
			mm = prepareMimeMessageFromPedido(obj);
			sendHtmlEmail(mm);
		} catch (MessagingException e) {
			sendOrderConfirmationEmail(obj);
		}
	}

	protected MimeMessage prepareMimeMessageFromPedido(Pedido obj) throws MessagingException {
		
		MimeMessage mm = javaMailSender.createMimeMessage();
		MimeMessageHelper mmh = new MimeMessageHelper(mm,true);
		
		mmh.setTo("thiagoacessin@gmail.com");//trocar para email do cliente
		mmh.setFrom(sender);
		mmh.setSubject("Pedido Confirmado - código "+ obj.getId());
		mmh.setSentDate(new Date(System.currentTimeMillis()));
		mmh.setText(htmlFromTemplatePedido(obj),true);
		
		return mm;
	}
	
	@Override
	public void sendNewPasswordEmail(Cliente cliente, String newPass) {
		SimpleMailMessage sm = prepareNewPAsswordEmail(cliente, newPass);
		sendEmail(sm);
		
	}

	protected SimpleMailMessage prepareNewPAsswordEmail(Cliente cliente, String newPass) {
		
		SimpleMailMessage sm = new SimpleMailMessage();
		sm.setTo(cliente.getEmail());
		//sm.setTo("thiagoacessin@gmail.com");
		sm.setFrom(sender);
		sm.setSubject("Nova senha ");
		sm.setSentDate(new Date(System.currentTimeMillis()));
		sm.setText("Nova senha:"+newPass);
		
		return sm;
	}

}
