module LatestMethod

  def latest
    find(:all, :order => 'created_at desc', :limit => 3)
  end

end
