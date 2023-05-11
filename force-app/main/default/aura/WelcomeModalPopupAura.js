import { LightningElement, track, wire } from 'lwc';

export default class WelcomeModal extends LightningElement {
    @track showModal = false;

    handleShowModal() {
        this.showModal = true;
    }

    handleCloseModal() {
        this.showModal = false;
    }

    handleClickOutside(event) {
        const modalElement = this.template.querySelector(".modal");
        if (modalElement && !modalElement.contains(event.target)) {
            this.showModal = false;
        }
    }
}