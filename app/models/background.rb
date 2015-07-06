class Background < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
                    # storage: :s3,
                    # s3_credentials: Proc.new{ |a| a.instance.s3_credentials }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :bernie

  # def s3_credentials
  #   { bucket: ENV["AWSBucket"],
  #     access_key_id: ENV["AWSAccessKeyId"],
  #     secret_access_key: ENV["AWSSecretKey"] }
  # end

end
