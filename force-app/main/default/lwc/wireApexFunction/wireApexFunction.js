import { LightningElement, api, wire } from "lwc";
import { reduceErrors } from "c/ldsUtils";
import getRelatedContacts from "@salesforce/apex/AccountController.getRelatedContacts";

export default class WireApexFunction extends LightningElement {
  @api recordId;
  errors;
  @wire(getRelatedContacts, { accountId: "$recordId" })
  wiredContacts({ data, error }) {
    if (error) this.errors = reduceErrors(error);
  }
}
