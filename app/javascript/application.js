/*
 *
 * Project SmartRails
 * Copyright (c) 2023 Alessio Saltarin
 * License MIT
 *
 */

// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

Turbo.session.drive = false

// Enable pop-overs elsewhere
const popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
const popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
})

