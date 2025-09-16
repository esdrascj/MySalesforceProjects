// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class WebStoreChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global User Owner;
    global Id OwnerId;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global String Type;
    /* The language to use when translated content isn't available. This value is configured during store creation. If you change the default language later, you must also change the default language in Experience Builder for any associated community.
    */
    global String DefaultLanguage;
    /* The languages to make available to buyers. Language options come from Translation Workbench.
    */
    global String SupportedLanguages;
    /* Set the maximum number of values to show per filter. Enter a value from 1 to 100.
    */
    global Integer MaxValuesPerFacet;
    /* Set the maximum number of results to show per page. Enter a value from 1 to 100.
    */
    global Integer PaginationSize;
    /* Displays a price book with a product’s original list price and the buyer’s discounted price.
    */
    global Pricebook2 StrikethroughPricebook;
    /* Displays a price book with a product’s original list price and the buyer’s discounted price.
    */
    global Id StrikethroughPricebookId;
    global Boolean OptionsGuestBrowsingEnabled;
    global Boolean OptionsCommerceEinsteinDeployed;
    global Boolean OptionsCommerceEinsteinActivitiesTracked;
    global Boolean OptionsSkipAdditionalEntitlementCheckForSearch;
    global Boolean OptionsAutoFacetingEnabled;
    global Boolean OptionsCartToOrderAutoCustomFieldMapping;
    global Boolean OptionsGuestCartEnabled;
    global Boolean OptionsGuestCheckoutEnabled;
    global Boolean OptionsCartAsyncProcessingEnabled;
    global Boolean OptionsDuplicateCartItemsEnabled;
    global Boolean OptionsSkuDetectionEnabled;
    global Boolean OptionsCartCalculateEnabled;
    global Boolean OptionsPreserveGuestCartEnabled;
    global Boolean OptionsSplitShipmentEnabled;
    /* Select the price to show to buyers: either the best price or the prices from the highest priority price book.
    */
    global String PricingStrategy;
    global Integer CheckoutTimeToLive;
    global Datetime CheckoutValidAfterDate;
    global Location Location;
    global Id LocationId;
    global String Description;
    /* Choose how product variations and parent products display in search results.
    */
    global String ProductGrouping;
    /* Set the Time To Live value in minutes for guest carts. Enter a value from 1 to 10800.
    */
    global Integer GuestCartTimeToLive;
    /* Choose Net if the product price doesn’t include tax. Choose Gross if the product price includes tax. Changing the tax type will effect any existing carts. We recommend clearing these carts to avoid any discrepancies.
    */
    global String DefaultTaxLocaleType;
    global String ExternalReference;
    /* Select a price book to use when sorting search results by price.
    */
    global Pricebook2 SortByPricebook;
    /* Select a price book to use when sorting search results by price.
    */
    global Id SortByPricebookId;
    global String OrderLifeCycleType;
    global String OrderActivationStatus;

    global WebStoreChangeEvent () 
    {
    }
}