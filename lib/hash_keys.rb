class Hash
  # Return a hash containing only the named keys
  def select_keys *keys
    select{|k, _| keys.include? k}
  end

  alias_method :retain_keys, :select_keys

  # Return a hash containing everything except the named keys
  def reject_keys *keys
    reject{|k, _| keys.include? k}
  end

  alias_method :eject_keys, :reject_keys
end
