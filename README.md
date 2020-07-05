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

## Handle Server Errors