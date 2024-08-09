/// <reference types="cypress" />
import { Then, When } from '@badeball/cypress-cucumber-preprocessor';

let stub;

When('I type a username {}', (username) => {
  cy.get('#text').type(username);
});

When('I type a password {}', (password) => {
  cy.get('#password').type(password);
});

When('I click on the Login button', () => {
  stub = cy.stub();
  cy.on('window:alert', stub);
  cy.get('#login-button').click();
});

Then('the message {string} should be displayed', (alert) => {
  expect(stub).to.have.been.calledWith(alert);
});
