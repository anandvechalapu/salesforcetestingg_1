// Unit Test #1
import { createElement } from 'lwc';
import WelcomeModal from 'c/welcomeModal';

describe('c-welcome-modal', () => {
    it('should set showModal to true when handleShowModal is called', () => {
        // Create initial element
        const element = createElement('c-welcome-modal', {
            is: WelcomeModal
        });
        document.body.appendChild(element);

        // Select button for simulating user interaction
        const buttonEl = element.shadowRoot.querySelector('button');
        buttonEl.click();

        // Return a promise to wait for any asynchronous DOM updates. Jest
        // will automatically wait for the Promise chain to complete before
        // ending the test and fail the test if the promise rejects.
        return Promise.resolve().then(() => {
            // Validate showModal property value
            const modalEl = element.shadowRoot.querySelector('.modal');
            expect(modalEl).not.toBeNull();
            expect(modalEl.classList.contains('slds-hide')).toBe(false);
        });
    });
});

// Unit Test #2
import { createElement } from 'lwc';
import WelcomeModal from 'c/welcomeModal';

describe('c-welcome-modal', () => {
    it('should set showModal to false when handleCloseModal is called', () => {
        // Create initial element
        const element = createElement('c-welcome-modal', {
            is: WelcomeModal
        });
        document.body.appendChild(element);

        // Select button for simulating user interaction
        const buttonEl = element.shadowRoot.querySelector('button');
        buttonEl.click();

        // Return a promise to wait for any asynchronous DOM updates. Jest
        // will automatically wait for the Promise chain to complete before
        // ending the test and fail the test if the promise rejects.
        return Promise.resolve().then(() => {
            // Validate showModal property value
            element.handleCloseModal();
            const modalEl = element.shadowRoot.querySelector('.modal');
            expect(modalEl).not.toBeNull();
            expect(modalEl.classList.contains('slds-hide')).toBe(true);
        });
    });
});

// Unit Test #3
import { createElement } from 'lwc';
import WelcomeModal from 'c/welcomeModal';

describe('c-welcome-modal', () => {
    it('should set showModal to false when handleClickOutside is called', () => {
        // Create initial element
        const element = createElement('c-welcome-modal', {
            is: WelcomeModal
        });
        document.body.appendChild(element);

        // Select button for simulating user interaction
        const buttonEl = element.shadowRoot.querySelector('button');
        buttonEl.click();

        // Return a promise to wait for any asynchronous DOM updates. Jest
        // will automatically wait for the Promise chain to complete before
        // ending the test and fail the test if the promise rejects.
        return Promise.resolve().then(() => {
            const event = new Event('click');
            // Validate showModal property value
            element.handleClickOutside(event);
            const modalEl = element.shadowRoot.querySelector('.modal');
            expect(modalEl).not.toBeNull();
            expect(modalEl.classList.contains('slds-hide')).toBe(true);
        });
    });
});