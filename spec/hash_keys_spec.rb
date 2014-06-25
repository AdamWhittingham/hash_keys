require 'hash_keys'

describe Hash do
  subject { {foo: 1, bar: 2, baz: 3} }

  describe '#select_keys' do
    it 'selects only the named keys' do
      expect(subject.select_keys(:foo, :baz)).to eq({foo: 1, baz: 3})
    end
  end

  describe '#reject_keys' do
    it 'returns any keys not named' do
      expect(subject.reject_keys(:foo)).to eq({bar: 2, baz: 3})
    end
  end
end
