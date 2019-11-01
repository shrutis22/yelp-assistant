import BaseChatMessage from "lightningsnapin/baseChatMessage";
import { api } from "lwc";

export default class YelpChatMessage extends BaseChatMessage {
    @api isQuestion;
    @api isAnswer;
    @api isError;
    @api message;

    connectedCallback() {
        this.evaluateMessageType( this.messageContent.value );
    }

    evaluateMessageType( value ) {
        if( value.startsWith( "A:" ) ) {
            this.isAnswer = true;
            this.message = value.replace( "A:", "" );
            this.processAnswer();
        }        
        else {
            this.isQuestion = true;
            this.message = value;
            this.processQuestion();
        }
    }

    processAnswer() {              
        this.message = JSON.parse( atob( this.message ) );

        if( this.message.data.search &&
            this.message.data.search.business.length > 0 ) {
            this.message.data.search.business.forEach( ( b ) => {
                b.photo = b.photos[0];
                b.header = `${ b.name } (${ b.rating } ⭐)`;
                b.description = b.location.formatted_address;
            } );
        }
        else {
            this.isAnswer = false;
            this.isError = true;
            this.message = "Oops! Couldn't find any restaurant."
        }
    }

    processQuestion() {
        this.message = this.message.replace( /&lt;/g, "<" ).replace( /&gt;/g, ">" );
    }
}