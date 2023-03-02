# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
end
