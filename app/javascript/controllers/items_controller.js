/*
 *
 * Project SmartRails
 * Copyright (c) 2023 Alessio Saltarin
 * License MIT
 *
 */

import { Controller } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"

export default class extends Controller {

    static targets = [ "edit", "part", "id", "description"]

    connect() {
        console.log("Stimulus Items Controller - Connected");
    }

    edit() {
        const selectedIndex = this.editTarget.dataset.index;
        console.log("Clicked Edit Button", selectedIndex);
        const title = document.getElementById("modal-title");
        title.innerText = "Edit Item " + selectedIndex;
        const idNumber = document.getElementById("id");
        idNumber.value = this.idTarget.innerText;
        const partNumber = document.getElementById("partnumber");
        partNumber.value = this.partTarget.innerText;
        const description = document.getElementById("description");
        description.value = this.descriptionTarget.innerText;
        const editModal = new bootstrap.Modal(document.getElementById('editModal'), {});
        editModal.toggle();
    }

    newitem() {
        console.log("Clicked New Button");
        const title = document.getElementById("modal-title");
        title.innerText = "Add new Item";
        document.getElementById("modal-form").action = "/items/new";
        const partNumber = document.getElementById("partnumber");
        const description = document.getElementById("description");
        partNumber.value = "";
        description.value = "";
        const editModal = new bootstrap.Modal(document.getElementById('editModal'), {});
        editModal.toggle();
    }

}
