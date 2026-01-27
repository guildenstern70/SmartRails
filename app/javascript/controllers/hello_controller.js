/*
 *
 * Project SmartRails
 * Copyright (c) 2023-26 Alessio Saltarin
 * License MIT - see LICENSE
 *
 */

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
