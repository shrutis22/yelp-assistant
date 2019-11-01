public class YelpAssistant {
    @InvocableMethod
    public static List<String> findRestaurants( List<YelpAPI.SearchCriteria> searchCriterias ) {
        String response = YelpAPI.search( searchCriterias[0] );
        
        if( response == NULL ) {
            return new List<String>{ NULL };
        }
        
        return new List<String> { 'A:' + EncodingUtil.base64Encode( Blob.valueOf( response ) ) };
    }
}