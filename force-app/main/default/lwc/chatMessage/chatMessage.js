import BaseChatMessage from 'lightningsnapin/baseChatMessage';
import { api } from 'lwc';

export default class ChatMessage extends BaseChatMessage {
    @api unescapedMessage;

    connectedCallback() {
        let value = this.messageContent.value;
        
        this.unescapedMessage = value.replace( /&lt;/g, '<' ).replace( /&gt;/g, '>' );
    }
}