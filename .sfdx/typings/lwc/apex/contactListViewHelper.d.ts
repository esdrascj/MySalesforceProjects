declare module "@salesforce/apex/contactListViewHelper.getContacts" {
  export default function getContacts(): Promise<any>;
}
declare module "@salesforce/apex/contactListViewHelper.searchContact" {
  export default function searchContact(param: {searchString: any}): Promise<any>;
}
declare module "@salesforce/apex/contactListViewHelper.deleteContacts" {
  export default function deleteContacts(param: {contactIds: any}): Promise<any>;
}
