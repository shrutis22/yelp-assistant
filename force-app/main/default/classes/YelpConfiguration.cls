public class YelpConfiguration {
    public static String getValue( String key ) {
        Yelp_Configuration__mdt yelpConfig = [
            SELECT  DeveloperName
                    ,Value__c
            FROM    Yelp_Configuration__mdt
            WHERE   MasterLabel = :key
        ];
        
        return yelpConfig.Value__c;
    }
}