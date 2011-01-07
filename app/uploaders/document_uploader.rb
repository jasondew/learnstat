class DocumentUploader < CarrierWave::Uploader::Base

  def store_dir
    "learnstat/uploads/documents/#{model.id}"
  end

end
