class Hash
  def select_keys *keys
    select{|k, _| keys.include? k}
  end

  alias_method :retain_keys, :select_keys

  def reject_keys *keys
    reject{|k, _| keys.include? k}
  end

  alias_method :eject_keys, :reject_keys
end
