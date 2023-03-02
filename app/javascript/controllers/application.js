/*
 *
 * Project SmartRails
 * Copyright (c) 2023 Alessio Saltarin
 * License MIT
 *
 */

import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
