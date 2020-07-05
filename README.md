# Lightning Web Components and Salesforce Data

## Use Lightning Data Service to Work with Data

**Deploy a component for creating contacts.**

Use lightning-record-form to create a Lightning web component that allows you to create Contact records.

**Tip**: Remember that JavaScript is a case-sensitive programming language. Be careful to use uppercase and lowercase letters correctly.

- Create a Lightning web component:
  - Name: `contactCreator`
  - Base component: `lightning-record-form`
  - Fields to include: `FirstName`, `LastName`, `Email`
- Implement an event handler:
  - Name: `handleSuccess`
  - Event: `onsuccess`
  - Action: Show the `Id` of the created contact in a toast message
- Add the component to the Working with Data page
- Use the contactCreator component to create a contact:
  - First name: `Lisa`
  - Last name: `Jones`
  - Email: `ljones@developer.com`

## Use Apex to Work with Data

**Deploy a component that lists contacts.**

Create a Lightning web component that uses @wire in an Apex controller to retrieve contact records and display them in a lightning-datatable.

**Tip**: Remember that JavaScript is a case-sensitive programming language. Be careful to use uppercase and lowercase letters correctly.

- Create an Apex controller that retrieves a list of contacts:
  - Class: `ContactController`
  - Method: `getContacts()`
  - Fields to query: `FirstName`, `LastName`, `Email`
- Create a Lightning web component that displays contacts in a table:
  - Component name: `contactList`
  - Base component: `lightning-datatable`
  - Fields to include: `FirstName`, `LastName`, `Email`
- Wire the `getContacts()` method
- Add the component to the Working with Data page

## Handle Server Errors

**Handle errors in a component.**

In the `contactList` component, use the `reduceErrors` function to handle errors and display error messages in the component markup.

**Tip**: Remember that JavaScript is a case-sensitive programming language. Be careful to use uppercase and lowercase letters correctly.

- Show errors in the `contactList` markup
- Add the `ldsUtils` component from LWC recipes to your project
- Define a getter for a property named `errors` and use the `reduceErrors` function in the getter
- Force the Apex class to throw an `AuraHandledException` to see an error on the `contactList` component
- Deploy the changes to your Trailhead Playground