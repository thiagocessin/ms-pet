package com.fiap.pet.mspetemaillistener;

import com.fiap.pet.mspetemaillistener.dto.EmailEnum;
import com.fiap.pet.mspetemaillistener.dto.RabbitListenerEmailDto;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;

@Service
public class RabbitMQListener {

    @RabbitListener(queues="${rabbit.queuename}", containerFactory="jsaFactory")
    public void receivedMessage(RabbitListenerEmailDto message) {
        if(message.getTipoEmail().equals(EmailEnum.EMAIL_PEDIDO)) {
            //envia email pedido
        }
        else if(message.getTipoEmail().equals(EmailEnum.EMAIL_CADASTRO)) {
            //envia email cadastro
        }

    }
}
