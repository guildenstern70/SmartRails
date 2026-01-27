/*
 *
 * Project SmartRails
 * Copyright (c) 2023-26 Alessio Saltarin
 * License MIT - see LICENSE
 *
 */

import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
