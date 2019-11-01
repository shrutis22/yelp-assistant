public class YelpAPI {
    public class SearchCriteria {
        @InvocableVariable public String term;        
        @InvocableVariable public String location;        
        @InvocableVariable public String price;
        
        public SearchCriteria() {}
        
        public SearchCriteria( String term, String location, String price ) {
            this.term       = term;
            this.location   = location;
            this.price      = price;
        }
    }
    
    public static String search( SearchCriteria sc ) {
        HttpRequest httpReq = new HttpRequest();
        
        httpReq.setEndpoint( YelpConfiguration.getValue( 'Endpoint' ) );
        httpReq.setMethod( 'POST' );
        httpReq.setHeader( 'Content-Type',  'application/graphql' );
        httpReq.setHeader( 'Authorization', 'Bearer ' + YelpConfiguration.getValue( 'API Key' ) );
        httpReq.setBody( YelpConfiguration.getValue( 'Body' )
                                                .replace( '##TERM##',       sc.term )
                                                .replace( '##LOCATION##',   sc.location )
                                                .replace( '##PRICE##',      String.valueOf( sc.price.length() ) )
        );
        httpReq.setTimeout( 120000 );
        
        try {
            return new Http().send( httpReq ).getBody();
        }
        catch( Exception ex ) {
            return NULL;
        }
    }
}