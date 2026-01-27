/*
 *
 * Project SmartRails
 * Copyright (c) 2023-26 Alessio Saltarin
 * License MIT - see LICENSE
 *
 */

// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
