Rails.autoloaders.main.ignore("#{Rails.root}/app/serializers")

require "contact_serializer"
Rails.application.config.active_job.custom_serializers << ContactSerializer
