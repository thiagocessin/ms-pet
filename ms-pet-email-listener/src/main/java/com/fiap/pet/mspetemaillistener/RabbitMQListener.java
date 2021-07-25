package com.fiap.pet.mspetemaillistener;

import com.fiap.pet.mspetemaillistener.dto.EmailEnum;
import com.fiap.pet.mspetemaillistener.dto.RabbitListenerEmailDto;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class RabbitMQListener {

    @Autowired
    private SendgridSender sgs;


    @RabbitListener(queues="${rabbit.queuename}", containerFactory="jsaFactory")
    public void receivedMessage(RabbitListenerEmailDto message) throws IOException {
        if(message.getTipoEmail().equals(EmailEnum.EMAIL_PEDIDO)) {
            sgs.setEmailFrom("pet@teste.com");
            sgs.setEmailTo("gabriel.chimenezleme@gmail.com");
            sgs.setSubject("Email de teste!!");
            try {
                sgs.sendEmail();
            } catch (Exception e) {
                throw e;
            }
        }
        else if(message.getTipoEmail().equals(EmailEnum.EMAIL_CADASTRO)) {
            //envia email cadastro
        }

    }
}
