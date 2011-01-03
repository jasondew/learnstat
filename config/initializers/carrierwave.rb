if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    config.storage = :s3
    config.s3_access_key_id = ENV["S3_ACCESS_KEY_ID"]
    config.s3_secret_access_key = ENV["S3_SECRET_ACCESS_KEY"]
    config.s3_bucket = ENV["S3_BUCKET"]
    config.cache_dir = File.join(Rails.root, "tmp/uploads")
  end
end
